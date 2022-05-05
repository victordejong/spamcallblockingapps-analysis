package androidx.activity;

import android.annotation.SuppressLint;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import java.util.ArrayDeque;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher.class */
public final class OnBackPressedDispatcher {
    @Nullable

    /* renamed from: a */
    private final Runnable f12a;

    /* renamed from: b */
    final ArrayDeque<OnBackPressedCallback> f13b;

    /* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable.class */
    private class LifecycleOnBackPressedCancellable implements LifecycleEventObserver, Cancellable {

        /* renamed from: f */
        private final Lifecycle f14f;

        /* renamed from: g */
        private final OnBackPressedCallback f15g;
        @Nullable

        /* renamed from: h */
        private Cancellable f16h;

        LifecycleOnBackPressedCancellable(@NonNull Lifecycle lifecycle, @NonNull OnBackPressedCallback onBackPressedCallback) {
            this.f14f = lifecycle;
            this.f15g = onBackPressedCallback;
            lifecycle.mo18231a(this);
        }

        @Override // androidx.lifecycle.LifecycleEventObserver
        /* renamed from: c */
        public void mo16457c(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
            if (event == Lifecycle.Event.ON_START) {
                this.f16h = OnBackPressedDispatcher.this.m22325b(this.f15g);
            } else if (event == Lifecycle.Event.ON_STOP) {
                Cancellable cancellable = this.f16h;
                if (cancellable != null) {
                    cancellable.cancel();
                }
            } else if (event == Lifecycle.Event.ON_DESTROY) {
                cancel();
            }
        }

        @Override // androidx.activity.Cancellable
        public void cancel() {
            this.f14f.mo18229c(this);
            this.f15g.m22328e(this);
            Cancellable cancellable = this.f16h;
            if (cancellable != null) {
                cancellable.cancel();
                this.f16h = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher$OnBackPressedCancellable.class */
    public class OnBackPressedCancellable implements Cancellable {

        /* renamed from: f */
        private final OnBackPressedCallback f18f;

        OnBackPressedCancellable(OnBackPressedCallback onBackPressedCallback) {
            this.f18f = onBackPressedCallback;
        }

        @Override // androidx.activity.Cancellable
        public void cancel() {
            OnBackPressedDispatcher.this.f13b.remove(this.f18f);
            this.f18f.m22328e(this);
        }
    }

    public OnBackPressedDispatcher() {
        this(null);
    }

    public OnBackPressedDispatcher(@Nullable Runnable runnable) {
        this.f13b = new ArrayDeque<>();
        this.f12a = runnable;
    }

    @SuppressLint({"LambdaLast"})
    @MainThread
    /* renamed from: a */
    public void m22326a(@NonNull LifecycleOwner lifecycleOwner, @NonNull OnBackPressedCallback onBackPressedCallback) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        if (lifecycle.mo18230b() != Lifecycle.State.DESTROYED) {
            onBackPressedCallback.m22331a(new LifecycleOnBackPressedCancellable(lifecycle, onBackPressedCallback));
        }
    }

    @NonNull
    @MainThread
    /* renamed from: b */
    Cancellable m22325b(@NonNull OnBackPressedCallback onBackPressedCallback) {
        this.f13b.add(onBackPressedCallback);
        OnBackPressedCancellable onBackPressedCancellable = new OnBackPressedCancellable(onBackPressedCallback);
        onBackPressedCallback.m22331a(onBackPressedCancellable);
        return onBackPressedCancellable;
    }

    @MainThread
    /* renamed from: c */
    public void m22324c() {
        Iterator<OnBackPressedCallback> descendingIterator = this.f13b.descendingIterator();
        while (descendingIterator.hasNext()) {
            OnBackPressedCallback next = descendingIterator.next();
            if (next.m22330c()) {
                next.mo18435b();
                return;
            }
        }
        Runnable runnable = this.f12a;
        if (runnable != null) {
            runnable.run();
        }
    }
}

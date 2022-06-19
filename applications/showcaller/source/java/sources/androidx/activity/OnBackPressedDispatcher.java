package androidx.activity;

import android.annotation.SuppressLint;
import androidx.lifecycle.AbstractC0795f;
import androidx.lifecycle.AbstractC0797h;
import androidx.lifecycle.Lifecycle;
import java.util.ArrayDeque;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher.class */
public final class OnBackPressedDispatcher {

    /* renamed from: a */
    private final Runnable f165a;

    /* renamed from: b */
    final ArrayDeque<AbstractC0087b> f166b = new ArrayDeque<>();

    /* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable.class */
    public class LifecycleOnBackPressedCancellable implements AbstractC0795f, AbstractC0086a {

        /* renamed from: d */
        private final Lifecycle f167d;

        /* renamed from: e */
        private final AbstractC0087b f168e;

        /* renamed from: f */
        private AbstractC0086a f169f;

        LifecycleOnBackPressedCancellable(Lifecycle lifecycle, AbstractC0087b abstractC0087b) {
            OnBackPressedDispatcher.this = r4;
            this.f167d = lifecycle;
            this.f168e = abstractC0087b;
            lifecycle.mo32398a(this);
        }

        @Override // androidx.lifecycle.AbstractC0795f
        /* renamed from: c */
        public void mo30701c(AbstractC0797h abstractC0797h, Lifecycle.Event event) {
            if (event == Lifecycle.Event.ON_START) {
                this.f169f = OnBackPressedDispatcher.this.m35758b(this.f168e);
            } else if (event != Lifecycle.Event.ON_STOP) {
                if (event != Lifecycle.Event.ON_DESTROY) {
                    return;
                }
                cancel();
            } else {
                AbstractC0086a abstractC0086a = this.f169f;
                if (abstractC0086a == null) {
                    return;
                }
                abstractC0086a.cancel();
            }
        }

        @Override // androidx.activity.AbstractC0086a
        public void cancel() {
            this.f167d.mo32396c(this);
            this.f168e.m35753e(this);
            AbstractC0086a abstractC0086a = this.f169f;
            if (abstractC0086a != null) {
                abstractC0086a.cancel();
                this.f169f = null;
            }
        }
    }

    /* renamed from: androidx.activity.OnBackPressedDispatcher$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedDispatcher$a.class */
    public class C0085a implements AbstractC0086a {

        /* renamed from: d */
        private final AbstractC0087b f171d;

        C0085a(AbstractC0087b abstractC0087b) {
            OnBackPressedDispatcher.this = r4;
            this.f171d = abstractC0087b;
        }

        @Override // androidx.activity.AbstractC0086a
        public void cancel() {
            OnBackPressedDispatcher.this.f166b.remove(this.f171d);
            this.f171d.m35753e(this);
        }
    }

    public OnBackPressedDispatcher(Runnable runnable) {
        this.f165a = runnable;
    }

    @SuppressLint({"LambdaLast"})
    /* renamed from: a */
    public void m35759a(AbstractC0797h abstractC0797h, AbstractC0087b abstractC0087b) {
        Lifecycle mo32372a = abstractC0797h.mo32372a();
        if (mo32372a.mo32397b() == Lifecycle.State.DESTROYED) {
            return;
        }
        abstractC0087b.m35756a(new LifecycleOnBackPressedCancellable(mo32372a, abstractC0087b));
    }

    /* renamed from: b */
    AbstractC0086a m35758b(AbstractC0087b abstractC0087b) {
        this.f166b.add(abstractC0087b);
        C0085a c0085a = new C0085a(abstractC0087b);
        abstractC0087b.m35756a(c0085a);
        return c0085a;
    }

    /* renamed from: c */
    public void m35757c() {
        Iterator<AbstractC0087b> descendingIterator = this.f166b.descendingIterator();
        while (descendingIterator.hasNext()) {
            AbstractC0087b next = descendingIterator.next();
            if (next.m35755c()) {
                next.mo32735b();
                return;
            }
        }
        Runnable runnable = this.f165a;
        if (runnable != null) {
            runnable.run();
        }
    }
}

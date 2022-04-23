package androidx.lifecycle;

import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/ServiceLifecycleDispatcher.class */
public class ServiceLifecycleDispatcher {

    /* renamed from: a */
    private final LifecycleRegistry f4093a;

    /* renamed from: b */
    private final Handler f4094b = new Handler();

    /* renamed from: c */
    private DispatchRunnable f4095c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable.class */
    public static class DispatchRunnable implements Runnable {

        /* renamed from: f */
        private final LifecycleRegistry f4096f;

        /* renamed from: g */
        final Lifecycle.Event f4097g;

        /* renamed from: h */
        private boolean f4098h = false;

        DispatchRunnable(@NonNull LifecycleRegistry lifecycleRegistry, Lifecycle.Event event) {
            this.f4096f = lifecycleRegistry;
            this.f4097g = event;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f4098h) {
                this.f4096f.m18223i(this.f4097g);
                this.f4098h = true;
            }
        }
    }

    public ServiceLifecycleDispatcher(@NonNull LifecycleOwner lifecycleOwner) {
        this.f4093a = new LifecycleRegistry(lifecycleOwner);
    }

    /* renamed from: f */
    private void m18150f(Lifecycle.Event event) {
        DispatchRunnable dispatchRunnable = this.f4095c;
        if (dispatchRunnable != null) {
            dispatchRunnable.run();
        }
        DispatchRunnable dispatchRunnable2 = new DispatchRunnable(this.f4093a, event);
        this.f4095c = dispatchRunnable2;
        this.f4094b.postAtFrontOfQueue(dispatchRunnable2);
    }

    @NonNull
    /* renamed from: a */
    public Lifecycle m18155a() {
        return this.f4093a;
    }

    /* renamed from: b */
    public void m18154b() {
        m18150f(Lifecycle.Event.ON_START);
    }

    /* renamed from: c */
    public void m18153c() {
        m18150f(Lifecycle.Event.ON_CREATE);
    }

    /* renamed from: d */
    public void m18152d() {
        m18150f(Lifecycle.Event.ON_STOP);
        m18150f(Lifecycle.Event.ON_DESTROY);
    }

    /* renamed from: e */
    public void m18151e() {
        m18150f(Lifecycle.Event.ON_START);
    }
}

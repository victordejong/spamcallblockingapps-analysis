package androidx.core.p037os;

import android.os.Build;
import android.os.CancellationSignal;
/* renamed from: androidx.core.os.a */
/* loaded from: classes-dex2jar.jar:androidx/core/os/a.class */
public final class C0856a {

    /* renamed from: a */
    private boolean f3618a;

    /* renamed from: b */
    private AbstractC0857a f3619b;

    /* renamed from: c */
    private Object f3620c;

    /* renamed from: d */
    private boolean f3621d;

    /* renamed from: androidx.core.os.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/os/a$a.class */
    public interface AbstractC0857a {
        /* renamed from: a */
        void mo39700a();
    }

    /* renamed from: a */
    public final void m44302a(AbstractC0857a abstractC0857a) {
        synchronized (this) {
            while (this.f3621d) {
                try {
                    wait();
                } catch (InterruptedException e) {
                }
            }
            if (this.f3619b == abstractC0857a) {
                return;
            }
            this.f3619b = abstractC0857a;
            if (!this.f3618a) {
                return;
            }
            abstractC0857a.mo39700a();
        }
    }

    /* renamed from: a */
    public final boolean m44303a() {
        boolean z;
        synchronized (this) {
            z = this.f3618a;
        }
        return z;
    }

    /* renamed from: b */
    public final void m44301b() {
        synchronized (this) {
            if (this.f3618a) {
                return;
            }
            this.f3618a = true;
            this.f3621d = true;
            AbstractC0857a abstractC0857a = this.f3619b;
            Object obj = this.f3620c;
            if (abstractC0857a != null) {
                try {
                    abstractC0857a.mo39700a();
                } catch (Throwable th) {
                    synchronized (this) {
                        this.f3621d = false;
                        notifyAll();
                        throw th;
                    }
                }
            }
            if (obj != null && Build.VERSION.SDK_INT >= 16) {
                ((CancellationSignal) obj).cancel();
            }
            synchronized (this) {
                this.f3621d = false;
                notifyAll();
            }
        }
    }

    /* renamed from: c */
    public final Object m44300c() {
        Object obj;
        if (Build.VERSION.SDK_INT < 16) {
            return null;
        }
        synchronized (this) {
            if (this.f3620c == null) {
                CancellationSignal cancellationSignal = new CancellationSignal();
                this.f3620c = cancellationSignal;
                if (this.f3618a) {
                    cancellationSignal.cancel();
                }
            }
            obj = this.f3620c;
        }
        return obj;
    }
}

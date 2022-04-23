package androidx.core.os;

import android.os.Build;
import android.os.CancellationSignal;
/* loaded from: classes-dex2jar.jar:androidx/core/os/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private boolean f1936a;

    /* renamed from: b  reason: collision with root package name */
    private AbstractC0050a f1937b;

    /* renamed from: c  reason: collision with root package name */
    private Object f1938c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f1939d;

    /* renamed from: androidx.core.os.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/core/os/a$a.class */
    public interface AbstractC0050a {
        void a();
    }

    public final void a(AbstractC0050a aVar) {
        synchronized (this) {
            while (this.f1939d) {
                try {
                    wait();
                } catch (InterruptedException e) {
                }
            }
            if (this.f1937b != aVar) {
                this.f1937b = aVar;
                if (this.f1936a) {
                    aVar.a();
                }
            }
        }
    }

    public final boolean a() {
        boolean z;
        synchronized (this) {
            z = this.f1936a;
        }
        return z;
    }

    public final void b() {
        synchronized (this) {
            if (!this.f1936a) {
                this.f1936a = true;
                this.f1939d = true;
                AbstractC0050a aVar = this.f1937b;
                Object obj = this.f1938c;
                if (aVar != null) {
                    try {
                        aVar.a();
                    } catch (Throwable th) {
                        synchronized (this) {
                            this.f1939d = false;
                            notifyAll();
                            throw th;
                        }
                    }
                }
                if (obj != null && Build.VERSION.SDK_INT >= 16) {
                    ((CancellationSignal) obj).cancel();
                }
                synchronized (this) {
                    this.f1939d = false;
                    notifyAll();
                }
            }
        }
    }

    public final Object c() {
        Object obj;
        if (Build.VERSION.SDK_INT < 16) {
            return null;
        }
        synchronized (this) {
            if (this.f1938c == null) {
                CancellationSignal cancellationSignal = new CancellationSignal();
                this.f1938c = cancellationSignal;
                if (this.f1936a) {
                    cancellationSignal.cancel();
                }
            }
            obj = this.f1938c;
        }
        return obj;
    }
}

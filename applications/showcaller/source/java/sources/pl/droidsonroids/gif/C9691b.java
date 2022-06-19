package pl.droidsonroids.gif;
/* renamed from: pl.droidsonroids.gif.b */
/* loaded from: classes2-dex2jar.jar:pl/droidsonroids/gif/b.class */
public class C9691b {

    /* renamed from: a */
    private volatile boolean f40943a;

    /* renamed from: a */
    public void m67a() {
        synchronized (this) {
            while (!this.f40943a) {
                wait();
            }
        }
    }

    /* renamed from: b */
    public void m66b() {
        synchronized (this) {
            this.f40943a = false;
        }
    }

    /* renamed from: c */
    public void m65c() {
        synchronized (this) {
            boolean z = this.f40943a;
            this.f40943a = true;
            if (!z) {
                notify();
            }
        }
    }

    /* renamed from: d */
    public void m64d(boolean z) {
        synchronized (this) {
            if (z) {
                m65c();
            } else {
                m66b();
            }
        }
    }
}

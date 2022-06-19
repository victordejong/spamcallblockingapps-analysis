package androidx.media2.exoplayer.external.util;
/* renamed from: androidx.media2.exoplayer.external.util.e */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/e.class */
public final class C2002e {

    /* renamed from: a */
    private boolean f8083a;

    /* renamed from: a */
    public final boolean m41594a() {
        synchronized (this) {
            if (this.f8083a) {
                return false;
            }
            this.f8083a = true;
            notifyAll();
            return true;
        }
    }

    /* renamed from: b */
    public final boolean m41593b() {
        boolean z;
        synchronized (this) {
            z = this.f8083a;
            this.f8083a = false;
        }
        return z;
    }

    /* renamed from: c */
    public final void m41592c() throws InterruptedException {
        synchronized (this) {
            while (!this.f8083a) {
                wait();
            }
        }
    }
}

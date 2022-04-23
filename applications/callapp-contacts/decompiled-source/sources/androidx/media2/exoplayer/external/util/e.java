package androidx.media2.exoplayer.external.util;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private boolean f4132a;

    public final boolean a() {
        synchronized (this) {
            if (this.f4132a) {
                return false;
            }
            this.f4132a = true;
            notifyAll();
            return true;
        }
    }

    public final boolean b() {
        boolean z;
        synchronized (this) {
            z = this.f4132a;
            this.f4132a = false;
        }
        return z;
    }

    public final void c() throws InterruptedException {
        synchronized (this) {
            while (!this.f4132a) {
                wait();
            }
        }
    }
}

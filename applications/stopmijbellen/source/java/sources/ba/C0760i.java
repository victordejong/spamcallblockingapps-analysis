package ba;
/* renamed from: ba.i */
/* loaded from: classes2-dex2jar.jar:ba/i.class */
public final class C0760i {

    /* renamed from: a */
    public C0759h f2860a;

    /* renamed from: b */
    public C0759h f2861b;

    /* renamed from: a */
    public void m7394a(C0759h c0759h) {
        synchronized (this) {
            C0759h c0759h2 = this.f2861b;
            if (c0759h2 != null) {
                c0759h2.f2859c = c0759h;
                this.f2861b = c0759h;
            } else if (this.f2860a != null) {
                throw new IllegalStateException("Head present, but no tail");
            } else {
                this.f2861b = c0759h;
                this.f2860a = c0759h;
            }
            notifyAll();
        }
    }

    /* renamed from: b */
    public C0759h m7393b() {
        C0759h c0759h;
        synchronized (this) {
            c0759h = this.f2860a;
            if (c0759h != null) {
                C0759h c0759h2 = c0759h.f2859c;
                this.f2860a = c0759h2;
                if (c0759h2 == null) {
                    this.f2861b = null;
                }
            }
        }
        return c0759h;
    }
}

package ba;
/* renamed from: ba.o */
/* loaded from: classes2-dex2jar.jar:ba/o.class */
public final class C0767o {

    /* renamed from: a */
    public final Object f2880a;

    /* renamed from: b */
    public final C0764m f2881b;

    /* renamed from: c */
    public volatile boolean f2882c = true;

    public C0767o(Object obj, C0764m c0764m) {
        this.f2880a = obj;
        this.f2881b = c0764m;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C0767o) {
            C0767o c0767o = (C0767o) obj;
            z = false;
            if (this.f2880a == c0767o.f2880a) {
                z = false;
                if (this.f2881b.equals(c0767o.f2881b)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return this.f2881b.f2870f.hashCode() + this.f2880a.hashCode();
    }
}

package p220r4;
/* renamed from: r4.l */
/* loaded from: classes-dex2jar.jar:r4/l.class */
public final class C4203l {

    /* renamed from: a */
    public final C4206o f13196a = new C4206o();

    /* renamed from: a */
    public final boolean m1294a(Exception exc) {
        boolean z;
        C4206o c4206o = this.f13196a;
        synchronized (c4206o.f13198a) {
            if (c4206o.f13200c) {
                z = false;
            } else {
                c4206o.f13200c = true;
                c4206o.f13202e = exc;
                c4206o.f13199b.m1295b(c4206o);
                z = true;
            }
        }
        return z;
    }

    /* renamed from: b */
    public final boolean m1293b(Object obj) {
        boolean z;
        C4206o c4206o = this.f13196a;
        synchronized (c4206o.f13198a) {
            if (c4206o.f13200c) {
                z = false;
            } else {
                c4206o.f13200c = true;
                c4206o.f13201d = obj;
                c4206o.f13199b.m1295b(c4206o);
                z = true;
            }
        }
        return z;
    }
}

package p1727n3.p1874y.p1876b.p1877a.p1902v0;

import p1727n3.p1874y.p1876b.p1877a.C27091i0;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* renamed from: n3.y.b.a.v0.h */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/v0/h.class */
public final class C27389h {

    /* renamed from: a */
    public final int f77095a;

    /* renamed from: b */
    public final C27091i0[] f77096b;

    /* renamed from: c */
    public final C27386f f77097c;

    /* renamed from: d */
    public final Object f77098d;

    public C27389h(C27091i0[] c27091i0Arr, AbstractC27383e[] abstractC27383eArr, Object obj) {
        this.f77096b = c27091i0Arr;
        this.f77097c = new C27386f(abstractC27383eArr);
        this.f77098d = obj;
        this.f77095a = c27091i0Arr.length;
    }

    /* renamed from: a */
    public boolean m413a(C27389h c27389h, int i) {
        if (c27389h == null) {
            return false;
        }
        boolean z = false;
        if (C27445x.m286a(this.f77096b[i], c27389h.f77096b[i])) {
            z = false;
            if (C27445x.m286a(this.f77097c.f77091b[i], c27389h.f77097c.f77091b[i])) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: b */
    public boolean m412b(int i) {
        return this.f77096b[i] != null;
    }
}

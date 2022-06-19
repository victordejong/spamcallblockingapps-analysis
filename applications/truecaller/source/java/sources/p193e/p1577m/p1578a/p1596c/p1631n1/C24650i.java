package p193e.p1577m.p1578a.p1596c.p1631n1;

import p193e.p1577m.p1578a.p1596c.C24855v0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.n1.i */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/n1/i.class */
public final class C24650i {

    /* renamed from: a */
    public final int f69030a;

    /* renamed from: b */
    public final C24855v0[] f69031b;

    /* renamed from: c */
    public final C24648g f69032c;

    /* renamed from: d */
    public final Object f69033d;

    public C24650i(C24855v0[] c24855v0Arr, AbstractC24645f[] abstractC24645fArr, Object obj) {
        this.f69031b = c24855v0Arr;
        this.f69032c = new C24648g(abstractC24645fArr);
        this.f69033d = obj;
        this.f69030a = c24855v0Arr.length;
    }

    /* renamed from: a */
    public boolean m4790a(C24650i c24650i, int i) {
        if (c24650i == null) {
            return false;
        }
        boolean z = false;
        if (C24773d0.m4623a(this.f69031b[i], c24650i.f69031b[i])) {
            z = false;
            if (C24773d0.m4623a(this.f69032c.f69027b[i], c24650i.f69032c.f69027b[i])) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: b */
    public boolean m4789b(int i) {
        return this.f69031b[i] != null;
    }
}

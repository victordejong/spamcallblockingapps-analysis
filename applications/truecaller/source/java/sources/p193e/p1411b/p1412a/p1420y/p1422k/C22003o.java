package p193e.p1411b.p1412a.p1420y.p1422k;

import e.b.a.w.b.q;
import e.b.a.y.j.h;
import e.b.a.y.l.b;
import p193e.p1411b.p1412a.C21922k;
import p193e.p1411b.p1412a.p1416w.p1417b.AbstractC21953c;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.b.a.y.k.o */
/* loaded from: classes-dex2jar.jar:e/b/a/y/k/o.class */
public class C22003o implements AbstractC21987b {

    /* renamed from: a */
    public final String f61134a;

    /* renamed from: b */
    public final int f61135b;

    /* renamed from: c */
    public final h f61136c;

    /* renamed from: d */
    public final boolean f61137d;

    public C22003o(String str, int i, h hVar, boolean z) {
        this.f61134a = str;
        this.f61135b = i;
        this.f61136c = hVar;
        this.f61137d = z;
    }

    @Override // p193e.p1411b.p1412a.p1420y.p1422k.AbstractC21987b
    /* renamed from: a */
    public AbstractC21953c mo8835a(C21922k c21922k, b bVar) {
        return new q(c21922k, bVar, this);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ShapePath{name=");
        m8728C.append(this.f61134a);
        m8728C.append(", index=");
        return C22128a.m8701I2(m8728C, this.f61135b, '}');
    }
}

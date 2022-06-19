package p193e.p1411b.p1412a.p1420y.p1422k;

import e.b.a.w.b.d;
import e.b.a.y.l.b;
import java.util.Arrays;
import java.util.List;
import p193e.p1411b.p1412a.C21922k;
import p193e.p1411b.p1412a.p1416w.p1417b.AbstractC21953c;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.b.a.y.k.n */
/* loaded from: classes-dex2jar.jar:e/b/a/y/k/n.class */
public class C22002n implements AbstractC21987b {

    /* renamed from: a */
    public final String f61131a;

    /* renamed from: b */
    public final List<AbstractC21987b> f61132b;

    /* renamed from: c */
    public final boolean f61133c;

    public C22002n(String str, List<AbstractC21987b> list, boolean z) {
        this.f61131a = str;
        this.f61132b = list;
        this.f61133c = z;
    }

    @Override // p193e.p1411b.p1412a.p1420y.p1422k.AbstractC21987b
    /* renamed from: a */
    public AbstractC21953c mo8835a(C21922k c21922k, b bVar) {
        return new d(c21922k, bVar, this);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ShapeGroup{name='");
        m8728C.append(this.f61131a);
        m8728C.append("' Shapes: ");
        m8728C.append(Arrays.toString(this.f61132b.toArray()));
        m8728C.append('}');
        return m8728C.toString();
    }
}

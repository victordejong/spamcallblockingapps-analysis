package p193e.p1411b.p1412a.p1420y.p1422k;

import android.graphics.PointF;
import e.b.a.w.b.o;
import e.b.a.y.j.b;
import e.b.a.y.j.f;
import p193e.p1411b.p1412a.C21922k;
import p193e.p1411b.p1412a.p1416w.p1417b.AbstractC21953c;
import p193e.p1411b.p1412a.p1420y.p1421j.AbstractC21984m;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.b.a.y.k.j */
/* loaded from: classes-dex2jar.jar:e/b/a/y/k/j.class */
public class C21998j implements AbstractC21987b {

    /* renamed from: a */
    public final String f61112a;

    /* renamed from: b */
    public final AbstractC21984m<PointF, PointF> f61113b;

    /* renamed from: c */
    public final f f61114c;

    /* renamed from: d */
    public final b f61115d;

    /* renamed from: e */
    public final boolean f61116e;

    public C21998j(String str, AbstractC21984m<PointF, PointF> abstractC21984m, f fVar, b bVar, boolean z) {
        this.f61112a = str;
        this.f61113b = abstractC21984m;
        this.f61114c = fVar;
        this.f61115d = bVar;
        this.f61116e = z;
    }

    @Override // p193e.p1411b.p1412a.p1420y.p1422k.AbstractC21987b
    /* renamed from: a */
    public AbstractC21953c mo8835a(C21922k c21922k, e.b.a.y.l.b bVar) {
        return new o(c21922k, bVar, this);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("RectangleShape{position=");
        m8728C.append(this.f61113b);
        m8728C.append(", size=");
        m8728C.append(this.f61114c);
        m8728C.append('}');
        return m8728C.toString();
    }
}

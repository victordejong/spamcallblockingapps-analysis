package p193e.p1411b.p1412a.p1420y.p1423l;

import e.b.a.w.c.c;
import p193e.p1411b.p1412a.p1416w.p1418c.AbstractC21959a;
/* renamed from: e.b.a.y.l.a */
/* loaded from: classes-dex2jar.jar:e/b/a/y/l/a.class */
public class C22009a implements AbstractC21959a.AbstractC21960a {

    /* renamed from: a */
    public final /* synthetic */ c f61165a;

    /* renamed from: b */
    public final /* synthetic */ b f61166b;

    public C22009a(b bVar, c cVar) {
        this.f61166b = bVar;
        this.f61165a = cVar;
    }

    @Override // p193e.p1411b.p1412a.p1416w.p1418c.AbstractC21959a.AbstractC21960a
    /* renamed from: d */
    public void mo8834d() {
        b bVar = this.f61166b;
        boolean z = this.f61165a.j() == 1.0f;
        if (z != bVar.v) {
            bVar.v = z;
            bVar.n.invalidateSelf();
        }
    }
}

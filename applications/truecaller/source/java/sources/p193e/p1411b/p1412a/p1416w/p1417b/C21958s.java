package p193e.p1411b.p1412a.p1416w.p1417b;

import e.b.a.y.l.b;
import java.util.ArrayList;
import java.util.List;
import p193e.p1411b.p1412a.p1416w.p1418c.AbstractC21959a;
import p193e.p1411b.p1412a.p1420y.p1422k.C22007q;
/* renamed from: e.b.a.w.b.s */
/* loaded from: classes-dex2jar.jar:e/b/a/w/b/s.class */
public class C21958s implements AbstractC21953c, AbstractC21959a.AbstractC21960a {

    /* renamed from: a */
    public final boolean f60946a;

    /* renamed from: b */
    public final List<AbstractC21959a.AbstractC21960a> f60947b = new ArrayList();

    /* renamed from: c */
    public final C22007q.EnumC22008a f60948c;

    /* renamed from: d */
    public final AbstractC21959a<?, Float> f60949d;

    /* renamed from: e */
    public final AbstractC21959a<?, Float> f60950e;

    /* renamed from: f */
    public final AbstractC21959a<?, Float> f60951f;

    public C21958s(b bVar, C22007q c22007q) {
        this.f60946a = c22007q.f61161f;
        this.f60948c = c22007q.f61157b;
        AbstractC21959a<?, Float> f = c22007q.f61158c.f();
        this.f60949d = f;
        AbstractC21959a<?, Float> f2 = c22007q.f61159d.f();
        this.f60950e = f2;
        AbstractC21959a<?, Float> f3 = c22007q.f61160e.f();
        this.f60951f = f3;
        bVar.b(f);
        bVar.b(f2);
        bVar.b(f3);
        f.f60952a.add(this);
        f2.f60952a.add(this);
        f3.f60952a.add(this);
    }

    @Override // p193e.p1411b.p1412a.p1416w.p1418c.AbstractC21959a.AbstractC21960a
    /* renamed from: d */
    public void mo8834d() {
        for (int i = 0; i < this.f60947b.size(); i++) {
            this.f60947b.get(i).mo8834d();
        }
    }

    @Override // p193e.p1411b.p1412a.p1416w.p1417b.AbstractC21953c
    /* renamed from: e */
    public void mo8869e(List<AbstractC21953c> list, List<AbstractC21953c> list2) {
    }
}

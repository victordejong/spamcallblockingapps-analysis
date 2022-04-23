package p131c.p161d.p282e.p315q.p318p0;

import android.app.Application;
import com.google.firebase.inappmessaging.display.internal.FiamAnimator;
import java.util.Map;
import p131c.p161d.p282e.p315q.C5841r;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.AbstractC5544c;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5547a;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5551d;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5554f;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5560i;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5566m;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.p0.d */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/d.class */
public final class C5537d implements AbstractC5544c<C5526b> {

    /* renamed from: a */
    public final AbstractC9866a<C5841r> f18504a;

    /* renamed from: b */
    public final AbstractC9866a<Map<String, AbstractC9866a<C5560i>>> f18505b;

    /* renamed from: c */
    public final AbstractC9866a<C5551d> f18506c;

    /* renamed from: d */
    public final AbstractC9866a<C5566m> f18507d;

    /* renamed from: e */
    public final AbstractC9866a<C5566m> f18508e;

    /* renamed from: f */
    public final AbstractC9866a<C5554f> f18509f;

    /* renamed from: g */
    public final AbstractC9866a<Application> f18510g;

    /* renamed from: h */
    public final AbstractC9866a<C5547a> f18511h;

    /* renamed from: i */
    public final AbstractC9866a<FiamAnimator> f18512i;

    public C5537d(AbstractC9866a<C5841r> aVar, AbstractC9866a<Map<String, AbstractC9866a<C5560i>>> aVar2, AbstractC9866a<C5551d> aVar3, AbstractC9866a<C5566m> aVar4, AbstractC9866a<C5566m> aVar5, AbstractC9866a<C5554f> aVar6, AbstractC9866a<Application> aVar7, AbstractC9866a<C5547a> aVar8, AbstractC9866a<FiamAnimator> aVar9) {
        this.f18504a = aVar;
        this.f18505b = aVar2;
        this.f18506c = aVar3;
        this.f18507d = aVar4;
        this.f18508e = aVar5;
        this.f18509f = aVar6;
        this.f18510g = aVar7;
        this.f18511h = aVar8;
        this.f18512i = aVar9;
    }

    /* renamed from: a */
    public static C5526b m23596a(C5841r rVar, Map<String, AbstractC9866a<C5560i>> map, C5551d dVar, C5566m mVar, C5566m mVar2, C5554f fVar, Application application, C5547a aVar, FiamAnimator fiamAnimator) {
        return new C5526b(rVar, map, dVar, mVar, mVar2, fVar, application, aVar, fiamAnimator);
    }

    /* renamed from: a */
    public static C5537d m23595a(AbstractC9866a<C5841r> aVar, AbstractC9866a<Map<String, AbstractC9866a<C5560i>>> aVar2, AbstractC9866a<C5551d> aVar3, AbstractC9866a<C5566m> aVar4, AbstractC9866a<C5566m> aVar5, AbstractC9866a<C5554f> aVar6, AbstractC9866a<Application> aVar7, AbstractC9866a<C5547a> aVar8, AbstractC9866a<FiamAnimator> aVar9) {
        return new C5537d(aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7, aVar8, aVar9);
    }

    @Override // p571e.p572a.AbstractC9866a
    public C5526b get() {
        return m23596a(this.f18504a.get(), this.f18505b.get(), this.f18506c.get(), this.f18507d.get(), this.f18508e.get(), this.f18509f.get(), this.f18510g.get(), this.f18511h.get(), this.f18512i.get());
    }
}

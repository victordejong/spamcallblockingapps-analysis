package p193e.p194a.p1193r5;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.whoviewedme.ProfileViewDaoImpl$asyncDeleteAllProfileViews$1", f = "ProfileViewDao.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.r5.k */
/* loaded from: classes8-dex2jar.jar:e/a/r5/k.class */
public final class C19958k extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C19965n f56444e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19958k(C19965n c19965n, d dVar) {
        super(2, dVar);
        this.f56444e = c19965n;
    }

    /* renamed from: i */
    public final d<s> m11740i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C19958k(this.f56444e, dVar);
    }

    /* renamed from: k */
    public final Object m11739k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C19965n c19965n = this.f56444e;
        dVar.getContext();
        s sVar = s.a;
        C25225a.m3932a3(sVar);
        c19965n.f56461c.delete(C17891a1.C17902k.m15669J(), null, null);
        return sVar;
    }

    /* renamed from: s */
    public final Object m11738s(Object obj) {
        C25225a.m3932a3(obj);
        this.f56444e.f56461c.delete(C17891a1.C17902k.m15669J(), null, null);
        return s.a;
    }
}

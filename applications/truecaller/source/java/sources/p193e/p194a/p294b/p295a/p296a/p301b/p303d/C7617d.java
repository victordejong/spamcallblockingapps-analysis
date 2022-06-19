package p193e.p194a.p294b.p295a.p296a.p301b.p303d;

import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p294b.p295a.p296a.p301b.p303d.C7613b;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import x3.a0;
@e(c = "com.truecaller.bizmon.newBusiness.profile.data.remote.BizProfileRemoteDataSource$fetchProfile$2", f = "BizProfileRemoteDataSource.kt", l = {38}, m = "invokeSuspend")
/* renamed from: e.a.b.a.a.b.d.d */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/b/d/d.class */
public final class C7617d extends i implements l<d<? super a0<BusinessProfile>>, Object> {

    /* renamed from: e */
    public int f23959e;

    /* renamed from: f */
    public final /* synthetic */ C7613b f23960f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7617d(C7613b c7613b, d dVar) {
        super(1, dVar);
        this.f23960f = c7613b;
    }

    /* renamed from: d */
    public final Object m29480d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C7617d(this.f23960f, dVar).m29478s(s.a);
    }

    /* renamed from: l */
    public final d<s> m29479l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C7617d(this.f23960f, dVar);
    }

    /* renamed from: s */
    public final Object m29478s(Object obj) {
        a aVar = a.a;
        int i = this.f23959e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C7613b.AbstractC7614a abstractC7614a = this.f23960f.f23954a;
            this.f23959e = 1;
            Object m29488a = abstractC7614a.m29488a(this);
            obj = m29488a;
            if (m29488a == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return obj;
    }
}

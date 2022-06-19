package p193e.p194a.p294b.p295a.p296a.p301b.p303d;

import com.truecaller.profile.data.dto.businessV2.BusinessProfileRequest;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p294b.p295a.p296a.p301b.p303d.C7613b;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import x3.a0;
@e(c = "com.truecaller.bizmon.newBusiness.profile.data.remote.BizProfileRemoteDataSource$updateProfile$2", f = "BizProfileRemoteDataSource.kt", l = {44}, m = "invokeSuspend")
/* renamed from: e.a.b.a.a.b.d.e */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/b/d/e.class */
public final class C7618e extends i implements l<d<? super a0<s>>, Object> {

    /* renamed from: e */
    public int f23961e;

    /* renamed from: f */
    public final /* synthetic */ C7613b f23962f;

    /* renamed from: g */
    public final /* synthetic */ BusinessProfileRequest f23963g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7618e(C7613b c7613b, BusinessProfileRequest businessProfileRequest, d dVar) {
        super(1, dVar);
        this.f23962f = c7613b;
        this.f23963g = businessProfileRequest;
    }

    /* renamed from: d */
    public final Object m29477d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C7618e(this.f23962f, this.f23963g, dVar).m29475s(s.a);
    }

    /* renamed from: l */
    public final d<s> m29476l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C7618e(this.f23962f, this.f23963g, dVar);
    }

    /* renamed from: s */
    public final Object m29475s(Object obj) {
        a aVar = a.a;
        int i = this.f23961e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C7613b.AbstractC7614a abstractC7614a = this.f23962f.f23954a;
            BusinessProfileRequest businessProfileRequest = this.f23963g;
            this.f23961e = 1;
            Object m29485d = abstractC7614a.m29485d(businessProfileRequest, this);
            obj = m29485d;
            if (m29485d == aVar) {
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

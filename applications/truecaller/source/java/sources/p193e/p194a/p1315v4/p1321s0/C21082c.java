package p193e.p194a.p1315v4.p1321s0;

import com.razorpay.AnalyticsConstants;
import com.truecaller.android.sdk.oAuth.clients.PartnerInformationV2;
import com.truecaller.sdk.oAuth.networking.data.PartnerDetailsResponse;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1315v4.p1321s0.p1323l.AbstractC21098b;
import p193e.p194a.p1315v4.p1321s0.p1323l.p1324e.AbstractC21104a;
import p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21121f;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.sdk.oAuth.NativeOAuthSdkPartnerImpl$enqueueFetchPartnerInfo$1", f = "NativeOAuthSdkPartner.kt", l = {119}, m = "invokeSuspend")
/* renamed from: e.a.v4.s0.c */
/* loaded from: classes12-dex2jar.jar:e/a/v4/s0/c.class */
public final class C21082c extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f59180e;

    /* renamed from: f */
    public final /* synthetic */ C21084e f59181f;

    /* renamed from: g */
    public final /* synthetic */ PartnerInformationV2 f59182g;

    /* renamed from: h */
    public final /* synthetic */ String f59183h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21082c(C21084e c21084e, PartnerInformationV2 partnerInformationV2, String str, d dVar) {
        super(2, dVar);
        this.f59181f = c21084e;
        this.f59182g = partnerInformationV2;
        this.f59183h = str;
    }

    /* renamed from: i */
    public final d<s> m10373i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C21082c(this.f59181f, this.f59182g, this.f59183h, dVar);
    }

    /* renamed from: k */
    public final Object m10372k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C21082c(this.f59181f, this.f59182g, this.f59183h, dVar).m10371s(s.a);
    }

    /* renamed from: s */
    public final Object m10371s(Object obj) {
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f59180e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C21084e c21084e = this.f59181f;
            AbstractC21098b abstractC21098b = c21084e.f59198q;
            PartnerInformationV2 partnerInformationV2 = this.f59182g;
            String str = this.f59183h;
            String mo10356u = c21084e.mo10356u();
            this.f59180e = 1;
            Object mo10327c = abstractC21098b.mo10327c(partnerInformationV2, str, mo10356u, this);
            obj = mo10327c;
            if (mo10327c == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC21104a abstractC21104a = (AbstractC21104a) obj;
        C21084e c21084e2 = this.f59181f;
        AbstractC21121f abstractC21121f = c21084e2.f59207b;
        if (abstractC21121f != null) {
            if (abstractC21104a instanceof AbstractC21104a.C21113b) {
                PartnerDetailsResponse partnerDetailsResponse = (PartnerDetailsResponse) ((AbstractC21104a.C21113b) abstractC21104a).f59248a;
                c21084e2.f59194m = partnerDetailsResponse;
                if (partnerDetailsResponse != null) {
                    abstractC21121f.mo10280l6(partnerDetailsResponse);
                }
                abstractC21121f.mo10291T1(false);
                C17422k.m16096V(this.f59181f.m10334x(), AnalyticsConstants.SHOWN, null, null, null, 14, null);
            } else {
                C21084e.m10355y(c21084e2, abstractC21104a);
            }
        }
        return sVar;
    }
}

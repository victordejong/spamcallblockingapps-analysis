package p193e.p194a.p1114o5.p1115a2;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.network.country.CountryListDto;
import p193e.p194a.p1114o5.p1119c2.AbstractC18977k;
import p193e.p194a.p1114o5.p1119c2.C18995r0;
import p193e.p194a.p1146q2.C19519m;
import p193e.p194a.p372b0.p430q.C8588j;
import p193e.p194a.p916i5.C15314a;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
import s1.z.c.l;
/* renamed from: e.a.o5.a2.f */
/* loaded from: classes15-dex2jar.jar:e/a/o5/a2/f.class */
public final class C18942f implements C19519m.AbstractC19520a {
    @Override // p193e.p194a.p1146q2.C19519m.AbstractC19520a
    /* renamed from: b */
    public boolean mo13239b() {
        return C15571h.m18632s();
    }

    @Override // p193e.p194a.p1146q2.C19519m.AbstractC19520a
    /* renamed from: c */
    public String mo13238c() {
        C15314a c15314a = C15314a.f43582g;
        return C15314a.m18938a().f43585a;
    }

    @Override // p193e.p194a.p1146q2.C19519m.AbstractC19520a
    /* renamed from: d */
    public boolean mo13237d(String str) {
        l.e(str, AnalyticsConstants.KEY);
        return C15571h.m18643h(str);
    }

    @Override // p193e.p194a.p1146q2.C19519m.AbstractC19520a
    /* renamed from: e */
    public AbstractC18977k mo13236e(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        AbstractC18977k m14265a = C18995r0.m14265a(context);
        l.d(m14265a, "PartnerUtil.getPartner(context)");
        return m14265a;
    }

    @Override // p193e.p194a.p1146q2.C19519m.AbstractC19520a
    /* renamed from: f */
    public CountryListDto.C3679a mo13235f(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        return C8588j.m28281h(context);
    }
}

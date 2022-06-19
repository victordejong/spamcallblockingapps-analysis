package p193e.p194a.p1146q2.p1151d1;

import android.os.Bundle;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.razorpay.AnalyticsConstants;
import com.truecaller.log.AssertionUtil;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.q2.d1.e */
/* loaded from: classes5-dex2jar.jar:e/a/q2/d1/e.class */
public final class C19495e implements AbstractC19494d {

    /* renamed from: a */
    public final FirebaseAnalytics f54107a;

    public C19495e(FirebaseAnalytics firebaseAnalytics) {
        l.e(firebaseAnalytics, "actual");
        this.f54107a = firebaseAnalytics;
    }

    @Override // p193e.p194a.p1146q2.p1151d1.AbstractC19494d
    /* renamed from: a */
    public void mo13284a(String str, Bundle bundle) {
        l.e(str, "eventName");
        AssertionUtil.OnlyInDebug.isTrue(str.length() <= 40, C22128a.m8543z2(str, " exceeds max length: 40 characters"));
        this.f54107a.f7029a.zzx(str, bundle);
    }

    @Override // p193e.p194a.p1146q2.p1151d1.AbstractC19494d
    /* renamed from: b */
    public void mo13283b(Map<String, String> map) {
        l.e(map, AnalyticsConstants.PROPERTIES);
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.f54107a.f7029a.zzN(null, entry.getKey(), entry.getValue(), false);
        }
    }

    @Override // p193e.p194a.p1146q2.p1151d1.AbstractC19494d
    /* renamed from: c */
    public void mo13282c(String str) {
        l.e(str, "eventName");
        mo13284a(str, null);
    }
}

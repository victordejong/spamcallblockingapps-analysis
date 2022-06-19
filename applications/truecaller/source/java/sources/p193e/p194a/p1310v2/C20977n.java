package p193e.p194a.p1310v2;

import android.content.Context;
import android.content.SharedPreferences;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import s1.z.c.l;
/* renamed from: e.a.v2.n */
/* loaded from: classes5-dex2jar.jar:e/a/v2/n.class */
public final class C20977n extends AbstractC19316a implements AbstractC20976m {

    /* renamed from: b */
    public final int f58945b = 1;

    /* renamed from: c */
    public final String f58946c = "attestation";

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C20977n(SharedPreferences sharedPreferences) {
        super(sharedPreferences);
        l.e(sharedPreferences, "sharedPrefs");
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a, p193e.p194a.p372b0.p406e.p409r.AbstractC8438a
    public /* bridge */ /* synthetic */ Long getLong(String str, long j) {
        return Long.valueOf(getLong(str, j));
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: j3 */
    public int mo8946j3() {
        return this.f58945b;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        return this.f58946c;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    public void mo8944o3(int i, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        if (i < 1) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("core_settings", 0);
            putLong("attestationTtl", sharedPreferences.getLong("attestationTtl", 0L));
            putLong("attestationLastTime", sharedPreferences.getLong("attestationLastTime", 0L));
            sharedPreferences.edit().remove("attestationTtl").remove("attestationLastTime").apply();
        }
    }
}

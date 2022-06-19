package p193e.p194a.p1146q2.p1148b1;

import android.content.Context;
import android.content.SharedPreferences;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.log.UnmutedException;
import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import p193e.p194a.p437c.p578p.C10480a;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.q2.b1.b */
/* loaded from: classes5-dex2jar.jar:e/a/q2/b1/b.class */
public final class C19470b extends AbstractC19316a implements AbstractC19469a {

    /* renamed from: b */
    public final int f54063b = 1;

    /* renamed from: c */
    public final String f54064c = DTBMetricsConfiguration.ANALYTICS_KEY_NAME;

    /* renamed from: d */
    public final SharedPreferences f54065d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19470b(SharedPreferences sharedPreferences) {
        super(sharedPreferences);
        l.e(sharedPreferences, "sharedPreferences");
        this.f54065d = sharedPreferences;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: j3 */
    public int mo8946j3() {
        return this.f54063b;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        return this.f54064c;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    public void mo8944o3(int i, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        if (i < 1) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("tc.settings", 0);
            l.d(sharedPreferences, "oldSharedPreferences");
            AbstractC19316a.m13468m3(this, sharedPreferences, i.z0(new String[]{"uploadEventsRetryJitter", "analyticsID", "uploadEventsMaxBatchSize", "uploadEventsMinBatchSize"}), false, 4, null);
            SharedPreferences sharedPreferences2 = this.f54065d;
            l.e("analyticsUploadEnhancedBatchSize", AnalyticsConstants.KEY);
            l.e(sharedPreferences2, "source");
            l.e("analyticsUploadEnhancedBatchSize", AnalyticsConstants.KEY);
            l.e(sharedPreferences2, "source");
            ClassCastException e = null;
            if (sharedPreferences2.contains("analyticsUploadEnhancedBatchSize")) {
                try {
                    long j = sharedPreferences2.getLong("analyticsUploadEnhancedBatchSize", -1L);
                    int i2 = Integer.MAX_VALUE;
                    if (j <= Integer.MAX_VALUE) {
                        i2 = j < ((long) Integer.MIN_VALUE) ? Integer.MIN_VALUE : (int) j;
                    }
                    putInt("analyticsUploadEnhancedBatchSize", i2);
                } catch (ClassCastException e2) {
                    e = e2;
                }
            }
            if (e == null) {
                return;
            }
            C10480a.m26061I1(new UnmutedException.C4156o(e.getClass().getCanonicalName() + ": " + e.getMessage()));
            remove("analyticsUploadEnhancedBatchSize");
        }
    }
}

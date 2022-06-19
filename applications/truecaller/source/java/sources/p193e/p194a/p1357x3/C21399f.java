package p193e.p194a.p1357x3;

import android.content.Context;
import android.content.SharedPreferences;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.x3.f */
/* loaded from: classes9-dex2jar.jar:e/a/x3/f.class */
public final class C21399f extends AbstractC19316a implements AbstractC21398e {

    /* renamed from: b */
    public final int f59863b = 1;

    /* renamed from: c */
    public final String f59864c = "forced_update_settings";

    @Inject
    public C21399f(Context context) {
        super(C22128a.m8731B0(context, AnalyticsConstants.CONTEXT, "forced_update_settings", 0, "context.getSharedPrefere…ME, Context.MODE_PRIVATE)"));
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: j3 */
    public int mo8946j3() {
        return this.f59863b;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        return this.f59864c;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    public void mo8944o3(int i, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        if (i < 1) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("tc.settings", 0);
            l.d(sharedPreferences, "oldSharedPreferences");
            AbstractC19316a.m13468m3(this, sharedPreferences, i.z0(new String[]{"forcedUpdate_period", "forcedUpdate_lastDismissed", "forcedUpdate_updateType", "forcedUpdate_link", "forcedUpdate_appVersion"}), false, 4, null);
        }
    }
}

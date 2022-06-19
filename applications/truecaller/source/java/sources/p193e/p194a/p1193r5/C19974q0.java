package p193e.p194a.p1193r5;

import android.content.Context;
import android.content.SharedPreferences;
import com.razorpay.AnalyticsConstants;
import com.truecaller.whoviewedme.WhoViewedMeLaunchContext;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.r5.q0 */
/* loaded from: classes8-dex2jar.jar:e/a/r5/q0.class */
public final class C19974q0 extends AbstractC19316a implements AbstractC19972p0 {

    /* renamed from: b */
    public final int f56482b = 1;

    /* renamed from: c */
    public final String f56483c = "tc_wvm_settings";

    @Inject
    public C19974q0(Context context) {
        super(C22128a.m8731B0(context, AnalyticsConstants.CONTEXT, "tc_wvm_settings", 0, "context.getSharedPrefere…ME, Context.MODE_PRIVATE)"));
    }

    @Override // p193e.p194a.p1193r5.AbstractC19972p0
    /* renamed from: F0 */
    public long mo11721F0() {
        return getLong("whoViewedMeLastRevealProfileId", 0L);
    }

    @Override // p193e.p194a.p1193r5.AbstractC19972p0
    /* renamed from: d2 */
    public void mo11720d2(long j) {
        putLong("whoViewedMeLastRevealTimestamp", j);
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: j3 */
    public int mo8946j3() {
        return this.f56482b;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        return this.f56483c;
    }

    @Override // p193e.p194a.p1193r5.AbstractC19972p0
    /* renamed from: m2 */
    public long mo11719m2() {
        return getLong("whoViewedMeLastRevealTimestamp", 0L);
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    public void mo8944o3(int i, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        if (i < 1) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("tc_premium_settings", 0);
            l.d(sharedPreferences, "context.getSharedPrefere…s\", Context.MODE_PRIVATE)");
            m13469l3(sharedPreferences, i.y0("WHO_VIEWED_ME_LAUNCH_CONTEXT"), true);
        }
    }

    @Override // p193e.p194a.p1193r5.AbstractC19972p0
    /* renamed from: s0 */
    public void mo11718s0(WhoViewedMeLaunchContext whoViewedMeLaunchContext) {
        putString("WHO_VIEWED_ME_LAUNCH_CONTEXT", whoViewedMeLaunchContext.name());
    }

    @Override // p193e.p194a.p1193r5.AbstractC19972p0
    /* renamed from: z2 */
    public void mo11717z2(long j) {
        putLong("whoViewedMeLastRevealProfileId", j);
    }
}

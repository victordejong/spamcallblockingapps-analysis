package p193e.p194a.p1349x;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.ghost_call.C4002R;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import s1.z.c.l;
/* renamed from: e.a.x.x */
/* loaded from: classes9-dex2jar.jar:e/a/x/x.class */
public final class C21386x extends AbstractC19316a implements AbstractC21385w {

    /* renamed from: b */
    public final int f59848b = 1;

    /* renamed from: c */
    public final String f59849c = "pretend_call_settings";

    /* renamed from: d */
    public final AbstractC19223c0 f59850d;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C21386x(android.content.Context r5, p193e.p194a.p1129p5.AbstractC19223c0 r6) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r6
            java.lang.String r1 = "resourceProvider"
            s1.z.c.l.e(r0, r1)
            r0 = r5
            java.lang.String r1 = "pretend_call_settings"
            r2 = 0
            android.content.SharedPreferences r0 = r0.getSharedPreferences(r1, r2)
            r5 = r0
            r0 = r5
            java.lang.String r1 = "context.getSharedPrefere…ME, Context.MODE_PRIVATE)"
            s1.z.c.l.d(r0, r1)
            r0 = r4
            r1 = r5
            r0.<init>(r1)
            r0 = r4
            r1 = r6
            r0.f59850d = r1
            r0 = r4
            r1 = 1
            r0.f59848b = r1
            r0 = r4
            java.lang.String r1 = "pretend_call_settings"
            r0.f59849c = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1349x.C21386x.<init>(android.content.Context, e.a.p5.c0):void");
    }

    @Override // p193e.p194a.p1349x.AbstractC21385w
    /* renamed from: D1 */
    public boolean mo9801D1() {
        return getBoolean("firstCallScheduled", false);
    }

    @Override // p193e.p194a.p1349x.AbstractC21385w
    /* renamed from: I */
    public void mo9800I(boolean z) {
        putBoolean("firstCallScheduled", z);
    }

    @Override // p193e.p194a.p1349x.AbstractC21385w
    /* renamed from: S0 */
    public String mo9799S0() {
        return getString("profileUri");
    }

    @Override // p193e.p194a.p1349x.AbstractC21385w
    /* renamed from: S2 */
    public void mo9798S2(long j) {
        putLong("nextScheduledMillis", j);
    }

    @Override // p193e.p194a.p1349x.AbstractC21385w
    /* renamed from: V0 */
    public String mo9797V0() {
        String mo13768b = this.f59850d.mo13768b(C4002R.string.PretendCallDefaultCallerName, new Object[0]);
        l.d(mo13768b, "resourceProvider.getStri…endCallDefaultCallerName)");
        return getString("profileName", mo13768b);
    }

    @Override // p193e.p194a.p1349x.AbstractC21385w
    /* renamed from: Y */
    public void mo9796Y(String str) {
        putString("profileUri", str);
    }

    @Override // p193e.p194a.p1349x.AbstractC21385w
    /* renamed from: Z1 */
    public int mo9795Z1() {
        return getInt("delayDuration", 0);
    }

    @Override // p193e.p194a.p1349x.AbstractC21385w
    /* renamed from: b */
    public void mo9794b(boolean z) {
        putBoolean("isNewFeatureSplatDismissed", z);
    }

    @Override // p193e.p194a.p1349x.AbstractC21385w
    public void clear() {
        remove("phoneNumber");
        remove("profileName");
        remove("profileUri");
        remove("delayDuration");
        remove("nextScheduledMillis");
        remove("firstCallScheduled");
        remove("newFeaturePromoLastDismissed");
        remove("isNewFeatureSplatDismissed");
        remove("isFeatureHighlightedViaScroll");
        remove("isActionOnHomeTabPromoTaken");
    }

    @Override // p193e.p194a.p1349x.AbstractC21385w
    /* renamed from: d */
    public void mo9793d(boolean z) {
        putBoolean("isFeatureHighlightedViaScroll", z);
    }

    @Override // p193e.p194a.p1349x.AbstractC21385w
    /* renamed from: e */
    public boolean mo9792e() {
        return getBoolean("isNewFeatureSplatDismissed", false);
    }

    @Override // p193e.p194a.p1349x.AbstractC21385w
    /* renamed from: f */
    public void mo9791f(long j) {
        putLong("newFeaturePromoLastDismissed", j);
    }

    @Override // p193e.p194a.p1349x.AbstractC21385w
    /* renamed from: g */
    public long mo9790g() {
        return getLong("newFeaturePromoLastDismissed", 0L);
    }

    @Override // p193e.p194a.p1349x.AbstractC21385w
    /* renamed from: h */
    public boolean mo9789h() {
        return getBoolean("isActionOnHomeTabPromoTaken", false);
    }

    @Override // p193e.p194a.p1349x.AbstractC21385w
    /* renamed from: h0 */
    public void mo9788h0(int i) {
        putInt("delayDuration", i);
    }

    @Override // p193e.p194a.p1349x.AbstractC21385w
    /* renamed from: i */
    public boolean mo9787i() {
        return getBoolean("isFeatureHighlightedViaScroll", false);
    }

    @Override // p193e.p194a.p1349x.AbstractC21385w
    /* renamed from: j */
    public void mo9786j(boolean z) {
        putBoolean("isActionOnHomeTabPromoTaken", z);
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: j3 */
    public int mo8946j3() {
        return this.f59848b;
    }

    @Override // p193e.p194a.p1349x.AbstractC21385w
    /* renamed from: k1 */
    public long mo9785k1() {
        return getLong("nextScheduledMillis", 0L);
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        return this.f59849c;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    public void mo8944o3(int i, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    @Override // p193e.p194a.p1349x.AbstractC21385w
    public void setPhoneNumber(String str) {
        l.e(str, "value");
        putString("phoneNumber", str);
    }

    @Override // p193e.p194a.p1349x.AbstractC21385w
    public void setProfileName(String str) {
        l.e(str, "value");
        putString("profileName", str);
    }

    @Override // p193e.p194a.p1349x.AbstractC21385w
    /* renamed from: w */
    public String mo9784w() {
        return getString("phoneNumber", "");
    }
}

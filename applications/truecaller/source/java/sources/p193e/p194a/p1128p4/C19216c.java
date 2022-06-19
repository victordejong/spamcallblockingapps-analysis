package p193e.p194a.p1128p4;

import android.content.Context;
import android.content.SharedPreferences;
import com.razorpay.AnalyticsConstants;
import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import s1.z.c.l;
/* renamed from: e.a.p4.c */
/* loaded from: classes12-dex2jar.jar:e/a/p4/c.class */
public final class C19216c extends AbstractC19316a implements AbstractC19215b {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19216c(SharedPreferences sharedPreferences) {
        super(sharedPreferences);
        l.e(sharedPreferences, "sharedPreferences");
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: B1 */
    public boolean mo13875B1() {
        return getBoolean("imDebugVersioning", false);
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: B2 */
    public boolean mo13874B2() {
        return getBoolean("delayImAttachmentSending", false);
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: E2 */
    public boolean mo13873E2() {
        return getBoolean("imEmptyUserInfo");
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: F1 */
    public String mo13872F1() {
        return getString("premiumDebugSubscriptions");
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: F2 */
    public void mo13871F2(String str) {
        putString("business_custom_replies", str);
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: H1 */
    public void mo13870H1(boolean z) {
        putBoolean("qaEnableDomainFronting", z);
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: L1 */
    public void mo13869L1(boolean z) {
        putBoolean("шsUseDebugSubscriptions", z);
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: N1 */
    public void mo13868N1(String str) {
        putString("premiumDebugSubscriptions", str);
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: O1 */
    public void mo13867O1(boolean z) {
        putBoolean("imDebugVersioning", z);
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: O2 */
    public String mo13866O2() {
        return getString("business_custom_replies");
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: P0 */
    public void mo13865P0(String str) {
        putString("premiumGoldTopImageUrl", str);
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: Q */
    public void mo13864Q(String str) {
        putString("premiumTopImageUrl", str);
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: R0 */
    public boolean mo13863R0() {
        return getBoolean("delayImAttachmentUploads", false);
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: S */
    public boolean mo13862S() {
        return getBoolean("qaUseRazorPayLiveKey");
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: S1 */
    public String mo13861S1() {
        return getString("premiumGoldTopImageUrl");
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: T2 */
    public void mo13860T2(boolean z) {
        putBoolean("qaDisableFirebaseConfig", z);
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: U0 */
    public void mo13859U0(boolean z) {
        putBoolean("qaExpireImAttachments", z);
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: V2 */
    public String mo13858V2() {
        return getString("premiumTopImageUrl");
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: W1 */
    public void mo13857W1(boolean z) {
        putBoolean("qaAbTestEnableLocalConfig", z);
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: Y0 */
    public boolean mo13856Y0() {
        return getBoolean("qaEnableDomainFronting", false);
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: Y1 */
    public boolean mo13855Y1() {
        return getBoolean("finish_truecaller_init", false);
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: Z0 */
    public void mo13854Z0(boolean z) {
        putBoolean("finish_truecaller_init", z);
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: Z2 */
    public void mo13853Z2(boolean z) {
        putBoolean("imEmptyUserInfo", z);
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: a1 */
    public void mo13852a1(String str) {
        putString("qaForcedInboxBanner", str);
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: a3 */
    public void mo13851a3(boolean z) {
        putBoolean("useShortUrgentMessageExpiry", z);
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: d3 */
    public boolean mo13850d3() {
        return getBoolean("qaDisableFirebaseConfig");
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: g2 */
    public boolean mo13849g2() {
        return getBoolean("шsUseDebugSubscriptions");
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: h1 */
    public boolean mo13848h1() {
        return getBoolean("qaAddSamplePremiumCards");
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: j3 */
    public int mo8946j3() {
        return 3;
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: k0 */
    public boolean mo13847k0() {
        return getBoolean("qaAbTestEnableLocalConfig");
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: k2 */
    public void mo13846k2(boolean z) {
        putBoolean("qaUseRazorPayLiveKey", z);
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        return "qa-menu";
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: l1 */
    public void mo13845l1(boolean z) {
        putBoolean("shouldTreatSmsAsUrgent", z);
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: m0 */
    public boolean mo13844m0() {
        return getBoolean("qaExpireImAttachments", false);
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: m1 */
    public void mo13843m1(boolean z) {
        putBoolean("delayImAttachmentSending", z);
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: n0 */
    public String mo13842n0() {
        return getString("disabledPremiumFeatures");
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: n1 */
    public void mo13841n1(boolean z) {
        putBoolean("qaAddSamplePremiumCards", z);
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    public void mo8944o3(int i, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        if (i < 2) {
            remove("premiumDebugSubscriptions");
        }
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: p0 */
    public boolean mo13840p0() {
        return getBoolean("shouldTreatSmsAsUrgent", false);
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: q1 */
    public boolean mo13839q1() {
        return getBoolean("useShortUrgentMessageExpiry", false);
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: q2 */
    public void mo13838q2(boolean z) {
        putBoolean("imDebugCommands", z);
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: t2 */
    public boolean mo13837t2() {
        return getBoolean("imDebugCommands", false);
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: u */
    public void mo13836u(boolean z) {
        putBoolean("delayImAttachmentUploads", z);
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: v2 */
    public void mo13835v2(String str) {
        putString("disabledPremiumFeatures", str);
    }

    @Override // p193e.p194a.p1128p4.AbstractC19215b
    /* renamed from: x2 */
    public String mo13834x2() {
        return getString("qaForcedInboxBanner");
    }
}

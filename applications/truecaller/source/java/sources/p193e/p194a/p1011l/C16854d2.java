package p193e.p194a.p1011l;

import android.content.Context;
import android.content.SharedPreferences;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.l.d2 */
/* loaded from: classes12-dex2jar.jar:e/a/l/d2.class */
public final class C16854d2 extends AbstractC19316a implements AbstractC16832c2 {

    /* renamed from: b */
    public final int f47255b = 1;

    /* renamed from: c */
    public final String f47256c = "tc_premium_settings";

    @Inject
    public C16854d2(Context context) {
        super(C22128a.m8731B0(context, AnalyticsConstants.CONTEXT, "tc_premium_settings", 0, "context.getSharedPrefere…ME, Context.MODE_PRIVATE)"));
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: C2 */
    public void mo16917C2(int i) {
        putInt("SPAM_TAB_PROMO_DISMISS_COUNT", i);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: G2 */
    public String mo16916G2() {
        return getString("KEY_HOME_TAB_PROMO_CAMPAIGN_NAME");
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: H0 */
    public void mo16915H0(boolean z) {
        putBoolean("showReselectPaymentDisclaimer", z);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: I1 */
    public int mo16914I1() {
        return getInt("KEY_HOME_TAB_PROMO_CAMPAIGN_DISMISSED_COUNT", 0);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: K1 */
    public String mo16913K1() {
        return getString("newFeatureSplatRecentlyDismissed");
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: L2 */
    public void mo16912L2(long j) {
        putLong("KEY_HOME_TAB_PROMO_GENERIC_DISMISSED", j);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: M1 */
    public long mo16911M1() {
        return getLong("SPAM_TAB_PROMO_LAST_DISMISSED", 0L);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: N2 */
    public void mo16910N2(int i) {
        putInt("FRIEND_UPGRADED_PROMO_COUNT", i);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: O */
    public void mo16909O(boolean z) {
        putBoolean("KEY_IS_GOLD_PURCHASED_WITH_GIFT_PROMO", z);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: P2 */
    public boolean mo16908P2() {
        return getBoolean("isWebPurchasePendingStateChanged", false);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: Q0 */
    public void mo16907Q0(String str) {
        putString("FRIEND_UPGRADED_PROMO_IDS", str);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: Q2 */
    public void mo16906Q2(long j) {
        putLong("ACS_SPAMMER_PROMO_LAST_SHOWN", j);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: T0 */
    public long mo16905T0() {
        return getLong("KEY_TEMPORARY_PROMO_CARD_MARK_DISMISSED", 0L);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: U */
    public boolean mo16904U() {
        return getBoolean("KEY_IS_PROMOTION_AVAILABLE");
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: U2 */
    public long mo16903U2() {
        return getLong("KEY_HOME_TAB_PROMO_CAMPAIGN_DISMISSED", 0L);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: V1 */
    public void mo16902V1(String str) {
        putString("KEY_HOME_TAB_PROMO_CAMPAIGN_NAME", str);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: W */
    public String mo16901W() {
        return getString("FRIEND_UPGRADED_PROMO_IDS");
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: X0 */
    public void mo16900X0(boolean z) {
        putBoolean("KEY_IS_PROMOTION_AVAILABLE", z);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: Y2 */
    public int mo16899Y2() {
        return getInt("premiumTabAnimationLastShown", -1);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: Z */
    public boolean mo16898Z() {
        return getBoolean("KEY_IS_WINBACK_GOLD_PRODUCT_PRESENT", false);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: a0 */
    public void mo16897a0(int i) {
        putInt("KEY_HOME_TAB_PROMO_CAMPAIGN_DISMISSED_COUNT", i);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: a2 */
    public boolean mo16896a2() {
        return getBoolean("showReselectPaymentDisclaimer", false);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: b0 */
    public void mo16895b0(int i) {
        putInt("KEY_HOME_TAB_PROMO_GENERIC_DISMISSED_COUNT", i);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: b1 */
    public void mo16894b1(boolean z) {
        putBoolean("KEY_IS_GOLD_GIFT_SENT", z);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: b2 */
    public void mo16893b2(boolean z) {
        putBoolean("KEY_FIRST_APP_OPEN_31778_EVENT_LOGGED", z);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: b3 */
    public void mo16892b3(boolean z) {
        putBoolean("KEY_IS_WINBACK_GOLD_PRODUCT_PRESENT", z);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: c0 */
    public void mo16891c0(String str) {
        putString("newFeatureSplatRecentlyDismissed", str);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: c1 */
    public long mo16890c1() {
        return getLong("ACS_SPAMMER_PROMO_LAST_SHOWN", 0L);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: c2 */
    public void mo16889c2(long j) {
        putLong("KEY_HOME_TAB_PROMO_CAMPAIGN_DISMISSED", j);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    public void clear() {
        for (String str : i.T(new String[]{"KEY_IS_WINBACK_PRODUCT_PRESENT", "KEY_IS_WINBACK_GOLD_PRODUCT_PRESENT", "SPAM_TAB_PROMO_DISMISS_COUNT", "SPAM_TAB_PROMO_LAST_DISMISSED", "ACS_SPAMMER_PROMO_LAST_SHOWN", "FRIEND_UPGRADED_PROMO_COUNT", "FRIEND_UPGRADED_PROMO_IDS", "KEY_IS_PROMOTION_AVAILABLE", "KEY_BOTTOM_BAR_ATTENTION_MARK_DISMISSED", "KEY_HOME_TAB_PROMO_GENERIC_DISMISSED", "KEY_HOME_TAB_PROMO_GENERIC_DISMISSED_COUNT", "KEY_HOME_TAB_PROMO_CAMPAIGN_NAME", "KEY_HOME_TAB_PROMO_CAMPAIGN_DISMISSED", "KEY_HOME_TAB_PROMO_CAMPAIGN_DISMISSED_COUNT", "KEY_FIRST_APP_OPEN_31778_EVENT_LOGGED", "KEY_IS_GOLD_GIFT_SENT", "KEY_IS_GOLD_PURCHASED_WITH_GIFT_PROMO", "KEY_CARD_DISMISS_CACHE", "KEY_TEMPORARY_PROMO_CARD_MARK_DISMISSED", "newFeatureSplatRecentlyDismissed", "showReselectPaymentDisclaimer", "isWebPurchasePendingStateChanged"})) {
            remove(str);
        }
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: e1 */
    public int mo16888e1() {
        return getInt("SPAM_TAB_PROMO_DISMISS_COUNT", 0);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: e3 */
    public boolean mo16887e3() {
        return getBoolean("KEY_IS_GOLD_GIFT_SENT");
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: f0 */
    public long mo16886f0() {
        return getLong("KEY_HOME_TAB_PROMO_GENERIC_DISMISSED", 0L);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: g0 */
    public void mo16885g0(long j) {
        putLong("premiumTabAnimationShownForPurchaseTime", j);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: i1 */
    public int mo16884i1() {
        return getInt("FRIEND_UPGRADED_PROMO_COUNT", 0);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: i2 */
    public long mo16883i2() {
        return getLong("KEY_BOTTOM_BAR_ATTENTION_MARK_DISMISSED", 0L);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: i3 */
    public void mo16882i3(long j) {
        putLong("KEY_BOTTOM_BAR_ATTENTION_MARK_DISMISSED", j);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: j1 */
    public void mo16881j1(long j) {
        putLong("SPAM_TAB_PROMO_LAST_DISMISSED", j);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: j2 */
    public boolean mo16880j2() {
        return getBoolean("KEY_FIRST_APP_OPEN_31778_EVENT_LOGGED");
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: j3 */
    public int mo8946j3() {
        return this.f47255b;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        return this.f47256c;
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: n2 */
    public boolean mo16879n2() {
        return getBoolean("KEY_IS_GOLD_PURCHASED_WITH_GIFT_PROMO");
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    public void mo8944o3(int i, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        if (i < 1) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("tc_premium_state_settings", 0);
            l.d(sharedPreferences, "premiumStateSetting");
            m13469l3(sharedPreferences, i.y0("premiumTabAnimationLastShown"), true);
        }
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: t */
    public void mo16878t(String str) {
        l.e(str, "value");
        putString("KEY_CARD_DISMISS_CACHE", str);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: t0 */
    public int mo16877t0() {
        return getInt("KEY_HOME_TAB_PROMO_GENERIC_DISMISSED_COUNT", 0);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: t1 */
    public boolean mo16876t1() {
        return getBoolean("KEY_IS_WINBACK_PRODUCT_PRESENT", false);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: u2 */
    public void mo16875u2(boolean z) {
        putBoolean("KEY_IS_WINBACK_PRODUCT_PRESENT", z);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: v */
    public long mo16874v() {
        return getLong("premiumTabAnimationShownForPurchaseTime", 0L);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: v0 */
    public void mo16873v0(long j) {
        putLong("KEY_TEMPORARY_PROMO_CARD_MARK_DISMISSED", j);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: x1 */
    public void mo16872x1(int i) {
        putInt("premiumTabAnimationLastShown", i);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: y0 */
    public void mo16871y0(boolean z) {
        putBoolean("isWebPurchasePendingStateChanged", z);
    }

    @Override // p193e.p194a.p1011l.AbstractC16832c2
    /* renamed from: y2 */
    public String mo16870y2() {
        return getString("KEY_CARD_DISMISS_CACHE", "");
    }
}

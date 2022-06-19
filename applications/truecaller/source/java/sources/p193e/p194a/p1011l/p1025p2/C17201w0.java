package p193e.p194a.p1011l.p1025p2;

import android.content.Context;
import android.content.SharedPreferences;
import com.razorpay.AnalyticsConstants;
import com.truecaller.premium.data.PremiumScope;
import com.truecaller.premium.data.ProductKind;
import com.truecaller.premium.provider.Store;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import s1.u.i;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.l.p2.w0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/w0.class */
public final class C17201w0 extends AbstractC19316a implements AbstractC17197v0 {

    /* renamed from: b */
    public final int f48275b = 2;

    /* renamed from: c */
    public final String f48276c = "tc_premium_state_settings";

    @Inject
    public C17201w0(Context context) {
        super(C22128a.m8731B0(context, AnalyticsConstants.CONTEXT, "tc_premium_state_settings", 0, "context.getSharedPrefere…ME, Context.MODE_PRIVATE)"));
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17197v0
    /* renamed from: A0 */
    public String mo16414A0() {
        return getString("purchaseToken");
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17197v0
    /* renamed from: B */
    public boolean mo16413B() {
        return getBoolean("premiumHadPremiumBefore", false);
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17197v0
    /* renamed from: C */
    public boolean mo16412C() {
        return !contains("premiumLastFetchDate") || !contains("premiumLevel") || !contains("premiumKind");
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17197v0
    /* renamed from: D2 */
    public String mo16411D2() {
        if (!mo16408H()) {
            return "none";
        }
        String string = getString("premiumLevel", "none");
        String str = string;
        if (mo16408H()) {
            str = string;
            if (l.a(string, "none")) {
                str = "regular";
            }
        }
        return str;
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17197v0
    /* renamed from: E1 */
    public void mo16410E1(String str) {
        l.e(str, "value");
        putString("webPurchaseReport", str);
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17197v0
    /* renamed from: G1 */
    public long mo16409G1() {
        return getLong("premiumGraceExpiration", 0L);
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17197v0
    /* renamed from: H */
    public boolean mo16408H() {
        return !getBoolean("isPremiumExpired", true);
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17197v0
    /* renamed from: H2 */
    public ProductKind mo16407H2() {
        ProductKind productKind;
        try {
            productKind = ProductKind.Companion.m34822a(getString("premiumKind", ""));
        } catch (Exception e) {
            productKind = ProductKind.NONE;
        }
        return productKind;
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17197v0
    /* renamed from: M */
    public boolean mo16406M() {
        return getBoolean("isWebPurchaseSuccessful", false);
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17197v0
    /* renamed from: M2 */
    public long mo16405M2() {
        return getLong("webPurchaseTimestamp", 0L);
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17197v0
    /* renamed from: P */
    public int mo16404P() {
        int i = 0;
        if (contains("premiumRenewable")) {
            i = getBoolean("premiumRenewable", false) ? 1 : 2;
        }
        return i;
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17197v0
    /* renamed from: R1 */
    public boolean mo16403R1() {
        boolean z = false;
        if (getBoolean("isInGracePeriod", false)) {
            z = false;
            if (!getBoolean("isPremiumExpired", true)) {
                z = true;
            }
        }
        return z;
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17197v0
    /* renamed from: X */
    public void mo16402X(boolean z) {
        putBoolean("isWebPurchaseSuccessful", z);
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17197v0
    /* renamed from: X1 */
    public void mo16401X1(long j) {
        putLong("webPurchaseTimestamp", j);
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17197v0
    public void clear() {
        for (String str : i.T(new String[]{"isPremiumExpired", "premiumExpiresTimestamp", "premiumGraceExpiration", "premiumHadPremiumBefore", "premiumLevel", "premiumLastFetchDate", "premiumKind", "premiumRenewable", "premiumScope", "purchaseToken", "isInGracePeriod", "isInAppPurchaseAllowed", "paymentProvider", "webPurchaseTimestamp", "isWebPurchaseSuccessful", "webPurchaseReport", "isTruecallerAssistantSubscribed", "availableFeatures"})) {
            remove(str);
        }
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17197v0
    /* renamed from: d0 */
    public String mo16400d0() {
        return getString("webPurchaseReport", "");
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17197v0
    /* renamed from: f1 */
    public void mo16399f1(String str) {
        putString("availableFeatures", str);
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17197v0
    /* renamed from: f2 */
    public void mo16398f2(boolean z) {
        putBoolean("isTruecallerAssistantSubscribed", z);
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17197v0
    public String getAvailableFeatures() {
        return getString("availableFeatures");
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17197v0
    /* renamed from: h3 */
    public boolean mo16397h3() {
        return getBoolean("isTruecallerAssistantSubscribed", false);
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17197v0
    /* renamed from: i0 */
    public void mo16396i0(String str) {
        putString("purchaseToken", str);
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: j3 */
    public int mo8946j3() {
        return this.f48275b;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        return this.f48276c;
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17197v0
    /* renamed from: n */
    public C17194u0 mo16395n() {
        return new C17194u0(mo16408H(), mo16411D2(), mo16407H2());
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17197v0
    /* renamed from: o */
    public void mo16394o(C17203x c17203x) {
        l.e(c17203x, "premium");
        if (c17203x.f48290j) {
            if (contains("premiumExpiresTimestamp")) {
                putBoolean("premiumHadPremiumBefore", true);
            }
            remove("premiumExpiresTimestamp");
        } else {
            putLong("premiumExpiresTimestamp", c17203x.f48281a);
        }
        putBoolean("isPremiumExpired", c17203x.f48290j);
        putBoolean("isInGracePeriod", c17203x.f48291k);
        putLong("premiumGraceExpiration", c17203x.f48283c);
        String str = c17203x.f48287g;
        l.e(str, "value");
        putString("premiumLevel", str);
        b bVar = new b();
        l.d(bVar, "DateTime.now()");
        putLong("premiumLastFetchDate", ((e) bVar).a);
        ProductKind productKind = c17203x.f48288h;
        l.e(productKind, "value");
        putString("premiumKind", productKind.getKind());
        putBoolean("premiumRenewable", c17203x.f48284d == 1);
        PremiumScope premiumScope = c17203x.f48289i;
        l.e(premiumScope, "value");
        putString("premiumScope", premiumScope.getScope());
        putLong("purchaseTime", c17203x.f48282b);
        if (!(!c17203x.f48290j) || !c17203x.f48292l) {
            putString("purchaseToken", null);
        }
        putBoolean("isInAppPurchaseAllowed", c17203x.f48292l);
        Store store = c17203x.f48293m;
        l.e(store, "value");
        putString("paymentProvider", store.getProviderName());
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    public void mo8944o3(int i, Context context) {
        boolean z;
        l.e(context, AnalyticsConstants.CONTEXT);
        if (i < 1) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("core_settings", 0);
            SharedPreferences sharedPreferences2 = context.getSharedPreferences("tc.settings", 0);
            l.d(sharedPreferences, "coreSettings");
            AbstractC19316a.m13468m3(this, sharedPreferences, i.z0(new String[]{"isPremiumExpired", "isPremiumGracePeriodExpired", "premiumExpiresTimestamp", "premiumHadPremiumBefore", "premiumLastFetchDate", "premiumScope"}), false, 4, null);
            l.d(sharedPreferences2, "oldTcSettings");
            AbstractC19316a.m13468m3(this, sharedPreferences2, i.z0(new String[]{"premiumGraceExpiration", "premiumLevel", "premiumKind", "premiumRenewable"}), false, 4, null);
            if (!contains("isPremiumExpired") && !contains("isPremiumGracePeriodExpired") && !contains("premiumExpiresTimestamp")) {
                long j = getLong("premiumGraceExpiration", 0L);
                b bVar = new b();
                l.d(bVar, "DateTime.now()");
                putBoolean("isInGracePeriod", j > ((e) bVar).a);
                long j2 = sharedPreferences.getLong("premiumDuration", 0L) * 1000;
                long j3 = sharedPreferences2.getLong("premiumTimestamp", 0L);
                putLong("premiumExpiresTimestamp", j3 + j2);
                if (j2 > 0) {
                    b bVar2 = new b();
                    l.d(bVar2, "DateTime.now()");
                    if (((e) bVar2).a - j3 <= j2) {
                        z = false;
                        putBoolean("isPremiumExpired", z);
                    }
                }
                z = true;
                putBoolean("isPremiumExpired", z);
            }
        }
        if (i < 2) {
            remove("isPremiumGracePeriodExpired");
        }
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17197v0
    /* renamed from: s */
    public void mo16393s() {
        remove("premiumHadPremiumBefore");
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17197v0
    /* renamed from: s1 */
    public boolean mo16392s1() {
        return getBoolean("isInAppPurchaseAllowed", true);
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17197v0
    /* renamed from: w0 */
    public long mo16391w0() {
        return getLong("premiumExpiresTimestamp", 0L);
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17197v0
    /* renamed from: x */
    public long mo16390x() {
        return getLong("purchaseTime", 0L);
    }
}

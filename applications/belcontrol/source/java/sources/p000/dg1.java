package p000;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Preconditions;
import com.mopub.common.SharedPreferencesHelper;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.privacy.ConsentData;
import com.mopub.common.privacy.ConsentStatus;
import java.util.Locale;
/* renamed from: dg1 */
/* loaded from: classes3-dex2jar.jar:dg1.class */
public class dg1 implements ConsentData {

    /* renamed from: a */
    public final Context f5844a;

    /* renamed from: c */
    public String f5846c;

    /* renamed from: e */
    public ConsentStatus f5848e;

    /* renamed from: f */
    public String f5849f;

    /* renamed from: g */
    public boolean f5850g;

    /* renamed from: h */
    public String f5851h;

    /* renamed from: i */
    public String f5852i;

    /* renamed from: j */
    public ConsentStatus f5853j;

    /* renamed from: k */
    public boolean f5854k;

    /* renamed from: l */
    public String f5855l;

    /* renamed from: m */
    public String f5856m;

    /* renamed from: n */
    public String f5857n;

    /* renamed from: o */
    public String f5858o;

    /* renamed from: p */
    public String f5859p;

    /* renamed from: q */
    public String f5860q;

    /* renamed from: r */
    public String f5861r;

    /* renamed from: s */
    public String f5862s;

    /* renamed from: t */
    public String f5863t;

    /* renamed from: u */
    public String f5864u;

    /* renamed from: v */
    public boolean f5865v;

    /* renamed from: w */
    public Boolean f5866w;

    /* renamed from: d */
    public ConsentStatus f5847d = ConsentStatus.UNKNOWN;

    /* renamed from: b */
    public String f5845b = "";

    public dg1(Context context) {
        Preconditions.checkNotNull(context);
        this.f5844a = context.getApplicationContext();
        m2667k();
    }

    /* renamed from: J */
    public static String m2679J(Context context, String str) {
        String[] iSOLanguages;
        Preconditions.checkNotNull(context);
        for (String str2 : Locale.getISOLanguages()) {
            if (str2 != null && str2.equals(str)) {
                return str;
            }
        }
        return ClientMetadata.getCurrentLanguage(context);
    }

    @VisibleForTesting
    /* renamed from: m */
    public static String m2665m(String str, Context context, String str2) {
        Preconditions.checkNotNull(context);
        return TextUtils.isEmpty(str) ? "" : str.replaceAll("%%LANGUAGE%%", m2679J(context, str2));
    }

    /* renamed from: A */
    public void m2688A(String str) {
        this.f5855l = str;
    }

    /* renamed from: B */
    public void m2687B(boolean z) {
        this.f5850g = z;
    }

    /* renamed from: C */
    public void m2686C(Boolean bool) {
        this.f5866w = bool;
    }

    /* renamed from: D */
    public void m2685D(String str) {
        this.f5851h = str;
    }

    /* renamed from: E */
    public void m2684E(String str) {
        this.f5852i = str;
    }

    /* renamed from: F */
    public void m2683F(ConsentStatus consentStatus) {
        this.f5848e = consentStatus;
    }

    /* renamed from: G */
    public void m2682G(boolean z) {
        this.f5865v = z;
    }

    /* renamed from: H */
    public void m2681H(boolean z) {
        this.f5854k = z;
    }

    /* renamed from: I */
    public boolean m2680I() {
        return this.f5865v;
    }

    /* renamed from: K */
    public void m2678K() {
        SharedPreferences.Editor edit = SharedPreferencesHelper.getSharedPreferences(this.f5844a, "com.mopub.privacy").edit();
        edit.putString("info/adunit", this.f5845b);
        edit.putString("info/cached_last_ad_unit_id_used_for_init", this.f5846c);
        edit.putString("info/consent_status", this.f5847d.name());
        ConsentStatus consentStatus = this.f5848e;
        edit.putString("info/last_successfully_synced_consent_status", consentStatus == null ? null : consentStatus.name());
        edit.putBoolean("info/is_whitelisted", this.f5854k);
        edit.putString("info/current_vendor_list_version", this.f5855l);
        edit.putString("info/current_vendor_list_link", this.f5856m);
        edit.putString("info/current_privacy_policy_version", this.f5857n);
        edit.putString("info/current_privacy_policy_link", this.f5858o);
        edit.putString("info/current_vendor_list_iab_format", this.f5859p);
        edit.putString("info/current_vendor_list_iab_hash", this.f5860q);
        edit.putString("info/consented_vendor_list_version", this.f5861r);
        edit.putString("info/consented_privacy_policy_version", this.f5862s);
        edit.putString("info/consented_vendor_list_iab_format", this.f5863t);
        edit.putString("info/extras", this.f5864u);
        edit.putString("info/consent_change_reason", this.f5849f);
        edit.putBoolean("info/reacquire_consent", this.f5865v);
        Boolean bool = this.f5866w;
        edit.putString("info/gdpr_applies", bool == null ? null : bool.toString());
        edit.putBoolean("info/force_gdpr_applies", this.f5850g);
        edit.putString("info/ifa", this.f5851h);
        edit.putString("info/last_changed_ms", this.f5852i);
        ConsentStatus consentStatus2 = this.f5853j;
        edit.putString("info/consent_status_before_dnt", consentStatus2 == null ? null : consentStatus2.name());
        edit.apply();
    }

    /* renamed from: a */
    public String m2677a() {
        return this.f5845b;
    }

    /* renamed from: b */
    public String m2676b() {
        return this.f5846c;
    }

    /* renamed from: c */
    public String m2675c() {
        return this.f5849f;
    }

    @Override // com.mopub.common.privacy.ConsentData
    public String chooseAdUnit() {
        String str = this.f5845b;
        return !TextUtils.isEmpty(str) ? str : this.f5846c;
    }

    /* renamed from: d */
    public ConsentStatus m2674d() {
        return this.f5847d;
    }

    /* renamed from: e */
    public ConsentStatus m2673e() {
        return this.f5853j;
    }

    /* renamed from: f */
    public String m2672f() {
        return this.f5860q;
    }

    /* renamed from: g */
    public Boolean m2671g() {
        return this.f5866w;
    }

    @Override // com.mopub.common.privacy.ConsentData
    public String getConsentedPrivacyPolicyVersion() {
        return this.f5862s;
    }

    @Override // com.mopub.common.privacy.ConsentData
    public String getConsentedVendorListIabFormat() {
        return this.f5863t;
    }

    @Override // com.mopub.common.privacy.ConsentData
    public String getConsentedVendorListVersion() {
        return this.f5861r;
    }

    @Override // com.mopub.common.privacy.ConsentData
    public String getCurrentPrivacyPolicyLink() {
        return getCurrentPrivacyPolicyLink(null);
    }

    @Override // com.mopub.common.privacy.ConsentData
    public String getCurrentPrivacyPolicyLink(String str) {
        return m2665m(this.f5858o, this.f5844a, str);
    }

    @Override // com.mopub.common.privacy.ConsentData
    public String getCurrentPrivacyPolicyVersion() {
        return this.f5857n;
    }

    @Override // com.mopub.common.privacy.ConsentData
    public String getCurrentVendorListIabFormat() {
        return this.f5859p;
    }

    @Override // com.mopub.common.privacy.ConsentData
    public String getCurrentVendorListLink() {
        return getCurrentVendorListLink(null);
    }

    @Override // com.mopub.common.privacy.ConsentData
    public String getCurrentVendorListLink(String str) {
        return m2665m(this.f5856m, this.f5844a, str);
    }

    @Override // com.mopub.common.privacy.ConsentData
    public String getCurrentVendorListVersion() {
        return this.f5855l;
    }

    public String getExtras() {
        return this.f5864u;
    }

    /* renamed from: h */
    public String m2670h() {
        return this.f5851h;
    }

    /* renamed from: i */
    public String m2669i() {
        return this.f5852i;
    }

    @Override // com.mopub.common.privacy.ConsentData
    public boolean isForceGdprApplies() {
        return this.f5850g;
    }

    /* renamed from: j */
    public ConsentStatus m2668j() {
        return this.f5848e;
    }

    /* renamed from: k */
    public final void m2667k() {
        SharedPreferences sharedPreferences = SharedPreferencesHelper.getSharedPreferences(this.f5844a, "com.mopub.privacy");
        this.f5845b = sharedPreferences.getString("info/adunit", "");
        this.f5846c = sharedPreferences.getString("info/cached_last_ad_unit_id_used_for_init", null);
        this.f5847d = ConsentStatus.fromString(sharedPreferences.getString("info/consent_status", ConsentStatus.UNKNOWN.name()));
        String string = sharedPreferences.getString("info/last_successfully_synced_consent_status", null);
        if (TextUtils.isEmpty(string)) {
            this.f5848e = null;
        } else {
            this.f5848e = ConsentStatus.fromString(string);
        }
        this.f5854k = sharedPreferences.getBoolean("info/is_whitelisted", false);
        this.f5855l = sharedPreferences.getString("info/current_vendor_list_version", null);
        this.f5856m = sharedPreferences.getString("info/current_vendor_list_link", null);
        this.f5857n = sharedPreferences.getString("info/current_privacy_policy_version", null);
        this.f5858o = sharedPreferences.getString("info/current_privacy_policy_link", null);
        this.f5859p = sharedPreferences.getString("info/current_vendor_list_iab_format", null);
        this.f5860q = sharedPreferences.getString("info/current_vendor_list_iab_hash", null);
        this.f5861r = sharedPreferences.getString("info/consented_vendor_list_version", null);
        this.f5862s = sharedPreferences.getString("info/consented_privacy_policy_version", null);
        this.f5863t = sharedPreferences.getString("info/consented_vendor_list_iab_format", null);
        this.f5864u = sharedPreferences.getString("info/extras", null);
        this.f5849f = sharedPreferences.getString("info/consent_change_reason", null);
        this.f5865v = sharedPreferences.getBoolean("info/reacquire_consent", false);
        String string2 = sharedPreferences.getString("info/gdpr_applies", null);
        if (TextUtils.isEmpty(string2)) {
            this.f5866w = null;
        } else {
            this.f5866w = Boolean.valueOf(Boolean.parseBoolean(string2));
        }
        this.f5850g = sharedPreferences.getBoolean("info/force_gdpr_applies", false);
        String string3 = sharedPreferences.getString("info/udid", null);
        if (!TextUtils.isEmpty(string3)) {
            this.f5851h = string3.replace("ifa:", "");
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putString("info/ifa", this.f5851h);
            edit.remove("info/udid");
            edit.apply();
        } else {
            this.f5851h = sharedPreferences.getString("info/ifa", null);
        }
        this.f5852i = sharedPreferences.getString("info/last_changed_ms", null);
        String string4 = sharedPreferences.getString("info/consent_status_before_dnt", null);
        if (TextUtils.isEmpty(string4)) {
            this.f5853j = null;
        } else {
            this.f5853j = ConsentStatus.fromString(string4);
        }
    }

    /* renamed from: l */
    public boolean m2666l() {
        return this.f5854k;
    }

    /* renamed from: n */
    public void m2664n(String str) {
        this.f5845b = str;
    }

    /* renamed from: o */
    public void m2663o(String str) {
        this.f5846c = str;
    }

    /* renamed from: p */
    public void m2662p(String str) {
        this.f5849f = str;
    }

    /* renamed from: q */
    public void m2661q(ConsentStatus consentStatus) {
        this.f5847d = consentStatus;
    }

    /* renamed from: r */
    public void m2660r(ConsentStatus consentStatus) {
        this.f5853j = consentStatus;
    }

    /* renamed from: s */
    public void m2659s(String str) {
        this.f5862s = str;
    }

    public void setExtras(String str) {
        this.f5864u = str;
    }

    /* renamed from: t */
    public void m2658t(String str) {
        this.f5863t = str;
    }

    /* renamed from: u */
    public void m2657u(String str) {
        this.f5861r = str;
    }

    /* renamed from: v */
    public void m2656v(String str) {
        this.f5858o = str;
    }

    /* renamed from: w */
    public void m2655w(String str) {
        this.f5857n = str;
    }

    /* renamed from: x */
    public void m2654x(String str) {
        this.f5859p = str;
    }

    /* renamed from: y */
    public void m2653y(String str) {
        this.f5860q = str;
    }

    /* renamed from: z */
    public void m2652z(String str) {
        this.f5856m = str;
    }
}

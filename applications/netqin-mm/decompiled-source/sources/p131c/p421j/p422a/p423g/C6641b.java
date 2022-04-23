package p131c.p421j.p422a.p423g;

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
/* renamed from: c.j.a.g.b */
/* loaded from: classes2-dex2jar.jar:c/j/a/g/b.class */
public class C6641b implements ConsentData {

    /* renamed from: a */
    public final Context f20490a;

    /* renamed from: c */
    public String f20492c;

    /* renamed from: e */
    public ConsentStatus f20494e;

    /* renamed from: f */
    public String f20495f;

    /* renamed from: g */
    public boolean f20496g;

    /* renamed from: h */
    public String f20497h;

    /* renamed from: i */
    public String f20498i;

    /* renamed from: j */
    public ConsentStatus f20499j;

    /* renamed from: k */
    public boolean f20500k;

    /* renamed from: l */
    public String f20501l;

    /* renamed from: m */
    public String f20502m;

    /* renamed from: n */
    public String f20503n;

    /* renamed from: o */
    public String f20504o;

    /* renamed from: p */
    public String f20505p;

    /* renamed from: q */
    public String f20506q;

    /* renamed from: r */
    public String f20507r;

    /* renamed from: s */
    public String f20508s;

    /* renamed from: t */
    public String f20509t;

    /* renamed from: u */
    public String f20510u;

    /* renamed from: v */
    public boolean f20511v;

    /* renamed from: w */
    public Boolean f20512w;

    /* renamed from: d */
    public ConsentStatus f20493d = ConsentStatus.UNKNOWN;

    /* renamed from: b */
    public String f20491b = "";

    public C6641b(Context context) {
        Preconditions.checkNotNull(context);
        this.f20490a = context.getApplicationContext();
        m20225k();
    }

    /* renamed from: a */
    public static String m20253a(Context context, String str) {
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
    /* renamed from: a */
    public static String m20249a(String str, Context context, String str2) {
        Preconditions.checkNotNull(context);
        return TextUtils.isEmpty(str) ? "" : str.replaceAll("%%LANGUAGE%%", m20253a(context, str2));
    }

    /* renamed from: a */
    public String m20254a() {
        String str = this.f20491b;
        return !TextUtils.isEmpty(str) ? str : this.f20492c;
    }

    /* renamed from: a */
    public void m20252a(ConsentStatus consentStatus) {
        this.f20493d = consentStatus;
    }

    /* renamed from: a */
    public void m20251a(Boolean bool) {
        this.f20512w = bool;
    }

    /* renamed from: a */
    public void m20250a(String str) {
        this.f20491b = str;
    }

    /* renamed from: a */
    public void m20248a(boolean z) {
        this.f20496g = z;
    }

    /* renamed from: b */
    public String m20247b() {
        return this.f20491b;
    }

    /* renamed from: b */
    public void m20246b(ConsentStatus consentStatus) {
        this.f20499j = consentStatus;
    }

    /* renamed from: b */
    public void m20245b(String str) {
        this.f20492c = str;
    }

    /* renamed from: b */
    public void m20244b(boolean z) {
        this.f20511v = z;
    }

    /* renamed from: c */
    public String m20243c() {
        return this.f20492c;
    }

    /* renamed from: c */
    public void m20242c(ConsentStatus consentStatus) {
        this.f20494e = consentStatus;
    }

    /* renamed from: c */
    public void m20241c(String str) {
        this.f20495f = str;
    }

    /* renamed from: c */
    public void m20240c(boolean z) {
        this.f20500k = z;
    }

    /* renamed from: d */
    public String m20239d() {
        return this.f20495f;
    }

    /* renamed from: d */
    public void m20238d(String str) {
        this.f20508s = str;
    }

    /* renamed from: e */
    public ConsentStatus m20237e() {
        return this.f20493d;
    }

    /* renamed from: e */
    public void m20236e(String str) {
        this.f20509t = str;
    }

    /* renamed from: f */
    public ConsentStatus m20235f() {
        return this.f20499j;
    }

    /* renamed from: f */
    public void m20234f(String str) {
        this.f20507r = str;
    }

    /* renamed from: g */
    public String m20233g() {
        return this.f20506q;
    }

    /* renamed from: g */
    public void m20232g(String str) {
        this.f20504o = str;
    }

    @Override // com.mopub.common.privacy.ConsentData
    public String getConsentedPrivacyPolicyVersion() {
        return this.f20508s;
    }

    public String getConsentedVendorListIabFormat() {
        return this.f20509t;
    }

    @Override // com.mopub.common.privacy.ConsentData
    public String getConsentedVendorListVersion() {
        return this.f20507r;
    }

    public String getCurrentPrivacyPolicyLink() {
        return getCurrentPrivacyPolicyLink(null);
    }

    public String getCurrentPrivacyPolicyLink(String str) {
        return m20249a(this.f20504o, this.f20490a, str);
    }

    public String getCurrentPrivacyPolicyVersion() {
        return this.f20503n;
    }

    public String getCurrentVendorListIabFormat() {
        return this.f20505p;
    }

    public String getCurrentVendorListLink() {
        return getCurrentVendorListLink(null);
    }

    public String getCurrentVendorListLink(String str) {
        return m20249a(this.f20502m, this.f20490a, str);
    }

    public String getCurrentVendorListVersion() {
        return this.f20501l;
    }

    public String getExtras() {
        return this.f20510u;
    }

    /* renamed from: h */
    public Boolean m20231h() {
        return this.f20512w;
    }

    /* renamed from: h */
    public void m20230h(String str) {
        this.f20503n = str;
    }

    /* renamed from: i */
    public String m20229i() {
        return this.f20498i;
    }

    /* renamed from: i */
    public void m20228i(String str) {
        this.f20505p = str;
    }

    @Override // com.mopub.common.privacy.ConsentData
    public boolean isForceGdprApplies() {
        return this.f20496g;
    }

    /* renamed from: j */
    public ConsentStatus m20227j() {
        return this.f20494e;
    }

    /* renamed from: j */
    public void m20226j(String str) {
        this.f20506q = str;
    }

    /* renamed from: k */
    public final void m20225k() {
        SharedPreferences sharedPreferences = SharedPreferencesHelper.getSharedPreferences(this.f20490a, "com.mopub.privacy");
        this.f20491b = sharedPreferences.getString("info/adunit", "");
        this.f20492c = sharedPreferences.getString("info/cached_last_ad_unit_id_used_for_init", null);
        this.f20493d = ConsentStatus.fromString(sharedPreferences.getString("info/consent_status", ConsentStatus.UNKNOWN.name()));
        String string = sharedPreferences.getString("info/last_successfully_synced_consent_status", null);
        if (TextUtils.isEmpty(string)) {
            this.f20494e = null;
        } else {
            this.f20494e = ConsentStatus.fromString(string);
        }
        this.f20500k = sharedPreferences.getBoolean("info/is_whitelisted", false);
        this.f20501l = sharedPreferences.getString("info/current_vendor_list_version", null);
        this.f20502m = sharedPreferences.getString("info/current_vendor_list_link", null);
        this.f20503n = sharedPreferences.getString("info/current_privacy_policy_version", null);
        this.f20504o = sharedPreferences.getString("info/current_privacy_policy_link", null);
        this.f20505p = sharedPreferences.getString("info/current_vendor_list_iab_format", null);
        this.f20506q = sharedPreferences.getString("info/current_vendor_list_iab_hash", null);
        this.f20507r = sharedPreferences.getString("info/consented_vendor_list_version", null);
        this.f20508s = sharedPreferences.getString("info/consented_privacy_policy_version", null);
        this.f20509t = sharedPreferences.getString("info/consented_vendor_list_iab_format", null);
        this.f20510u = sharedPreferences.getString("info/extras", null);
        this.f20495f = sharedPreferences.getString("info/consent_change_reason", null);
        this.f20511v = sharedPreferences.getBoolean("info/reacquire_consent", false);
        String string2 = sharedPreferences.getString("info/gdpr_applies", null);
        if (TextUtils.isEmpty(string2)) {
            this.f20512w = null;
        } else {
            this.f20512w = Boolean.valueOf(Boolean.parseBoolean(string2));
        }
        this.f20496g = sharedPreferences.getBoolean("info/force_gdpr_applies", false);
        this.f20497h = sharedPreferences.getString("info/udid", null);
        this.f20498i = sharedPreferences.getString("info/last_changed_ms", null);
        String string3 = sharedPreferences.getString("info/consent_status_before_dnt", null);
        if (TextUtils.isEmpty(string3)) {
            this.f20499j = null;
        } else {
            this.f20499j = ConsentStatus.fromString(string3);
        }
    }

    /* renamed from: k */
    public void m20224k(String str) {
        this.f20502m = str;
    }

    /* renamed from: l */
    public String m20223l() {
        return this.f20497h;
    }

    /* renamed from: l */
    public void m20222l(String str) {
        this.f20501l = str;
    }

    /* renamed from: m */
    public void m20220m(String str) {
        this.f20498i = str;
    }

    /* renamed from: m */
    public boolean m20221m() {
        return this.f20500k;
    }

    /* renamed from: n */
    public void m20218n(String str) {
        this.f20497h = str;
    }

    /* renamed from: n */
    public boolean m20219n() {
        return this.f20511v;
    }

    /* renamed from: o */
    public void m20217o() {
        SharedPreferences.Editor edit = SharedPreferencesHelper.getSharedPreferences(this.f20490a, "com.mopub.privacy").edit();
        edit.putString("info/adunit", this.f20491b);
        edit.putString("info/cached_last_ad_unit_id_used_for_init", this.f20492c);
        edit.putString("info/consent_status", this.f20493d.name());
        ConsentStatus consentStatus = this.f20494e;
        String str = null;
        edit.putString("info/last_successfully_synced_consent_status", consentStatus == null ? null : consentStatus.name());
        edit.putBoolean("info/is_whitelisted", this.f20500k);
        edit.putString("info/current_vendor_list_version", this.f20501l);
        edit.putString("info/current_vendor_list_link", this.f20502m);
        edit.putString("info/current_privacy_policy_version", this.f20503n);
        edit.putString("info/current_privacy_policy_link", this.f20504o);
        edit.putString("info/current_vendor_list_iab_format", this.f20505p);
        edit.putString("info/current_vendor_list_iab_hash", this.f20506q);
        edit.putString("info/consented_vendor_list_version", this.f20507r);
        edit.putString("info/consented_privacy_policy_version", this.f20508s);
        edit.putString("info/consented_vendor_list_iab_format", this.f20509t);
        edit.putString("info/extras", this.f20510u);
        edit.putString("info/consent_change_reason", this.f20495f);
        edit.putBoolean("info/reacquire_consent", this.f20511v);
        Boolean bool = this.f20512w;
        edit.putString("info/gdpr_applies", bool == null ? null : bool.toString());
        edit.putBoolean("info/force_gdpr_applies", this.f20496g);
        edit.putString("info/udid", this.f20497h);
        edit.putString("info/last_changed_ms", this.f20498i);
        ConsentStatus consentStatus2 = this.f20499j;
        if (consentStatus2 != null) {
            str = consentStatus2.name();
        }
        edit.putString("info/consent_status_before_dnt", str);
        edit.apply();
    }

    public void setExtras(String str) {
        this.f20510u = str;
    }
}

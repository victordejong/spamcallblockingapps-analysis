package com.mopub.common.privacy;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Preconditions;
import com.mopub.common.SharedPreferencesHelper;
import java.util.Locale;
/* renamed from: com.mopub.common.privacy.b */
/* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/b.class */
public final class C16744b implements ConsentData {

    /* renamed from: a */
    String f58986a;

    /* renamed from: b */
    String f58987b;

    /* renamed from: c */
    ConsentStatus f58988c;

    /* renamed from: d */
    ConsentStatus f58989d;

    /* renamed from: e */
    String f58990e;

    /* renamed from: f */
    boolean f58991f;

    /* renamed from: g */
    String f58992g;

    /* renamed from: h */
    String f58993h;

    /* renamed from: i */
    ConsentStatus f58994i;

    /* renamed from: j */
    boolean f58995j;

    /* renamed from: k */
    String f58996k;

    /* renamed from: l */
    String f58997l;

    /* renamed from: m */
    String f58998m;

    /* renamed from: n */
    String f58999n;

    /* renamed from: o */
    String f59000o;

    /* renamed from: p */
    String f59001p;

    /* renamed from: q */
    String f59002q;

    /* renamed from: r */
    String f59003r;

    /* renamed from: s */
    String f59004s;

    /* renamed from: t */
    boolean f59005t;

    /* renamed from: u */
    Boolean f59006u;

    /* renamed from: v */
    private final Context f59007v;

    /* renamed from: w */
    private String f59008w;

    public C16744b(Context context) {
        Preconditions.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        this.f59007v = applicationContext;
        this.f58988c = ConsentStatus.UNKNOWN;
        this.f58986a = "";
        SharedPreferences sharedPreferences = SharedPreferencesHelper.getSharedPreferences(applicationContext, "com.mopub.privacy");
        this.f58986a = sharedPreferences.getString("info/adunit", "");
        this.f58987b = sharedPreferences.getString("info/cached_last_ad_unit_id_used_for_init", null);
        this.f58988c = ConsentStatus.fromString(sharedPreferences.getString("info/consent_status", ConsentStatus.UNKNOWN.name()));
        String string = sharedPreferences.getString("info/last_successfully_synced_consent_status", null);
        if (TextUtils.isEmpty(string)) {
            this.f58989d = null;
        } else {
            this.f58989d = ConsentStatus.fromString(string);
        }
        this.f58995j = sharedPreferences.getBoolean("info/is_whitelisted", false);
        this.f58996k = sharedPreferences.getString("info/current_vendor_list_version", null);
        this.f58997l = sharedPreferences.getString("info/current_vendor_list_link", null);
        this.f58998m = sharedPreferences.getString("info/current_privacy_policy_version", null);
        this.f58999n = sharedPreferences.getString("info/current_privacy_policy_link", null);
        this.f59000o = sharedPreferences.getString("info/current_vendor_list_iab_format", null);
        this.f59001p = sharedPreferences.getString("info/current_vendor_list_iab_hash", null);
        this.f59002q = sharedPreferences.getString("info/consented_vendor_list_version", null);
        this.f59003r = sharedPreferences.getString("info/consented_privacy_policy_version", null);
        this.f59004s = sharedPreferences.getString("info/consented_vendor_list_iab_format", null);
        this.f59008w = sharedPreferences.getString("info/extras", null);
        this.f58990e = sharedPreferences.getString("info/consent_change_reason", null);
        this.f59005t = sharedPreferences.getBoolean("info/reacquire_consent", false);
        String string2 = sharedPreferences.getString("info/gdpr_applies", null);
        if (TextUtils.isEmpty(string2)) {
            this.f59006u = null;
        } else {
            this.f59006u = Boolean.valueOf(Boolean.parseBoolean(string2));
        }
        this.f58991f = sharedPreferences.getBoolean("info/force_gdpr_applies", false);
        String string3 = sharedPreferences.getString("info/udid", null);
        if (!TextUtils.isEmpty(string3)) {
            this.f58992g = string3.replace("ifa:", "");
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putString("info/ifa", this.f58992g);
            edit.remove("info/udid");
            edit.apply();
        } else {
            this.f58992g = sharedPreferences.getString("info/ifa", null);
        }
        this.f58993h = sharedPreferences.getString("info/last_changed_ms", null);
        String string4 = sharedPreferences.getString("info/consent_status_before_dnt", null);
        if (TextUtils.isEmpty(string4)) {
            this.f58994i = null;
        } else {
            this.f58994i = ConsentStatus.fromString(string4);
        }
    }

    /* renamed from: a */
    private static String m6623a(Context context, String str) {
        String[] iSOLanguages;
        Preconditions.checkNotNull(context);
        for (String str2 : Locale.getISOLanguages()) {
            if (str2 != null && str2.equals(str)) {
                return str;
            }
        }
        return ClientMetadata.getCurrentLanguage(context);
    }

    /* renamed from: a */
    private static String m6622a(String str, Context context, String str2) {
        Preconditions.checkNotNull(context);
        return TextUtils.isEmpty(str) ? "" : str.replaceAll("%%LANGUAGE%%", m6623a(context, str2));
    }

    /* renamed from: a */
    public final void m6624a() {
        SharedPreferences.Editor edit = SharedPreferencesHelper.getSharedPreferences(this.f59007v, "com.mopub.privacy").edit();
        edit.putString("info/adunit", this.f58986a);
        edit.putString("info/cached_last_ad_unit_id_used_for_init", this.f58987b);
        edit.putString("info/consent_status", this.f58988c.name());
        ConsentStatus consentStatus = this.f58989d;
        edit.putString("info/last_successfully_synced_consent_status", consentStatus == null ? null : consentStatus.name());
        edit.putBoolean("info/is_whitelisted", this.f58995j);
        edit.putString("info/current_vendor_list_version", this.f58996k);
        edit.putString("info/current_vendor_list_link", this.f58997l);
        edit.putString("info/current_privacy_policy_version", this.f58998m);
        edit.putString("info/current_privacy_policy_link", this.f58999n);
        edit.putString("info/current_vendor_list_iab_format", this.f59000o);
        edit.putString("info/current_vendor_list_iab_hash", this.f59001p);
        edit.putString("info/consented_vendor_list_version", this.f59002q);
        edit.putString("info/consented_privacy_policy_version", this.f59003r);
        edit.putString("info/consented_vendor_list_iab_format", this.f59004s);
        edit.putString("info/extras", this.f59008w);
        edit.putString("info/consent_change_reason", this.f58990e);
        edit.putBoolean("info/reacquire_consent", this.f59005t);
        Boolean bool = this.f59006u;
        edit.putString("info/gdpr_applies", bool == null ? null : bool.toString());
        edit.putBoolean("info/force_gdpr_applies", this.f58991f);
        edit.putString("info/ifa", this.f58992g);
        edit.putString("info/last_changed_ms", this.f58993h);
        ConsentStatus consentStatus2 = this.f58994i;
        edit.putString("info/consent_status_before_dnt", consentStatus2 == null ? null : consentStatus2.name());
        edit.apply();
    }

    @Override // com.mopub.common.privacy.ConsentData
    public final String chooseAdUnit() {
        String str = this.f58986a;
        return !TextUtils.isEmpty(str) ? str : this.f58987b;
    }

    @Override // com.mopub.common.privacy.ConsentData
    public final String getConsentedPrivacyPolicyVersion() {
        return this.f59003r;
    }

    @Override // com.mopub.common.privacy.ConsentData
    public final String getConsentedVendorListIabFormat() {
        return this.f59004s;
    }

    @Override // com.mopub.common.privacy.ConsentData
    public final String getConsentedVendorListVersion() {
        return this.f59002q;
    }

    @Override // com.mopub.common.privacy.ConsentData
    public final String getCurrentPrivacyPolicyLink() {
        return getCurrentPrivacyPolicyLink(null);
    }

    @Override // com.mopub.common.privacy.ConsentData
    public final String getCurrentPrivacyPolicyLink(String str) {
        return m6622a(this.f58999n, this.f59007v, str);
    }

    @Override // com.mopub.common.privacy.ConsentData
    public final String getCurrentPrivacyPolicyVersion() {
        return this.f58998m;
    }

    @Override // com.mopub.common.privacy.ConsentData
    public final String getCurrentVendorListIabFormat() {
        return this.f59000o;
    }

    @Override // com.mopub.common.privacy.ConsentData
    public final String getCurrentVendorListLink() {
        return getCurrentVendorListLink(null);
    }

    @Override // com.mopub.common.privacy.ConsentData
    public final String getCurrentVendorListLink(String str) {
        return m6622a(this.f58997l, this.f59007v, str);
    }

    @Override // com.mopub.common.privacy.ConsentData
    public final String getCurrentVendorListVersion() {
        return this.f58996k;
    }

    public final String getExtras() {
        return this.f59008w;
    }

    @Override // com.mopub.common.privacy.ConsentData
    public final boolean isForceGdprApplies() {
        return this.f58991f;
    }

    public final void setExtras(String str) {
        this.f59008w = str;
    }
}

package com.mopub.common.privacy;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Preconditions;
import com.mopub.common.SharedPreferencesHelper;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/b.class */
public final class b implements ConsentData {

    /* renamed from: a  reason: collision with root package name */
    String f33988a;

    /* renamed from: b  reason: collision with root package name */
    String f33989b;

    /* renamed from: c  reason: collision with root package name */
    ConsentStatus f33990c;

    /* renamed from: d  reason: collision with root package name */
    ConsentStatus f33991d;
    String e;
    boolean f;
    String g;
    String h;
    ConsentStatus i;
    boolean j;
    String k;
    String l;
    String m;
    String n;
    String o;
    String p;
    String q;
    String r;
    String s;
    boolean t;
    Boolean u;
    private final Context v;
    private String w;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context) {
        Preconditions.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        this.v = applicationContext;
        this.f33990c = ConsentStatus.UNKNOWN;
        this.f33988a = "";
        SharedPreferences sharedPreferences = SharedPreferencesHelper.getSharedPreferences(applicationContext, "com.mopub.privacy");
        this.f33988a = sharedPreferences.getString("info/adunit", "");
        this.f33989b = sharedPreferences.getString("info/cached_last_ad_unit_id_used_for_init", null);
        this.f33990c = ConsentStatus.fromString(sharedPreferences.getString("info/consent_status", ConsentStatus.UNKNOWN.name()));
        String string = sharedPreferences.getString("info/last_successfully_synced_consent_status", null);
        if (TextUtils.isEmpty(string)) {
            this.f33991d = null;
        } else {
            this.f33991d = ConsentStatus.fromString(string);
        }
        this.j = sharedPreferences.getBoolean("info/is_whitelisted", false);
        this.k = sharedPreferences.getString("info/current_vendor_list_version", null);
        this.l = sharedPreferences.getString("info/current_vendor_list_link", null);
        this.m = sharedPreferences.getString("info/current_privacy_policy_version", null);
        this.n = sharedPreferences.getString("info/current_privacy_policy_link", null);
        this.o = sharedPreferences.getString("info/current_vendor_list_iab_format", null);
        this.p = sharedPreferences.getString("info/current_vendor_list_iab_hash", null);
        this.q = sharedPreferences.getString("info/consented_vendor_list_version", null);
        this.r = sharedPreferences.getString("info/consented_privacy_policy_version", null);
        this.s = sharedPreferences.getString("info/consented_vendor_list_iab_format", null);
        this.w = sharedPreferences.getString("info/extras", null);
        this.e = sharedPreferences.getString("info/consent_change_reason", null);
        this.t = sharedPreferences.getBoolean("info/reacquire_consent", false);
        String string2 = sharedPreferences.getString("info/gdpr_applies", null);
        if (TextUtils.isEmpty(string2)) {
            this.u = null;
        } else {
            this.u = Boolean.valueOf(Boolean.parseBoolean(string2));
        }
        this.f = sharedPreferences.getBoolean("info/force_gdpr_applies", false);
        String string3 = sharedPreferences.getString("info/udid", null);
        if (!TextUtils.isEmpty(string3)) {
            this.g = string3.replace("ifa:", "");
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putString("info/ifa", this.g);
            edit.remove("info/udid");
            edit.apply();
        } else {
            this.g = sharedPreferences.getString("info/ifa", null);
        }
        this.h = sharedPreferences.getString("info/last_changed_ms", null);
        String string4 = sharedPreferences.getString("info/consent_status_before_dnt", null);
        if (TextUtils.isEmpty(string4)) {
            this.i = null;
        } else {
            this.i = ConsentStatus.fromString(string4);
        }
    }

    private static String a(Context context, String str) {
        String[] iSOLanguages;
        Preconditions.checkNotNull(context);
        for (String str2 : Locale.getISOLanguages()) {
            if (str2 != null && str2.equals(str)) {
                return str;
            }
        }
        return ClientMetadata.getCurrentLanguage(context);
    }

    private static String a(String str, Context context, String str2) {
        Preconditions.checkNotNull(context);
        return TextUtils.isEmpty(str) ? "" : str.replaceAll("%%LANGUAGE%%", a(context, str2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        SharedPreferences.Editor edit = SharedPreferencesHelper.getSharedPreferences(this.v, "com.mopub.privacy").edit();
        edit.putString("info/adunit", this.f33988a);
        edit.putString("info/cached_last_ad_unit_id_used_for_init", this.f33989b);
        edit.putString("info/consent_status", this.f33990c.name());
        ConsentStatus consentStatus = this.f33991d;
        String str = null;
        edit.putString("info/last_successfully_synced_consent_status", consentStatus == null ? null : consentStatus.name());
        edit.putBoolean("info/is_whitelisted", this.j);
        edit.putString("info/current_vendor_list_version", this.k);
        edit.putString("info/current_vendor_list_link", this.l);
        edit.putString("info/current_privacy_policy_version", this.m);
        edit.putString("info/current_privacy_policy_link", this.n);
        edit.putString("info/current_vendor_list_iab_format", this.o);
        edit.putString("info/current_vendor_list_iab_hash", this.p);
        edit.putString("info/consented_vendor_list_version", this.q);
        edit.putString("info/consented_privacy_policy_version", this.r);
        edit.putString("info/consented_vendor_list_iab_format", this.s);
        edit.putString("info/extras", this.w);
        edit.putString("info/consent_change_reason", this.e);
        edit.putBoolean("info/reacquire_consent", this.t);
        Boolean bool = this.u;
        edit.putString("info/gdpr_applies", bool == null ? null : bool.toString());
        edit.putBoolean("info/force_gdpr_applies", this.f);
        edit.putString("info/ifa", this.g);
        edit.putString("info/last_changed_ms", this.h);
        ConsentStatus consentStatus2 = this.i;
        if (consentStatus2 != null) {
            str = consentStatus2.name();
        }
        edit.putString("info/consent_status_before_dnt", str);
        edit.apply();
    }

    @Override // com.mopub.common.privacy.ConsentData
    public final String chooseAdUnit() {
        String str = this.f33988a;
        return !TextUtils.isEmpty(str) ? str : this.f33989b;
    }

    @Override // com.mopub.common.privacy.ConsentData
    public final String getConsentedPrivacyPolicyVersion() {
        return this.r;
    }

    @Override // com.mopub.common.privacy.ConsentData
    public final String getConsentedVendorListIabFormat() {
        return this.s;
    }

    @Override // com.mopub.common.privacy.ConsentData
    public final String getConsentedVendorListVersion() {
        return this.q;
    }

    @Override // com.mopub.common.privacy.ConsentData
    public final String getCurrentPrivacyPolicyLink() {
        return getCurrentPrivacyPolicyLink(null);
    }

    @Override // com.mopub.common.privacy.ConsentData
    public final String getCurrentPrivacyPolicyLink(String str) {
        return a(this.n, this.v, str);
    }

    @Override // com.mopub.common.privacy.ConsentData
    public final String getCurrentPrivacyPolicyVersion() {
        return this.m;
    }

    @Override // com.mopub.common.privacy.ConsentData
    public final String getCurrentVendorListIabFormat() {
        return this.o;
    }

    @Override // com.mopub.common.privacy.ConsentData
    public final String getCurrentVendorListLink() {
        return getCurrentVendorListLink(null);
    }

    @Override // com.mopub.common.privacy.ConsentData
    public final String getCurrentVendorListLink(String str) {
        return a(this.l, this.v, str);
    }

    @Override // com.mopub.common.privacy.ConsentData
    public final String getCurrentVendorListVersion() {
        return this.k;
    }

    public final String getExtras() {
        return this.w;
    }

    @Override // com.mopub.common.privacy.ConsentData
    public final boolean isForceGdprApplies() {
        return this.f;
    }

    public final void setExtras(String str) {
        this.w = str;
    }
}

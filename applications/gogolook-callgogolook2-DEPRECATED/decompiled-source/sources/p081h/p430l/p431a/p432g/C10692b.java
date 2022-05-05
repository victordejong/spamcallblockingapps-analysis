package p081h.p430l.p431a.p432g;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Preconditions;
import com.mopub.common.SharedPreferencesHelper;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.privacy.ConsentData;
import com.mopub.common.privacy.ConsentStatus;
import java.util.Locale;
/* renamed from: h.l.a.g.b */
/* loaded from: classes2-dex2jar.jar:h/l/a/g/b.class */
public class C10692b implements ConsentData {
    @NonNull

    /* renamed from: a */
    public final Context f24342a;
    @Nullable

    /* renamed from: c */
    public String f24344c;
    @Nullable

    /* renamed from: e */
    public ConsentStatus f24346e;
    @Nullable

    /* renamed from: f */
    public String f24347f;

    /* renamed from: g */
    public boolean f24348g;
    @Nullable

    /* renamed from: h */
    public String f24349h;
    @Nullable

    /* renamed from: i */
    public String f24350i;
    @Nullable

    /* renamed from: j */
    public ConsentStatus f24351j;

    /* renamed from: k */
    public boolean f24352k;
    @Nullable

    /* renamed from: l */
    public String f24353l;
    @Nullable

    /* renamed from: m */
    public String f24354m;
    @Nullable

    /* renamed from: n */
    public String f24355n;
    @Nullable

    /* renamed from: o */
    public String f24356o;
    @Nullable

    /* renamed from: p */
    public String f24357p;
    @Nullable

    /* renamed from: q */
    public String f24358q;
    @Nullable

    /* renamed from: r */
    public String f24359r;
    @Nullable

    /* renamed from: s */
    public String f24360s;
    @Nullable

    /* renamed from: t */
    public String f24361t;
    @Nullable

    /* renamed from: u */
    public String f24362u;

    /* renamed from: v */
    public boolean f24363v;
    @Nullable

    /* renamed from: w */
    public Boolean f24364w;
    @NonNull

    /* renamed from: d */
    public ConsentStatus f24345d = ConsentStatus.UNKNOWN;
    @NonNull

    /* renamed from: b */
    public String f24343b = "";

    public C10692b(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        this.f24342a = context.getApplicationContext();
        m10906k();
    }

    @NonNull
    /* renamed from: a */
    public static String m10934a(@NonNull Context context, @Nullable String str) {
        String[] iSOLanguages;
        Preconditions.checkNotNull(context);
        for (String str2 : Locale.getISOLanguages()) {
            if (str2 != null && str2.equals(str)) {
                return str;
            }
        }
        return ClientMetadata.getCurrentLanguage(context);
    }

    @NonNull
    @VisibleForTesting
    /* renamed from: a */
    public static String m10930a(@Nullable String str, @NonNull Context context, @Nullable String str2) {
        Preconditions.checkNotNull(context);
        return TextUtils.isEmpty(str) ? "" : str.replaceAll("%%LANGUAGE%%", m10934a(context, str2));
    }

    @Nullable
    /* renamed from: a */
    public String m10935a() {
        String str = this.f24343b;
        return !TextUtils.isEmpty(str) ? str : this.f24344c;
    }

    /* renamed from: a */
    public void m10933a(@NonNull ConsentStatus consentStatus) {
        this.f24345d = consentStatus;
    }

    /* renamed from: a */
    public void m10932a(@Nullable Boolean bool) {
        this.f24364w = bool;
    }

    /* renamed from: a */
    public void m10931a(@NonNull String str) {
        this.f24343b = str;
    }

    /* renamed from: a */
    public void m10929a(boolean z) {
        this.f24348g = z;
    }

    @NonNull
    /* renamed from: b */
    public String m10928b() {
        return this.f24343b;
    }

    /* renamed from: b */
    public void m10927b(@Nullable ConsentStatus consentStatus) {
        this.f24351j = consentStatus;
    }

    /* renamed from: b */
    public void m10926b(@NonNull String str) {
        this.f24344c = str;
    }

    /* renamed from: b */
    public void m10925b(boolean z) {
        this.f24363v = z;
    }

    @Nullable
    /* renamed from: c */
    public String m10924c() {
        return this.f24344c;
    }

    /* renamed from: c */
    public void m10923c(@Nullable ConsentStatus consentStatus) {
        this.f24346e = consentStatus;
    }

    /* renamed from: c */
    public void m10922c(@Nullable String str) {
        this.f24347f = str;
    }

    /* renamed from: c */
    public void m10921c(boolean z) {
        this.f24352k = z;
    }

    @Nullable
    /* renamed from: d */
    public String m10920d() {
        return this.f24347f;
    }

    /* renamed from: d */
    public void m10919d(@Nullable String str) {
        this.f24360s = str;
    }

    @NonNull
    /* renamed from: e */
    public ConsentStatus m10918e() {
        return this.f24345d;
    }

    /* renamed from: e */
    public void m10917e(@Nullable String str) {
        this.f24361t = str;
    }

    @Nullable
    /* renamed from: f */
    public ConsentStatus m10916f() {
        return this.f24351j;
    }

    /* renamed from: f */
    public void m10915f(@Nullable String str) {
        this.f24359r = str;
    }

    @Nullable
    /* renamed from: g */
    public String m10914g() {
        return this.f24358q;
    }

    /* renamed from: g */
    public void m10913g(@Nullable String str) {
        this.f24356o = str;
    }

    @Override // com.mopub.common.privacy.ConsentData
    @Nullable
    public String getConsentedPrivacyPolicyVersion() {
        return this.f24360s;
    }

    @Override // com.mopub.common.privacy.ConsentData
    @Nullable
    public String getConsentedVendorListIabFormat() {
        return this.f24361t;
    }

    @Override // com.mopub.common.privacy.ConsentData
    @Nullable
    public String getConsentedVendorListVersion() {
        return this.f24359r;
    }

    @Override // com.mopub.common.privacy.ConsentData
    @NonNull
    public String getCurrentPrivacyPolicyLink() {
        return getCurrentPrivacyPolicyLink(null);
    }

    @Override // com.mopub.common.privacy.ConsentData
    @NonNull
    public String getCurrentPrivacyPolicyLink(@Nullable String str) {
        return m10930a(this.f24356o, this.f24342a, str);
    }

    @Override // com.mopub.common.privacy.ConsentData
    @Nullable
    public String getCurrentPrivacyPolicyVersion() {
        return this.f24355n;
    }

    @Override // com.mopub.common.privacy.ConsentData
    @Nullable
    public String getCurrentVendorListIabFormat() {
        return this.f24357p;
    }

    @Override // com.mopub.common.privacy.ConsentData
    @NonNull
    public String getCurrentVendorListLink() {
        return getCurrentVendorListLink(null);
    }

    @Override // com.mopub.common.privacy.ConsentData
    @NonNull
    public String getCurrentVendorListLink(@Nullable String str) {
        return m10930a(this.f24354m, this.f24342a, str);
    }

    @Override // com.mopub.common.privacy.ConsentData
    @Nullable
    public String getCurrentVendorListVersion() {
        return this.f24353l;
    }

    @Nullable
    public String getExtras() {
        return this.f24362u;
    }

    @Nullable
    /* renamed from: h */
    public Boolean m10912h() {
        return this.f24364w;
    }

    /* renamed from: h */
    public void m10911h(@Nullable String str) {
        this.f24355n = str;
    }

    @Nullable
    /* renamed from: i */
    public String m10910i() {
        return this.f24350i;
    }

    /* renamed from: i */
    public void m10909i(@Nullable String str) {
        this.f24357p = str;
    }

    @Override // com.mopub.common.privacy.ConsentData
    public boolean isForceGdprApplies() {
        return this.f24348g;
    }

    @Nullable
    /* renamed from: j */
    public ConsentStatus m10908j() {
        return this.f24346e;
    }

    /* renamed from: j */
    public void m10907j(@Nullable String str) {
        this.f24358q = str;
    }

    /* renamed from: k */
    public final void m10906k() {
        SharedPreferences sharedPreferences = SharedPreferencesHelper.getSharedPreferences(this.f24342a, "com.mopub.privacy");
        this.f24343b = sharedPreferences.getString("info/adunit", "");
        this.f24344c = sharedPreferences.getString("info/cached_last_ad_unit_id_used_for_init", null);
        this.f24345d = ConsentStatus.fromString(sharedPreferences.getString("info/consent_status", ConsentStatus.UNKNOWN.name()));
        String string = sharedPreferences.getString("info/last_successfully_synced_consent_status", null);
        if (TextUtils.isEmpty(string)) {
            this.f24346e = null;
        } else {
            this.f24346e = ConsentStatus.fromString(string);
        }
        this.f24352k = sharedPreferences.getBoolean("info/is_whitelisted", false);
        this.f24353l = sharedPreferences.getString("info/current_vendor_list_version", null);
        this.f24354m = sharedPreferences.getString("info/current_vendor_list_link", null);
        this.f24355n = sharedPreferences.getString("info/current_privacy_policy_version", null);
        this.f24356o = sharedPreferences.getString("info/current_privacy_policy_link", null);
        this.f24357p = sharedPreferences.getString("info/current_vendor_list_iab_format", null);
        this.f24358q = sharedPreferences.getString("info/current_vendor_list_iab_hash", null);
        this.f24359r = sharedPreferences.getString("info/consented_vendor_list_version", null);
        this.f24360s = sharedPreferences.getString("info/consented_privacy_policy_version", null);
        this.f24361t = sharedPreferences.getString("info/consented_vendor_list_iab_format", null);
        this.f24362u = sharedPreferences.getString("info/extras", null);
        this.f24347f = sharedPreferences.getString("info/consent_change_reason", null);
        this.f24363v = sharedPreferences.getBoolean("info/reacquire_consent", false);
        String string2 = sharedPreferences.getString("info/gdpr_applies", null);
        if (TextUtils.isEmpty(string2)) {
            this.f24364w = null;
        } else {
            this.f24364w = Boolean.valueOf(Boolean.parseBoolean(string2));
        }
        this.f24348g = sharedPreferences.getBoolean("info/force_gdpr_applies", false);
        this.f24349h = sharedPreferences.getString("info/udid", null);
        this.f24350i = sharedPreferences.getString("info/last_changed_ms", null);
        String string3 = sharedPreferences.getString("info/consent_status_before_dnt", null);
        if (TextUtils.isEmpty(string3)) {
            this.f24351j = null;
        } else {
            this.f24351j = ConsentStatus.fromString(string3);
        }
    }

    /* renamed from: k */
    public void m10905k(@Nullable String str) {
        this.f24354m = str;
    }

    @Nullable
    /* renamed from: l */
    public String m10904l() {
        return this.f24349h;
    }

    /* renamed from: l */
    public void m10903l(@Nullable String str) {
        this.f24353l = str;
    }

    /* renamed from: m */
    public void m10901m(@Nullable String str) {
        this.f24350i = str;
    }

    /* renamed from: m */
    public boolean m10902m() {
        return this.f24352k;
    }

    /* renamed from: n */
    public void m10899n(@Nullable String str) {
        this.f24349h = str;
    }

    /* renamed from: n */
    public boolean m10900n() {
        return this.f24363v;
    }

    /* renamed from: o */
    public void m10898o() {
        SharedPreferences.Editor edit = SharedPreferencesHelper.getSharedPreferences(this.f24342a, "com.mopub.privacy").edit();
        edit.putString("info/adunit", this.f24343b);
        edit.putString("info/cached_last_ad_unit_id_used_for_init", this.f24344c);
        edit.putString("info/consent_status", this.f24345d.name());
        ConsentStatus consentStatus = this.f24346e;
        String str = null;
        edit.putString("info/last_successfully_synced_consent_status", consentStatus == null ? null : consentStatus.name());
        edit.putBoolean("info/is_whitelisted", this.f24352k);
        edit.putString("info/current_vendor_list_version", this.f24353l);
        edit.putString("info/current_vendor_list_link", this.f24354m);
        edit.putString("info/current_privacy_policy_version", this.f24355n);
        edit.putString("info/current_privacy_policy_link", this.f24356o);
        edit.putString("info/current_vendor_list_iab_format", this.f24357p);
        edit.putString("info/current_vendor_list_iab_hash", this.f24358q);
        edit.putString("info/consented_vendor_list_version", this.f24359r);
        edit.putString("info/consented_privacy_policy_version", this.f24360s);
        edit.putString("info/consented_vendor_list_iab_format", this.f24361t);
        edit.putString("info/extras", this.f24362u);
        edit.putString("info/consent_change_reason", this.f24347f);
        edit.putBoolean("info/reacquire_consent", this.f24363v);
        Boolean bool = this.f24364w;
        edit.putString("info/gdpr_applies", bool == null ? null : bool.toString());
        edit.putBoolean("info/force_gdpr_applies", this.f24348g);
        edit.putString("info/udid", this.f24349h);
        edit.putString("info/last_changed_ms", this.f24350i);
        ConsentStatus consentStatus2 = this.f24351j;
        if (consentStatus2 != null) {
            str = consentStatus2.name();
        }
        edit.putString("info/consent_status_before_dnt", str);
        edit.apply();
    }

    public void setExtras(@Nullable String str) {
        this.f24362u = str;
    }
}

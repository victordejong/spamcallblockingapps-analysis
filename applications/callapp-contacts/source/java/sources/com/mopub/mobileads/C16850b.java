package com.mopub.mobileads;

import android.content.Context;
import com.mopub.common.BaseUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.nativeads.GooglePlayServicesNativeAd;
/* renamed from: com.mopub.mobileads.b */
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/b.class */
final class C16850b extends BaseUrlGenerator {

    /* renamed from: a */
    private Context f59663a;

    /* renamed from: b */
    private String f59664b;

    /* renamed from: c */
    private String f59665c;

    /* renamed from: d */
    private String f59666d;

    /* renamed from: e */
    private String f59667e;

    /* renamed from: f */
    private Boolean f59668f;

    /* renamed from: g */
    private boolean f59669g;

    /* renamed from: h */
    private boolean f59670h;

    public C16850b(Context context, String str) {
        this.f59663a = context;
        this.f59664b = str;
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public final String generateUrlString(String str) {
        ClientMetadata clientMetadata = ClientMetadata.getInstance(this.f59663a);
        m6787a(str, Constants.CONVERSION_TRACKING_HANDLER);
        m6789a("6");
        m6784b(clientMetadata.getAppVersion());
        m6782c();
        m6783b("os", Constants.ANDROID_PLATFORM);
        m6783b(GooglePlayServicesNativeAd.KEY_EXTRA_AD_UNIT_ID, this.f59664b);
        m6783b("id", this.f59663a.getPackageName());
        m6783b("bundle", this.f59663a.getPackageName());
        m6786a(clientMetadata.getDeviceManufacturer(), clientMetadata.getDeviceModel(), clientMetadata.getDeviceProduct());
        if (this.f59670h) {
            m6788a("st", Boolean.TRUE);
        }
        m6783b("nv", "5.16.4");
        m6781d();
        m6780e();
        m6783b("current_consent_status", this.f59665c);
        m6783b("consented_vendor_list_version", this.f59666d);
        m6783b("consented_privacy_policy_version", this.f59667e);
        m6788a("gdpr_applies", this.f59668f);
        m6788a("force_gdpr_applies", Boolean.valueOf(this.f59669g));
        return m6785b();
    }

    public final C16850b withConsentedPrivacyPolicyVersion(String str) {
        this.f59667e = str;
        return this;
    }

    public final C16850b withConsentedVendorListVersion(String str) {
        this.f59666d = str;
        return this;
    }

    public final C16850b withCurrentConsentStatus(String str) {
        this.f59665c = str;
        return this;
    }

    public final C16850b withForceGdprApplies(boolean z) {
        this.f59669g = z;
        return this;
    }

    public final C16850b withGdprApplies(Boolean bool) {
        this.f59668f = bool;
        return this;
    }

    public final C16850b withSessionTracker(boolean z) {
        this.f59670h = z;
        return this;
    }
}

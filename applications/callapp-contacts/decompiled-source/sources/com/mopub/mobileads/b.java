package com.mopub.mobileads;

import android.content.Context;
import com.mopub.common.BaseUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.nativeads.GooglePlayServicesNativeAd;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/b.class */
final class b extends BaseUrlGenerator {

    /* renamed from: a  reason: collision with root package name */
    private Context f34379a;

    /* renamed from: b  reason: collision with root package name */
    private String f34380b;

    /* renamed from: c  reason: collision with root package name */
    private String f34381c;

    /* renamed from: d  reason: collision with root package name */
    private String f34382d;
    private String e;
    private Boolean f;
    private boolean g;
    private boolean h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context, String str) {
        this.f34379a = context;
        this.f34380b = str;
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public final String generateUrlString(String str) {
        ClientMetadata instance = ClientMetadata.getInstance(this.f34379a);
        a(str, Constants.CONVERSION_TRACKING_HANDLER);
        a("6");
        b(instance.getAppVersion());
        c();
        b("os", Constants.ANDROID_PLATFORM);
        b(GooglePlayServicesNativeAd.KEY_EXTRA_AD_UNIT_ID, this.f34380b);
        b("id", this.f34379a.getPackageName());
        b("bundle", this.f34379a.getPackageName());
        a(instance.getDeviceManufacturer(), instance.getDeviceModel(), instance.getDeviceProduct());
        if (this.h) {
            a("st", Boolean.TRUE);
        }
        b("nv", "5.16.4");
        d();
        e();
        b("current_consent_status", this.f34381c);
        b("consented_vendor_list_version", this.f34382d);
        b("consented_privacy_policy_version", this.e);
        a("gdpr_applies", this.f);
        a("force_gdpr_applies", Boolean.valueOf(this.g));
        return b();
    }

    public final b withConsentedPrivacyPolicyVersion(String str) {
        this.e = str;
        return this;
    }

    public final b withConsentedVendorListVersion(String str) {
        this.f34382d = str;
        return this;
    }

    public final b withCurrentConsentStatus(String str) {
        this.f34381c = str;
        return this;
    }

    public final b withForceGdprApplies(boolean z) {
        this.g = z;
        return this;
    }

    public final b withGdprApplies(Boolean bool) {
        this.f = bool;
        return this;
    }

    public final b withSessionTracker(boolean z) {
        this.h = z;
        return this;
    }
}

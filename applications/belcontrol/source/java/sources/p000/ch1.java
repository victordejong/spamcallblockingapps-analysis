package p000;

import android.content.Context;
import com.mopub.common.BaseUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
/* renamed from: ch1 */
/* loaded from: classes3-dex2jar.jar:ch1.class */
public class ch1 extends BaseUrlGenerator {

    /* renamed from: e */
    public Context f2375e;

    /* renamed from: f */
    public String f2376f;

    /* renamed from: g */
    public String f2377g;

    /* renamed from: h */
    public String f2378h;

    /* renamed from: i */
    public String f2379i;

    /* renamed from: j */
    public Boolean f2380j;

    /* renamed from: k */
    public boolean f2381k;

    /* renamed from: l */
    public boolean f2382l;

    public ch1(Context context, String str) {
        this.f2375e = context;
        this.f2376f = str;
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public String generateUrlString(String str) {
        ClientMetadata clientMetadata = ClientMetadata.getInstance(this.f2375e);
        m4022h(str, Constants.CONVERSION_TRACKING_HANDLER);
        m4021i("6");
        m4020j(clientMetadata.getAppVersion());
        m4027c();
        m4028b("os", Constants.ANDROID_PLATFORM);
        m4028b("adunit", this.f2376f);
        m4028b("id", this.f2375e.getPackageName());
        m4028b("bundle", this.f2375e.getPackageName());
        m4018l(clientMetadata.getDeviceManufacturer(), clientMetadata.getDeviceModel(), clientMetadata.getDeviceProduct());
        if (this.f2382l) {
            m4029a("st", Boolean.TRUE);
        }
        m4028b("nv", "5.15.0");
        m4026d();
        m4025e();
        m4028b("current_consent_status", this.f2377g);
        m4028b("consented_vendor_list_version", this.f2378h);
        m4028b("consented_privacy_policy_version", this.f2379i);
        m4029a("gdpr_applies", this.f2380j);
        m4029a("force_gdpr_applies", Boolean.valueOf(this.f2381k));
        return m4024f();
    }

    public ch1 withConsentedPrivacyPolicyVersion(String str) {
        this.f2379i = str;
        return this;
    }

    public ch1 withConsentedVendorListVersion(String str) {
        this.f2378h = str;
        return this;
    }

    public ch1 withCurrentConsentStatus(String str) {
        this.f2377g = str;
        return this;
    }

    public ch1 withForceGdprApplies(boolean z) {
        this.f2381k = z;
        return this;
    }

    public ch1 withGdprApplies(Boolean bool) {
        this.f2380j = bool;
        return this;
    }

    public ch1 withSessionTracker(boolean z) {
        this.f2382l = z;
        return this;
    }
}

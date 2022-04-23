package p131c.p421j.p424b;

import android.content.Context;
import com.mopub.common.BaseUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
/* renamed from: c.j.b.e */
/* loaded from: classes2-dex2jar.jar:c/j/b/e.class */
public class C6651e extends BaseUrlGenerator {

    /* renamed from: e */
    public Context f20536e;

    /* renamed from: f */
    public String f20537f;

    /* renamed from: g */
    public String f20538g;

    /* renamed from: h */
    public String f20539h;

    /* renamed from: i */
    public Boolean f20540i;

    /* renamed from: j */
    public boolean f20541j;

    /* renamed from: k */
    public boolean f20542k;

    public C6651e(Context context) {
        this.f20536e = context;
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public String generateUrlString(String str) {
        ClientMetadata instance = ClientMetadata.getInstance(this.f20536e);
        m4707b(str, Constants.CONVERSION_TRACKING_HANDLER);
        m4714a("6");
        m4708b(instance.getAppVersion());
        m4716a();
        m4712a("id", this.f20536e.getPackageName());
        if (this.f20542k) {
            m4713a("st", (Boolean) true);
        }
        m4712a("nv", "5.11.1");
        m4709b();
        m4706c();
        m4712a("current_consent_status", this.f20537f);
        m4712a("consented_vendor_list_version", this.f20538g);
        m4712a("consented_privacy_policy_version", this.f20539h);
        m4713a("gdpr_applies", this.f20540i);
        m4713a("force_gdpr_applies", Boolean.valueOf(this.f20541j));
        return m4705d();
    }

    public C6651e withConsentedPrivacyPolicyVersion(String str) {
        this.f20539h = str;
        return this;
    }

    public C6651e withConsentedVendorListVersion(String str) {
        this.f20538g = str;
        return this;
    }

    public C6651e withCurrentConsentStatus(String str) {
        this.f20537f = str;
        return this;
    }

    public C6651e withForceGdprApplies(boolean z) {
        this.f20541j = z;
        return this;
    }

    public C6651e withGdprApplies(Boolean bool) {
        this.f20540i = bool;
        return this;
    }

    public C6651e withSessionTracker(boolean z) {
        this.f20542k = z;
        return this;
    }
}

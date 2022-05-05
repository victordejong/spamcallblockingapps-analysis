package p081h.p430l.p433b;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.BaseUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
/* renamed from: h.l.b.d */
/* loaded from: classes2-dex2jar.jar:h/l/b/d.class */
public class C10701d extends BaseUrlGenerator {
    @NonNull

    /* renamed from: e */
    public Context f24386e;
    @Nullable

    /* renamed from: f */
    public String f24387f;
    @Nullable

    /* renamed from: g */
    public String f24388g;
    @Nullable

    /* renamed from: h */
    public String f24389h;
    @Nullable

    /* renamed from: i */
    public Boolean f24390i;

    /* renamed from: j */
    public boolean f24391j;

    /* renamed from: k */
    public boolean f24392k;

    public C10701d(@NonNull Context context) {
        this.f24386e = context;
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public String generateUrlString(String str) {
        ClientMetadata instance = ClientMetadata.getInstance(this.f24386e);
        m30863b(str, Constants.CONVERSION_TRACKING_HANDLER);
        m30870a("6");
        m30864b(instance.getAppVersion());
        m30872a();
        m30868a("id", this.f24386e.getPackageName());
        if (this.f24392k) {
            m30869a("st", (Boolean) true);
        }
        m30868a("nv", "5.11.1");
        m30865b();
        m30862c();
        m30868a("current_consent_status", this.f24387f);
        m30868a("consented_vendor_list_version", this.f24388g);
        m30868a("consented_privacy_policy_version", this.f24389h);
        m30869a("gdpr_applies", this.f24390i);
        m30869a("force_gdpr_applies", Boolean.valueOf(this.f24391j));
        return m30861d();
    }

    public C10701d withConsentedPrivacyPolicyVersion(@Nullable String str) {
        this.f24389h = str;
        return this;
    }

    public C10701d withConsentedVendorListVersion(@Nullable String str) {
        this.f24388g = str;
        return this;
    }

    public C10701d withCurrentConsentStatus(@Nullable String str) {
        this.f24387f = str;
        return this;
    }

    public C10701d withForceGdprApplies(boolean z) {
        this.f24391j = z;
        return this;
    }

    public C10701d withGdprApplies(@Nullable Boolean bool) {
        this.f24390i = bool;
        return this;
    }

    public C10701d withSessionTracker(boolean z) {
        this.f24392k = z;
        return this;
    }
}

package com.mopub.common.privacy;

import android.content.Context;
import com.mopub.common.BaseUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import com.mopub.network.PlayServicesUrlRewriter;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/SyncUrlGenerator.class */
public class SyncUrlGenerator extends BaseUrlGenerator {

    /* renamed from: e */
    public final Context f4495e;

    /* renamed from: f */
    public String f4496f;

    /* renamed from: g */
    public String f4497g;

    /* renamed from: h */
    public String f4498h;

    /* renamed from: i */
    public String f4499i;

    /* renamed from: j */
    public final String f4500j;

    /* renamed from: k */
    public String f4501k;

    /* renamed from: l */
    public String f4502l;

    /* renamed from: m */
    public String f4503m;

    /* renamed from: n */
    public String f4504n;

    /* renamed from: o */
    public String f4505o;

    /* renamed from: p */
    public Boolean f4506p;

    /* renamed from: q */
    public boolean f4507q;

    /* renamed from: r */
    public Boolean f4508r;

    public SyncUrlGenerator(Context context, String str) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        this.f4495e = context.getApplicationContext();
        this.f4500j = str;
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public String generateUrlString(String str) {
        m4022h(str, Constants.GDPR_SYNC_HANDLER);
        m4028b("id", this.f4496f);
        m4028b("nv", "5.15.0");
        m4026d();
        m4025e();
        m4028b("last_changed_ms", this.f4498h);
        m4028b("last_consent_status", this.f4499i);
        m4028b("current_consent_status", this.f4500j);
        m4028b("consent_change_reason", this.f4501k);
        m4028b("consented_vendor_list_version", this.f4502l);
        m4028b("consented_privacy_policy_version", this.f4503m);
        m4028b("cached_vendor_list_iab_hash", this.f4504n);
        m4028b("extras", this.f4505o);
        m4028b("consent_ifa", this.f4497g);
        m4029a("gdpr_applies", this.f4506p);
        m4029a("force_gdpr_applies", Boolean.valueOf(this.f4507q));
        m4029a("forced_gdpr_applies_changed", this.f4508r);
        m4028b("bundle", ClientMetadata.getInstance(this.f4495e).getAppPackageName());
        m4028b("dnt", PlayServicesUrlRewriter.DO_NOT_TRACK_TEMPLATE);
        m4028b("mid", PlayServicesUrlRewriter.MOPUB_ID_TEMPLATE);
        return m4024f();
    }

    public SyncUrlGenerator withAdUnitId(String str) {
        this.f4496f = str;
        return this;
    }

    public SyncUrlGenerator withCachedVendorListIabHash(String str) {
        this.f4504n = str;
        return this;
    }

    public SyncUrlGenerator withConsentChangeReason(String str) {
        this.f4501k = str;
        return this;
    }

    public SyncUrlGenerator withConsentedIfa(String str) {
        this.f4497g = str;
        return this;
    }

    public SyncUrlGenerator withConsentedPrivacyPolicyVersion(String str) {
        this.f4503m = str;
        return this;
    }

    public SyncUrlGenerator withConsentedVendorListVersion(String str) {
        this.f4502l = str;
        return this;
    }

    public SyncUrlGenerator withExtras(String str) {
        this.f4505o = str;
        return this;
    }

    public SyncUrlGenerator withForceGdprApplies(boolean z) {
        this.f4507q = z;
        return this;
    }

    public SyncUrlGenerator withForceGdprAppliesChanged(Boolean bool) {
        this.f4508r = bool;
        return this;
    }

    public SyncUrlGenerator withGdprApplies(Boolean bool) {
        this.f4506p = bool;
        return this;
    }

    public SyncUrlGenerator withLastChangedMs(String str) {
        this.f4498h = str;
        return this;
    }

    public SyncUrlGenerator withLastConsentStatus(ConsentStatus consentStatus) {
        this.f4499i = consentStatus == null ? null : consentStatus.getValue();
        return this;
    }
}

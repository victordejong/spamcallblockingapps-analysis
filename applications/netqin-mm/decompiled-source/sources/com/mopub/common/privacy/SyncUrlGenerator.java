package com.mopub.common.privacy;

import android.content.Context;
import com.mopub.common.BaseUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import com.mopub.network.PlayServicesUrlRewriter;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/SyncUrlGenerator.class */
public class SyncUrlGenerator extends BaseUrlGenerator {

    /* renamed from: e */
    public final Context f33928e;

    /* renamed from: f */
    public String f33929f;

    /* renamed from: g */
    public String f33930g;

    /* renamed from: h */
    public String f33931h;

    /* renamed from: i */
    public String f33932i;

    /* renamed from: j */
    public final String f33933j;

    /* renamed from: k */
    public String f33934k;

    /* renamed from: l */
    public String f33935l;

    /* renamed from: m */
    public String f33936m;

    /* renamed from: n */
    public String f33937n;

    /* renamed from: o */
    public String f33938o;

    /* renamed from: p */
    public Boolean f33939p;

    /* renamed from: q */
    public boolean f33940q;

    /* renamed from: r */
    public Boolean f33941r;

    public SyncUrlGenerator(Context context, String str) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        this.f33928e = context.getApplicationContext();
        this.f33933j = str;
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public String generateUrlString(String str) {
        m4707b(str, Constants.GDPR_SYNC_HANDLER);
        m4712a("id", this.f33929f);
        m4712a("nv", "5.11.1");
        m4709b();
        m4706c();
        m4712a("last_changed_ms", this.f33931h);
        m4712a("last_consent_status", this.f33932i);
        m4712a("current_consent_status", this.f33933j);
        m4712a("consent_change_reason", this.f33934k);
        m4712a("consented_vendor_list_version", this.f33935l);
        m4712a("consented_privacy_policy_version", this.f33936m);
        m4712a("cached_vendor_list_iab_hash", this.f33937n);
        m4712a("extras", this.f33938o);
        m4712a("udid", this.f33930g);
        m4713a("gdpr_applies", this.f33939p);
        m4713a("force_gdpr_applies", Boolean.valueOf(this.f33940q));
        m4713a("forced_gdpr_applies_changed", this.f33941r);
        m4712a("bundle", ClientMetadata.getInstance(this.f33928e).getAppPackageName());
        m4712a("dnt", PlayServicesUrlRewriter.DO_NOT_TRACK_TEMPLATE);
        m4712a("mid", PlayServicesUrlRewriter.MOPUB_ID_TEMPLATE);
        return m4705d();
    }

    public SyncUrlGenerator withAdUnitId(String str) {
        this.f33929f = str;
        return this;
    }

    public SyncUrlGenerator withCachedVendorListIabHash(String str) {
        this.f33937n = str;
        return this;
    }

    public SyncUrlGenerator withConsentChangeReason(String str) {
        this.f33934k = str;
        return this;
    }

    public SyncUrlGenerator withConsentedPrivacyPolicyVersion(String str) {
        this.f33936m = str;
        return this;
    }

    public SyncUrlGenerator withConsentedVendorListVersion(String str) {
        this.f33935l = str;
        return this;
    }

    public SyncUrlGenerator withExtras(String str) {
        this.f33938o = str;
        return this;
    }

    public SyncUrlGenerator withForceGdprApplies(boolean z) {
        this.f33940q = z;
        return this;
    }

    public SyncUrlGenerator withForceGdprAppliesChanged(Boolean bool) {
        this.f33941r = bool;
        return this;
    }

    public SyncUrlGenerator withGdprApplies(Boolean bool) {
        this.f33939p = bool;
        return this;
    }

    public SyncUrlGenerator withLastChangedMs(String str) {
        this.f33931h = str;
        return this;
    }

    public SyncUrlGenerator withLastConsentStatus(ConsentStatus consentStatus) {
        this.f33932i = consentStatus == null ? null : consentStatus.getValue();
        return this;
    }

    public SyncUrlGenerator withUdid(String str) {
        this.f33930g = str;
        return this;
    }
}

package com.mopub.common.privacy;

import android.content.Context;
import com.mopub.common.BaseUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import com.mopub.network.PlayServicesUrlRewriter;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/SyncUrlGenerator.class */
public class SyncUrlGenerator extends BaseUrlGenerator {

    /* renamed from: a */
    private final Context f58971a;

    /* renamed from: b */
    private String f58972b;

    /* renamed from: c */
    private String f58973c;

    /* renamed from: d */
    private String f58974d;

    /* renamed from: e */
    private String f58975e;

    /* renamed from: f */
    private final String f58976f;

    /* renamed from: g */
    private String f58977g;

    /* renamed from: h */
    private String f58978h;

    /* renamed from: i */
    private String f58979i;

    /* renamed from: j */
    private String f58980j;

    /* renamed from: k */
    private String f58981k;

    /* renamed from: l */
    private Boolean f58982l;

    /* renamed from: m */
    private boolean f58983m;

    /* renamed from: n */
    private Boolean f58984n;

    public SyncUrlGenerator(Context context, String str) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        this.f58971a = context.getApplicationContext();
        this.f58976f = str;
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public String generateUrlString(String str) {
        m6787a(str, Constants.GDPR_SYNC_HANDLER);
        m6783b("id", this.f58972b);
        m6783b("nv", "5.16.4");
        m6781d();
        m6780e();
        m6783b("last_changed_ms", this.f58974d);
        m6783b("last_consent_status", this.f58975e);
        m6783b("current_consent_status", this.f58976f);
        m6783b("consent_change_reason", this.f58977g);
        m6783b("consented_vendor_list_version", this.f58978h);
        m6783b("consented_privacy_policy_version", this.f58979i);
        m6783b("cached_vendor_list_iab_hash", this.f58980j);
        m6783b("extras", this.f58981k);
        m6783b("consent_ifa", this.f58973c);
        m6788a("gdpr_applies", this.f58982l);
        m6788a("force_gdpr_applies", Boolean.valueOf(this.f58983m));
        m6788a("forced_gdpr_applies_changed", this.f58984n);
        m6783b("bundle", ClientMetadata.getInstance(this.f58971a).getAppPackageName());
        m6783b("dnt", PlayServicesUrlRewriter.DO_NOT_TRACK_TEMPLATE);
        m6783b("mid", PlayServicesUrlRewriter.MOPUB_ID_TEMPLATE);
        return m6785b();
    }

    public SyncUrlGenerator withAdUnitId(String str) {
        this.f58972b = str;
        return this;
    }

    public SyncUrlGenerator withCachedVendorListIabHash(String str) {
        this.f58980j = str;
        return this;
    }

    public SyncUrlGenerator withConsentChangeReason(String str) {
        this.f58977g = str;
        return this;
    }

    public SyncUrlGenerator withConsentedIfa(String str) {
        this.f58973c = str;
        return this;
    }

    public SyncUrlGenerator withConsentedPrivacyPolicyVersion(String str) {
        this.f58979i = str;
        return this;
    }

    public SyncUrlGenerator withConsentedVendorListVersion(String str) {
        this.f58978h = str;
        return this;
    }

    public SyncUrlGenerator withExtras(String str) {
        this.f58981k = str;
        return this;
    }

    public SyncUrlGenerator withForceGdprApplies(boolean z) {
        this.f58983m = z;
        return this;
    }

    public SyncUrlGenerator withForceGdprAppliesChanged(Boolean bool) {
        this.f58984n = bool;
        return this;
    }

    public SyncUrlGenerator withGdprApplies(Boolean bool) {
        this.f58982l = bool;
        return this;
    }

    public SyncUrlGenerator withLastChangedMs(String str) {
        this.f58974d = str;
        return this;
    }

    public SyncUrlGenerator withLastConsentStatus(ConsentStatus consentStatus) {
        this.f58975e = consentStatus == null ? null : consentStatus.getValue();
        return this;
    }
}

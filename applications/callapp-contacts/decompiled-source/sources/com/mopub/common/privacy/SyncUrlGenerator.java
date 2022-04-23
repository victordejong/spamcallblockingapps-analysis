package com.mopub.common.privacy;

import android.content.Context;
import com.mopub.common.BaseUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import com.mopub.network.PlayServicesUrlRewriter;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/SyncUrlGenerator.class */
public class SyncUrlGenerator extends BaseUrlGenerator {

    /* renamed from: a  reason: collision with root package name */
    private final Context f33983a;

    /* renamed from: b  reason: collision with root package name */
    private String f33984b;

    /* renamed from: c  reason: collision with root package name */
    private String f33985c;

    /* renamed from: d  reason: collision with root package name */
    private String f33986d;
    private String e;
    private final String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private Boolean l;
    private boolean m;
    private Boolean n;

    public SyncUrlGenerator(Context context, String str) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        this.f33983a = context.getApplicationContext();
        this.f = str;
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public String generateUrlString(String str) {
        a(str, Constants.GDPR_SYNC_HANDLER);
        b("id", this.f33984b);
        b("nv", "5.16.4");
        d();
        e();
        b("last_changed_ms", this.f33986d);
        b("last_consent_status", this.e);
        b("current_consent_status", this.f);
        b("consent_change_reason", this.g);
        b("consented_vendor_list_version", this.h);
        b("consented_privacy_policy_version", this.i);
        b("cached_vendor_list_iab_hash", this.j);
        b("extras", this.k);
        b("consent_ifa", this.f33985c);
        a("gdpr_applies", this.l);
        a("force_gdpr_applies", Boolean.valueOf(this.m));
        a("forced_gdpr_applies_changed", this.n);
        b("bundle", ClientMetadata.getInstance(this.f33983a).getAppPackageName());
        b("dnt", PlayServicesUrlRewriter.DO_NOT_TRACK_TEMPLATE);
        b("mid", PlayServicesUrlRewriter.MOPUB_ID_TEMPLATE);
        return b();
    }

    public SyncUrlGenerator withAdUnitId(String str) {
        this.f33984b = str;
        return this;
    }

    public SyncUrlGenerator withCachedVendorListIabHash(String str) {
        this.j = str;
        return this;
    }

    public SyncUrlGenerator withConsentChangeReason(String str) {
        this.g = str;
        return this;
    }

    public SyncUrlGenerator withConsentedIfa(String str) {
        this.f33985c = str;
        return this;
    }

    public SyncUrlGenerator withConsentedPrivacyPolicyVersion(String str) {
        this.i = str;
        return this;
    }

    public SyncUrlGenerator withConsentedVendorListVersion(String str) {
        this.h = str;
        return this;
    }

    public SyncUrlGenerator withExtras(String str) {
        this.k = str;
        return this;
    }

    public SyncUrlGenerator withForceGdprApplies(boolean z) {
        this.m = z;
        return this;
    }

    public SyncUrlGenerator withForceGdprAppliesChanged(Boolean bool) {
        this.n = bool;
        return this;
    }

    public SyncUrlGenerator withGdprApplies(Boolean bool) {
        this.l = bool;
        return this;
    }

    public SyncUrlGenerator withLastChangedMs(String str) {
        this.f33986d = str;
        return this;
    }

    public SyncUrlGenerator withLastConsentStatus(ConsentStatus consentStatus) {
        this.e = consentStatus == null ? null : consentStatus.getValue();
        return this;
    }
}

package com.mopub.common.privacy;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.BaseUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import com.mopub.network.PlayServicesUrlRewriter;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/SyncUrlGenerator.class */
public class SyncUrlGenerator extends BaseUrlGenerator {
    @NonNull

    /* renamed from: e */
    public final Context f8312e;
    @Nullable

    /* renamed from: f */
    public String f8313f;
    @Nullable

    /* renamed from: g */
    public String f8314g;
    @Nullable

    /* renamed from: h */
    public String f8315h;
    @Nullable

    /* renamed from: i */
    public String f8316i;
    @NonNull

    /* renamed from: j */
    public final String f8317j;
    @Nullable

    /* renamed from: k */
    public String f8318k;
    @Nullable

    /* renamed from: l */
    public String f8319l;
    @Nullable

    /* renamed from: m */
    public String f8320m;
    @Nullable

    /* renamed from: n */
    public String f8321n;
    @Nullable

    /* renamed from: o */
    public String f8322o;
    @Nullable

    /* renamed from: p */
    public Boolean f8323p;

    /* renamed from: q */
    public boolean f8324q;
    @Nullable

    /* renamed from: r */
    public Boolean f8325r;

    public SyncUrlGenerator(@NonNull Context context, @NonNull String str) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        this.f8312e = context.getApplicationContext();
        this.f8317j = str;
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public String generateUrlString(@NonNull String str) {
        m30863b(str, Constants.GDPR_SYNC_HANDLER);
        m30868a("id", this.f8313f);
        m30868a("nv", "5.11.1");
        m30865b();
        m30862c();
        m30868a("last_changed_ms", this.f8315h);
        m30868a("last_consent_status", this.f8316i);
        m30868a("current_consent_status", this.f8317j);
        m30868a("consent_change_reason", this.f8318k);
        m30868a("consented_vendor_list_version", this.f8319l);
        m30868a("consented_privacy_policy_version", this.f8320m);
        m30868a("cached_vendor_list_iab_hash", this.f8321n);
        m30868a("extras", this.f8322o);
        m30868a("udid", this.f8314g);
        m30869a("gdpr_applies", this.f8323p);
        m30869a("force_gdpr_applies", Boolean.valueOf(this.f8324q));
        m30869a("forced_gdpr_applies_changed", this.f8325r);
        m30868a("bundle", ClientMetadata.getInstance(this.f8312e).getAppPackageName());
        m30868a("dnt", "mp_tmpl_do_not_track");
        m30868a("mid", PlayServicesUrlRewriter.MOPUB_ID_TEMPLATE);
        return m30861d();
    }

    public SyncUrlGenerator withAdUnitId(@Nullable String str) {
        this.f8313f = str;
        return this;
    }

    public SyncUrlGenerator withCachedVendorListIabHash(@Nullable String str) {
        this.f8321n = str;
        return this;
    }

    public SyncUrlGenerator withConsentChangeReason(@Nullable String str) {
        this.f8318k = str;
        return this;
    }

    public SyncUrlGenerator withConsentedPrivacyPolicyVersion(@Nullable String str) {
        this.f8320m = str;
        return this;
    }

    public SyncUrlGenerator withConsentedVendorListVersion(@Nullable String str) {
        this.f8319l = str;
        return this;
    }

    public SyncUrlGenerator withExtras(@Nullable String str) {
        this.f8322o = str;
        return this;
    }

    public SyncUrlGenerator withForceGdprApplies(boolean z) {
        this.f8324q = z;
        return this;
    }

    public SyncUrlGenerator withForceGdprAppliesChanged(@Nullable Boolean bool) {
        this.f8325r = bool;
        return this;
    }

    public SyncUrlGenerator withGdprApplies(@Nullable Boolean bool) {
        this.f8323p = bool;
        return this;
    }

    public SyncUrlGenerator withLastChangedMs(@Nullable String str) {
        this.f8315h = str;
        return this;
    }

    public SyncUrlGenerator withLastConsentStatus(@Nullable ConsentStatus consentStatus) {
        this.f8316i = consentStatus == null ? null : consentStatus.getValue();
        return this;
    }

    public SyncUrlGenerator withUdid(@Nullable String str) {
        this.f8314g = str;
        return this;
    }
}

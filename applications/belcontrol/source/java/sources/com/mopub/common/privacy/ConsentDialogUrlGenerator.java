package com.mopub.common.privacy;

import android.content.Context;
import com.mopub.common.BaseUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/ConsentDialogUrlGenerator.class */
public class ConsentDialogUrlGenerator extends BaseUrlGenerator {

    /* renamed from: e */
    public final Context f4420e;

    /* renamed from: f */
    public final String f4421f;

    /* renamed from: g */
    public final String f4422g;

    /* renamed from: h */
    public Boolean f4423h;

    /* renamed from: i */
    public boolean f4424i;

    /* renamed from: j */
    public String f4425j;

    /* renamed from: k */
    public String f4426k;

    public ConsentDialogUrlGenerator(Context context, String str, String str2) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        this.f4420e = context.getApplicationContext();
        this.f4421f = str;
        this.f4422g = str2;
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public String generateUrlString(String str) {
        m4022h(str, Constants.GDPR_CONSENT_HANDLER);
        m4028b("id", this.f4421f);
        m4028b("current_consent_status", this.f4422g);
        m4028b("nv", "5.15.0");
        m4026d();
        m4025e();
        m4028b("language", ClientMetadata.getCurrentLanguage(this.f4420e));
        m4029a("gdpr_applies", this.f4423h);
        m4029a("force_gdpr_applies", Boolean.valueOf(this.f4424i));
        m4028b("consented_vendor_list_version", this.f4425j);
        m4028b("consented_privacy_policy_version", this.f4426k);
        m4028b("bundle", ClientMetadata.getInstance(this.f4420e).getAppPackageName());
        return m4024f();
    }

    /* renamed from: m */
    public ConsentDialogUrlGenerator m3836m(String str) {
        this.f4426k = str;
        return this;
    }

    /* renamed from: n */
    public ConsentDialogUrlGenerator m3835n(String str) {
        this.f4425j = str;
        return this;
    }

    /* renamed from: o */
    public ConsentDialogUrlGenerator m3834o(boolean z) {
        this.f4424i = z;
        return this;
    }

    /* renamed from: p */
    public ConsentDialogUrlGenerator m3833p(Boolean bool) {
        this.f4423h = bool;
        return this;
    }
}

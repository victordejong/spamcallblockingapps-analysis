package com.mopub.common.privacy;

import android.content.Context;
import com.mopub.common.BaseUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/ConsentDialogUrlGenerator.class */
public class ConsentDialogUrlGenerator extends BaseUrlGenerator {

    /* renamed from: a */
    Boolean f58897a;

    /* renamed from: b */
    boolean f58898b;

    /* renamed from: c */
    String f58899c;

    /* renamed from: d */
    String f58900d;

    /* renamed from: e */
    private final Context f58901e;

    /* renamed from: f */
    private final String f58902f;

    /* renamed from: g */
    private final String f58903g;

    public ConsentDialogUrlGenerator(Context context, String str, String str2) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        this.f58901e = context.getApplicationContext();
        this.f58902f = str;
        this.f58903g = str2;
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public String generateUrlString(String str) {
        m6787a(str, Constants.GDPR_CONSENT_HANDLER);
        m6783b("id", this.f58902f);
        m6783b("current_consent_status", this.f58903g);
        m6783b("nv", "5.16.4");
        m6781d();
        m6780e();
        m6783b("language", ClientMetadata.getCurrentLanguage(this.f58901e));
        m6788a("gdpr_applies", this.f58897a);
        m6788a("force_gdpr_applies", Boolean.valueOf(this.f58898b));
        m6783b("consented_vendor_list_version", this.f58899c);
        m6783b("consented_privacy_policy_version", this.f58900d);
        m6783b("bundle", ClientMetadata.getInstance(this.f58901e).getAppPackageName());
        return m6785b();
    }
}

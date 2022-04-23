package com.mopub.common.privacy;

import android.content.Context;
import com.mopub.common.BaseUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/ConsentDialogUrlGenerator.class */
public class ConsentDialogUrlGenerator extends BaseUrlGenerator {

    /* renamed from: a  reason: collision with root package name */
    Boolean f33948a;

    /* renamed from: b  reason: collision with root package name */
    boolean f33949b;

    /* renamed from: c  reason: collision with root package name */
    String f33950c;

    /* renamed from: d  reason: collision with root package name */
    String f33951d;
    private final Context e;
    private final String f;
    private final String g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConsentDialogUrlGenerator(Context context, String str, String str2) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        this.e = context.getApplicationContext();
        this.f = str;
        this.g = str2;
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public String generateUrlString(String str) {
        a(str, Constants.GDPR_CONSENT_HANDLER);
        b("id", this.f);
        b("current_consent_status", this.g);
        b("nv", "5.16.4");
        d();
        e();
        b("language", ClientMetadata.getCurrentLanguage(this.e));
        a("gdpr_applies", this.f33948a);
        a("force_gdpr_applies", Boolean.valueOf(this.f33949b));
        b("consented_vendor_list_version", this.f33950c);
        b("consented_privacy_policy_version", this.f33951d);
        b("bundle", ClientMetadata.getInstance(this.e).getAppPackageName());
        return b();
    }
}

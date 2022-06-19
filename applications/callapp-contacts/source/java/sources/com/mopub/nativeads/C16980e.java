package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import com.mopub.common.AdUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.MoPub;
/* renamed from: com.mopub.nativeads.e */
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/e.class */
public final class C16980e extends AdUrlGenerator {

    /* renamed from: g */
    String f60165g;

    /* renamed from: h */
    private String f60166h;

    public C16980e(Context context) {
        super(context);
    }

    /* renamed from: a */
    public final C16980e m6112a(RequestParameters requestParameters) {
        if (requestParameters != null) {
            this.f58648d = MoPub.canCollectPersonalInformation() ? requestParameters.getUserDataKeywords() : null;
            this.f58647c = requestParameters.getKeywords();
            this.f60166h = requestParameters.getDesiredAssets();
        }
        return this;
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public final String generateUrlString(String str) {
        m6787a(str, Constants.AD_HANDLER);
        m6793a(ClientMetadata.getInstance(this.f58645a));
        if (!TextUtils.isEmpty(this.f60166h)) {
            m6783b("assets", this.f60166h);
        }
        if (!TextUtils.isEmpty(this.f60165g)) {
            m6783b("MAGIC_NO", this.f60165g);
        }
        return m6785b();
    }

    @Override // com.mopub.common.AdUrlGenerator
    public final C16980e withAdUnitId(String str) {
        this.f58646b = str;
        return this;
    }
}

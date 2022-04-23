package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import com.mopub.common.AdUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.MoPub;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/e.class */
public final class e extends AdUrlGenerator {
    String g;
    private String h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final e a(RequestParameters requestParameters) {
        if (requestParameters != null) {
            this.f33777d = MoPub.canCollectPersonalInformation() ? requestParameters.getUserDataKeywords() : null;
            this.f33776c = requestParameters.getKeywords();
            this.h = requestParameters.getDesiredAssets();
        }
        return this;
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public final String generateUrlString(String str) {
        a(str, Constants.AD_HANDLER);
        a(ClientMetadata.getInstance(this.f33774a));
        if (!TextUtils.isEmpty(this.h)) {
            b("assets", this.h);
        }
        if (!TextUtils.isEmpty(this.g)) {
            b("MAGIC_NO", this.g);
        }
        return b();
    }

    @Override // com.mopub.common.AdUrlGenerator
    public final e withAdUnitId(String str) {
        this.f33775b = str;
        return this;
    }
}

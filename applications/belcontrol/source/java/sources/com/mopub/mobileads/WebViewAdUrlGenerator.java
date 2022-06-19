package com.mopub.mobileads;

import android.content.Context;
import com.mopub.common.AdUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/WebViewAdUrlGenerator.class */
public class WebViewAdUrlGenerator extends AdUrlGenerator {
    public WebViewAdUrlGenerator(Context context) {
        super(context);
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public String generateUrlString(String str) {
        m4022h(str, Constants.AD_HANDLER);
        m4021i("6");
        m4047m(ClientMetadata.getInstance(this.f4132e));
        m4054G(true);
        return m4024f();
    }
}

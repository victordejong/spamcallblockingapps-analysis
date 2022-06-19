package com.mopub.mobileads;

import android.content.Context;
import com.mopub.common.AdUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/WebViewAdUrlGenerator.class */
public class WebViewAdUrlGenerator extends AdUrlGenerator {
    public WebViewAdUrlGenerator(Context context) {
        super(context);
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public String generateUrlString(String str) {
        m6787a(str, Constants.AD_HANDLER);
        m6789a("6");
        m6793a(ClientMetadata.getInstance(this.f58645a));
        m6794a();
        return m6785b();
    }
}

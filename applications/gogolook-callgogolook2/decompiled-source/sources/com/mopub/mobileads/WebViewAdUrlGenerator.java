package com.mopub.mobileads;

import android.content.Context;
import com.mopub.common.AdUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.ExternalViewabilitySessionManager;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/WebViewAdUrlGenerator.class */
public class WebViewAdUrlGenerator extends AdUrlGenerator {

    /* renamed from: n */
    public final boolean f8828n;

    public WebViewAdUrlGenerator(Context context, boolean z) {
        super(context);
        this.f8828n = z;
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public String generateUrlString(String str) {
        m30863b(str, Constants.AD_HANDLER);
        m30870a("6");
        m30900a(ClientMetadata.getInstance(this.f7975e));
        m30897b(true);
        m30867a(this.f8828n);
        m30896c(ExternalViewabilitySessionManager.ViewabilityVendor.getEnabledVendorKey());
        return m30861d();
    }
}

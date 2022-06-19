package com.mopub.mobileads.dfp.adapters;

import android.content.Context;
import android.view.View;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/dfp/adapters/MoPubUnifiedNativeAdMapper$a.class */
public class MoPubUnifiedNativeAdMapper$a implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ Context f8986a;

    /* renamed from: b */
    public final /* synthetic */ String f8987b;

    public MoPubUnifiedNativeAdMapper$a(Context context, String str) {
        this.f8986a = context;
        this.f8987b = str;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).build().handleUrl(this.f8986a, this.f8987b);
    }
}

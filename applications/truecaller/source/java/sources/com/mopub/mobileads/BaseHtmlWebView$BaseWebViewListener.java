package com.mopub.mobileads;

import android.view.View;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener.class */
public interface BaseHtmlWebView$BaseWebViewListener {
    void onClicked();

    void onClose();

    void onExpand();

    void onFailed();

    void onFailedToLoad(MoPubErrorCode moPubErrorCode);

    void onLoaded(View view);

    void onRenderProcessGone(MoPubErrorCode moPubErrorCode);

    void onResize(boolean z);
}

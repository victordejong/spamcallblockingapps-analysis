package com.explorestack.iab.mraid;

import com.explorestack.iab.utils.AbstractC9588c;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/MraidInterstitialListener.class */
public interface MraidInterstitialListener {
    void onClose(MraidInterstitial mraidInterstitial);

    void onError(MraidInterstitial mraidInterstitial, int i);

    void onLoaded(MraidInterstitial mraidInterstitial);

    void onOpenBrowser(MraidInterstitial mraidInterstitial, String str, AbstractC9588c abstractC9588c);

    void onPlayVideo(MraidInterstitial mraidInterstitial, String str);

    void onShown(MraidInterstitial mraidInterstitial);
}

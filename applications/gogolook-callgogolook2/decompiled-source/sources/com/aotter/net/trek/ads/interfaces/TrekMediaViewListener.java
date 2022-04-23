package com.aotter.net.trek.ads.interfaces;

import android.app.Dialog;
import com.aotter.net.trek.model.CatWalk;
import com.aotter.net.trek.model.NativeAd;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/interfaces/TrekMediaViewListener.class */
public interface TrekMediaViewListener {
    void actionBrowser(CatWalk.BrowserBean browserBean);

    void actionCapture();

    void actionClose(Dialog dialog);

    void actionPopup(String str);

    void actionVideo(CatWalk.VideoBean videoBean);

    void onAdClick(CatWalk catWalk, NativeAd nativeAd);
}

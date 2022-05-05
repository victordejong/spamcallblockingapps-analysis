package com.aotter.net.trek.ads;

import com.aotter.net.trek.ads.interfaces.InstreamVideoListener;
import com.aotter.net.trek.model.VideoConfig;
import com.aotter.net.trek.network.VideoDownloader;
import com.aotter.net.trek.util.TrekLog;
/* renamed from: com.aotter.net.trek.ads.c */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/c.class */
public final class C1663c implements VideoDownloader.VideoDownloaderListener {

    /* renamed from: a */
    public final /* synthetic */ VideoConfig f1182a;

    /* renamed from: b */
    public final /* synthetic */ InstreamVideoListener f1183b;

    public C1663c(VideoConfig videoConfig, InstreamVideoListener instreamVideoListener) {
        this.f1182a = videoConfig;
        this.f1183b = instreamVideoListener;
    }

    @Override // com.aotter.net.trek.network.VideoDownloader.VideoDownloaderListener
    public void onComplete(boolean z) {
        String str;
        boolean b;
        if (z) {
            b = AdCache.m36592b(this.f1182a);
            if (b) {
                InstreamVideoListener instreamVideoListener = this.f1183b;
                if (instreamVideoListener != null) {
                    instreamVideoListener.onInstreamVideoLoadSuccess();
                }
                str = "success to download VAST video.";
                TrekLog.m36319d(str);
            }
        }
        str = "Failed to download VAST video.";
        TrekLog.m36319d(str);
    }
}

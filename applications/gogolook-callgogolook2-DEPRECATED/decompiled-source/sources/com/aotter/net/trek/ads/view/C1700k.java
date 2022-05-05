package com.aotter.net.trek.ads.view;

import android.content.Context;
import com.aotter.net.gson.Gson;
import com.aotter.net.trek.ads.view.TextureVideoView;
import com.aotter.net.trek.api.MFTCApiClient;
import com.aotter.net.trek.model.NativeAd;
import com.aotter.net.trek.model.VideoSession;
/* renamed from: com.aotter.net.trek.ads.view.k */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/k.class */
public class C1700k implements TextureVideoView.OnPlayerStateChangeListener {

    /* renamed from: a */
    public final /* synthetic */ NativeVideoView f1388a;

    public C1700k(NativeVideoView nativeVideoView) {
        this.f1388a = nativeVideoView;
    }

    @Override // com.aotter.net.trek.ads.view.TextureVideoView.OnPlayerStateChangeListener
    public void onStateChange(int i, int i2) {
        VideoSession videoSession;
        TextureVideoView textureVideoView;
        VideoSession videoSession2;
        Gson gson;
        VideoSession videoSession3;
        Context context;
        NativeAd nativeAd;
        VideoSession videoSession4;
        int i3;
        this.f1388a.f1289l = i2 / 1000;
        if (i == 3) {
            videoSession4 = this.f1388a.f1291n;
            i3 = this.f1388a.f1289l;
            videoSession4.setStart(i3);
        }
        if (i == 4) {
            videoSession = this.f1388a.f1291n;
            textureVideoView = this.f1388a.f1281d;
            videoSession.setEnd(textureVideoView.getCurrentPosition() / 1000);
            videoSession2 = this.f1388a.f1291n;
            if (videoSession2.getEnd() != 0) {
                gson = this.f1388a.f1290m;
                videoSession3 = this.f1388a.f1291n;
                String json = gson.toJson(videoSession3);
                context = this.f1388a.f1283f;
                MFTCApiClient sharedInstance = MFTCApiClient.getSharedInstance(context);
                nativeAd = this.f1388a.f1292o;
                sharedInstance.sendVideoSession(json, nativeAd.getUrlSession());
            }
        }
    }
}

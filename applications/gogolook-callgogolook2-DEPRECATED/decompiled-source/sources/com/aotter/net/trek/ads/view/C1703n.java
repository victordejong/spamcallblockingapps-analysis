package com.aotter.net.trek.ads.view;

import android.content.Context;
import android.media.MediaPlayer;
import com.aotter.net.gson.Gson;
import com.aotter.net.trek.api.MFTCApiClient;
import com.aotter.net.trek.model.NativeAd;
import com.aotter.net.trek.model.VideoSession;
/* renamed from: com.aotter.net.trek.ads.view.n */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/n.class */
public class C1703n implements MediaPlayer.OnCompletionListener {

    /* renamed from: a */
    public final /* synthetic */ NativeVideoView f1393a;

    public C1703n(NativeVideoView nativeVideoView) {
        this.f1393a = nativeVideoView;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        VideoSession videoSession;
        TextureVideoView textureVideoView;
        Gson gson;
        VideoSession videoSession2;
        Context context;
        NativeAd nativeAd;
        TextureVideoView textureVideoView2;
        VideoSession videoSession3;
        videoSession = this.f1393a.f1291n;
        textureVideoView = this.f1393a.f1281d;
        videoSession.setEnd(textureVideoView.getDuration() / 1000);
        gson = this.f1393a.f1290m;
        videoSession2 = this.f1393a.f1291n;
        String json = gson.toJson(videoSession2);
        context = this.f1393a.f1283f;
        MFTCApiClient sharedInstance = MFTCApiClient.getSharedInstance(context);
        nativeAd = this.f1393a.f1292o;
        sharedInstance.sendVideoSession(json, nativeAd.getUrlSession());
        textureVideoView2 = this.f1393a.f1281d;
        textureVideoView2.start();
        videoSession3 = this.f1393a.f1291n;
        videoSession3.setStart(0);
    }
}

package com.aotter.net.trek.ads.view;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.aotter.net.gson.Gson;
import com.aotter.net.trek.ads.impression.ImpressionInterface;
import com.aotter.net.trek.ads.interfaces.AdListener;
import com.aotter.net.trek.ads.video.BaseVideoPlayerActivity;
import com.aotter.net.trek.api.MFTCApiClient;
import com.aotter.net.trek.model.NativeAd;
import com.aotter.net.trek.model.VideoSession;
/* renamed from: com.aotter.net.trek.ads.view.j */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/j.class */
public class View$OnClickListenerC1699j implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ NativeVideoView f1387a;

    public View$OnClickListenerC1699j(NativeVideoView nativeVideoView) {
        this.f1387a = nativeVideoView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        boolean z;
        String str;
        VideoSession videoSession;
        TextureVideoView textureVideoView;
        Gson gson;
        VideoSession videoSession2;
        Context context;
        NativeAd nativeAd;
        Context context2;
        NativeAd nativeAd2;
        String str2;
        NativeAd nativeAd3;
        NativeAd nativeAd4;
        NativeAd nativeAd5;
        NativeAd nativeAd6;
        AdListener adListener;
        ImpressionInterface impressionInterface;
        Context context3;
        NativeAd nativeAd7;
        z = this.f1387a.f1288k;
        if (!z) {
            impressionInterface = this.f1387a.f1294q;
            context3 = this.f1387a.f1283f;
            nativeAd7 = this.f1387a.f1292o;
            impressionInterface.recordImpression(context3, nativeAd7, null);
            this.f1387a.f1288k = true;
        }
        str = this.f1387a.f1293p;
        if (!TextUtils.isEmpty(str)) {
            videoSession = this.f1387a.f1291n;
            textureVideoView = this.f1387a.f1281d;
            videoSession.setEnd(textureVideoView.getCurrentPosition() / 1000);
            gson = this.f1387a.f1290m;
            videoSession2 = this.f1387a.f1291n;
            String json = gson.toJson(videoSession2);
            context = this.f1387a.f1283f;
            MFTCApiClient sharedInstance = MFTCApiClient.getSharedInstance(context);
            nativeAd = this.f1387a.f1292o;
            sharedInstance.sendVideoSession(json, nativeAd.getUrlSession());
            context2 = this.f1387a.f1283f;
            nativeAd2 = this.f1387a.f1292o;
            str2 = this.f1387a.f1293p;
            nativeAd3 = this.f1387a.f1292o;
            String callToAction = nativeAd3.getCallToAction();
            nativeAd4 = this.f1387a.f1292o;
            String urlOriginal = nativeAd4.getUrlOriginal();
            nativeAd5 = this.f1387a.f1292o;
            String adUrl = nativeAd5.getAdUrl();
            nativeAd6 = this.f1387a.f1292o;
            String urlSession = nativeAd6.getUrlSession();
            adListener = this.f1387a.f1295r;
            BaseVideoPlayerActivity.startNativeVideo(context2, nativeAd2, str2, callToAction, urlOriginal, adUrl, urlSession, adListener);
        }
    }
}

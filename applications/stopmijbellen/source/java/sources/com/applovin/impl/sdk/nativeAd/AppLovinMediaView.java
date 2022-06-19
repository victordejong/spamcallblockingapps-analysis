package com.applovin.impl.sdk.nativeAd;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.StrictMode;
import android.support.p012v4.media.C0082b;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.applovin.impl.adview.AppLovinTouchToClickListener;
import com.applovin.impl.adview.AppLovinVideoView;
import com.applovin.impl.p035a.C0875a;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.utils.AbstractC1485a;
import com.applovin.sdk.C1583R;
import java.util.concurrent.atomic.AtomicBoolean;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/nativeAd/AppLovinMediaView.class */
public class AppLovinMediaView extends FrameLayout {
    private static final String TAG = "AppLovinMediaView";

    /* renamed from: ad */
    private final AppLovinNativeAdImpl f5381ad;
    private final ImageView imageView;
    private final AtomicBoolean impressionTracked = new AtomicBoolean();
    private boolean isVideoMuted = true;
    private final AbstractC1485a lifecycleCallbacksAdapter;
    private final C1479t logger;
    private MediaPlayer mediaPlayer;
    private final C1408l sdk;
    private final C1430a videoUiEventHandler;
    private AppLovinVideoView videoView;

    /* renamed from: com.applovin.impl.sdk.nativeAd.AppLovinMediaView$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/nativeAd/AppLovinMediaView$a.class */
    public class C1430a implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener {
        private C1430a() {
            AppLovinMediaView.this = r4;
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            AppLovinMediaView.this.logger.m5116b(AppLovinMediaView.TAG, "Video completed");
            if (AppLovinMediaView.this.videoView != null) {
                AppLovinMediaView.this.videoView.setVisibility(8);
            }
            AppLovinMediaView.this.imageView.setVisibility(0);
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            C1479t c1479t = AppLovinMediaView.this.logger;
            c1479t.m5111e(AppLovinMediaView.TAG, "Encountered media error: " + ("Video view error (" + i + "," + i2 + ")") + " for ad: " + AppLovinMediaView.this.f5381ad);
            return true;
        }

        @Override // android.media.MediaPlayer.OnInfoListener
        public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
            C1479t c1479t = AppLovinMediaView.this.logger;
            c1479t.m5116b(AppLovinMediaView.TAG, "MediaPlayer Info: (" + i + ", " + i2 + ")");
            return false;
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            AppLovinMediaView.this.mediaPlayer = mediaPlayer;
            mediaPlayer.setOnInfoListener(AppLovinMediaView.this.videoUiEventHandler);
            mediaPlayer.setOnErrorListener(AppLovinMediaView.this.videoUiEventHandler);
            float f = !AppLovinMediaView.this.isVideoMuted ? 1 : 0;
            mediaPlayer.setVolume(f, f);
            C1479t c1479t = AppLovinMediaView.this.logger;
            StringBuilder m8752j = C0082b.m8752j("MediaPlayer prepared: ");
            m8752j.append(AppLovinMediaView.this.mediaPlayer);
            c1479t.m5116b(AppLovinMediaView.TAG, m8752j.toString());
        }
    }

    public AppLovinMediaView(AppLovinNativeAdImpl appLovinNativeAdImpl, C1408l c1408l, Context context) {
        super(context);
        C1430a c1430a = new C1430a();
        this.videoUiEventHandler = c1430a;
        AbstractC1485a abstractC1485a = new AbstractC1485a() { // from class: com.applovin.impl.sdk.nativeAd.AppLovinMediaView.1
            @Override // com.applovin.impl.sdk.utils.AbstractC1485a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
                if (AppLovinMediaView.this.videoView != null) {
                    AppLovinMediaView.this.videoView.pause();
                }
            }

            @Override // com.applovin.impl.sdk.utils.AbstractC1485a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
                if (AppLovinMediaView.this.videoView != null) {
                    AppLovinMediaView.this.videoView.start();
                }
            }
        };
        this.lifecycleCallbacksAdapter = abstractC1485a;
        setBackgroundColor(-16777216);
        this.f5381ad = appLovinNativeAdImpl;
        this.sdk = c1408l;
        this.logger = c1408l.m5542A();
        LayoutInflater.from(context).inflate(C1583R.layout.applovin_native_ad_media_view, (ViewGroup) this, true);
        Uri mainImageUri = appLovinNativeAdImpl.getMainImageUri();
        C0875a vastAd = appLovinNativeAdImpl.getVastAd();
        Uri mo5908g = vastAd != null ? vastAd.mo5908g() : null;
        if (mainImageUri == null && mo5908g == null) {
            throw new IllegalStateException("AppLovin native ad missing image AND video resources");
        }
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        setOnTouchListener(new AppLovinTouchToClickListener(c1408l, C1314b.f4732aN, context, appLovinNativeAdImpl.getClickHandler()));
        ImageView imageView = (ImageView) findViewById(C1583R.C1586id.image_view);
        this.imageView = imageView;
        if (mainImageUri != null) {
            imageView.setOnClickListener(appLovinNativeAdImpl.getClickHandler());
            imageView.setImageURI(mainImageUri);
        }
        if (mo5908g != null) {
            c1408l.m5491ad().m6067a(abstractC1485a);
            AppLovinVideoView appLovinVideoView = new AppLovinVideoView(context, c1408l);
            this.videoView = appLovinVideoView;
            appLovinVideoView.setOnPreparedListener(c1430a);
            this.videoView.setOnCompletionListener(c1430a);
            this.videoView.setOnErrorListener(c1430a);
            this.videoView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1, 17));
            addView(this.videoView);
            this.videoView.setVideoURI(mo5908g);
            imageView.setVisibility(8);
        } else {
            this.videoView = null;
        }
        StrictMode.setThreadPolicy(allowThreadDiskReads);
    }

    public void destroy() {
        try {
            setOnTouchListener(null);
            this.sdk.m5491ad().m6065b(this.lifecycleCallbacksAdapter);
            AppLovinVideoView appLovinVideoView = this.videoView;
            if (appLovinVideoView != null) {
                appLovinVideoView.pause();
                this.videoView.stopPlayback();
                this.videoView.setOnPreparedListener(null);
                this.videoView.setOnCompletionListener(null);
                this.videoView.setOnErrorListener(null);
                this.videoView = null;
            }
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer != null) {
                mediaPlayer.release();
                this.mediaPlayer = null;
            }
            removeAllViews();
        } catch (Throwable th) {
            th.toString();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.impressionTracked.compareAndSet(false, true)) {
            for (String str : this.f5381ad.getImpressionUrls()) {
                this.sdk.m5520W().dispatchPostbackAsync(str, null);
            }
            this.f5381ad.getAdEventTracker().m6064a(this);
            this.f5381ad.getAdEventTracker().mo6038d();
        }
        AppLovinVideoView appLovinVideoView = this.videoView;
        if (appLovinVideoView != null) {
            appLovinVideoView.start();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        AppLovinVideoView appLovinVideoView = this.videoView;
        if (appLovinVideoView != null) {
            appLovinVideoView.pause();
        }
        super.onDetachedFromWindow();
    }
}

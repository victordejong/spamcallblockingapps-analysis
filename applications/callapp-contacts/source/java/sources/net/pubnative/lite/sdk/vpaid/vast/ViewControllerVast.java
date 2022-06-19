package net.pubnative.lite.sdk.vpaid.vast;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.iab.omid.library.pubnativenet.adsession.EnumC16422f;
import net.pubnative.lite.sdk.core.C20558R;
import net.pubnative.lite.sdk.utils.Logger;
import net.pubnative.lite.sdk.vpaid.VideoAdController;
import net.pubnative.lite.sdk.vpaid.VideoAdView;
import net.pubnative.lite.sdk.vpaid.utils.ImageUtils;
import net.pubnative.lite.sdk.vpaid.utils.Utils;
import net.pubnative.lite.sdk.vpaid.widget.CountDownView;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/vast/ViewControllerVast.class */
public class ViewControllerVast implements View.OnClickListener {
    private static final String LOG_TAG = "ViewControllerVast";
    private final VideoAdController mAdController;
    private VideoAdView mBannerView;
    private View mControlsLayout;
    private CountDownView mCountdownView;
    private View mEndCardLayout;
    private ImageView mEndCardView;
    private boolean mMuteState;
    private ImageView mMuteView;
    private View mSkipView;
    private Surface mSurface;
    private View mVideoPlayerLayout;
    private VideoAdView.VisibilityListener mCreateVisibilityListener = new VideoAdView.VisibilityListener() { // from class: net.pubnative.lite.sdk.vpaid.vast.ViewControllerVast.2
        @Override // net.pubnative.lite.sdk.vpaid.VideoAdView.VisibilityListener
        public void onVisibilityChanged(int i) {
            try {
                if (ViewControllerVast.this.mAdController.adFinishedPlaying()) {
                    return;
                }
                if (i == 0) {
                    ViewControllerVast.this.mAdController.resume();
                } else {
                    ViewControllerVast.this.mAdController.pause();
                }
            } catch (Exception e) {
                String str = ViewControllerVast.LOG_TAG;
                Logger.m628e(str, "ViewControllerVast.createVisibilityListener: Log: " + Log.getStackTraceString(e));
            }
        }
    };
    private TextureView.SurfaceTextureListener mCreateTextureListener = new TextureView.SurfaceTextureListener() { // from class: net.pubnative.lite.sdk.vpaid.vast.ViewControllerVast.3
        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            ViewControllerVast.this.mSurface = new Surface(surfaceTexture);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            return false;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }
    };

    public ViewControllerVast(VideoAdController videoAdController) {
        this.mAdController = videoAdController;
    }

    private void closeSelf() {
        this.mAdController.closeSelf();
    }

    private void replayVideo() {
        this.mEndCardLayout.setVisibility(8);
        this.mVideoPlayerLayout.setVisibility(0);
        this.mAdController.playAd();
    }

    private void skipVideo() {
        this.mAdController.skipVideo();
    }

    public void adjustLayoutParams(int i, int i2) {
        this.mControlsLayout.setLayoutParams(Utils.calculateNewLayoutParams((FrameLayout.LayoutParams) this.mControlsLayout.getLayoutParams(), i, i2, this.mBannerView.getWidth(), this.mBannerView.getHeight(), Utils.StretchOption.NO_STRETCH));
    }

    public void buildVideoAdView(VideoAdView videoAdView) {
        Context context = videoAdView.getContext();
        this.mBannerView = videoAdView;
        videoAdView.setVisibilityListener(this.mCreateVisibilityListener);
        videoAdView.removeAllViews();
        View inflate = LayoutInflater.from(context).inflate(C20558R.layout.controls, (ViewGroup) videoAdView, false);
        this.mControlsLayout = inflate;
        inflate.setOnClickListener(new View.OnClickListener() { // from class: net.pubnative.lite.sdk.vpaid.vast.ViewControllerVast.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!ViewControllerVast.this.mAdController.isRewarded() || ViewControllerVast.this.mAdController.adFinishedPlaying()) {
                    ViewControllerVast.this.mAdController.getViewabilityAdSession().fireClick();
                    ViewControllerVast.this.mAdController.openUrl(null);
                }
            }
        });
        this.mVideoPlayerLayout = this.mControlsLayout.findViewById(C20558R.C20560id.videoPlayerLayout);
        View findViewById = this.mControlsLayout.findViewById(C20558R.C20560id.endCardLayout);
        this.mEndCardLayout = findViewById;
        findViewById.setVisibility(8);
        this.mEndCardView = (ImageView) this.mControlsLayout.findViewById(C20558R.C20560id.endCardView);
        this.mControlsLayout.findViewById(C20558R.C20560id.closeView).setOnClickListener(this);
        this.mControlsLayout.findViewById(C20558R.C20560id.replayView).setOnClickListener(this);
        this.mCountdownView = (CountDownView) this.mControlsLayout.findViewById(C20558R.C20560id.count_down);
        ((TextureView) this.mControlsLayout.findViewById(C20558R.C20560id.textureView)).setSurfaceTextureListener(this.mCreateTextureListener);
        ImageView imageView = (ImageView) this.mControlsLayout.findViewById(C20558R.C20560id.muteView);
        this.mMuteView = imageView;
        imageView.setOnClickListener(this);
        View findViewById2 = this.mControlsLayout.findViewById(C20558R.C20560id.skipView);
        this.mSkipView = findViewById2;
        findViewById2.setOnClickListener(this);
        this.mAdController.addViewabilityFriendlyObstruction(this.mControlsLayout, EnumC16422f.VIDEO_CONTROLS, "Video controls");
        videoAdView.addView(this.mControlsLayout);
    }

    public void destroy() {
        ImageView imageView = this.mEndCardView;
        if (imageView != null) {
            imageView.setImageDrawable(null);
        }
    }

    public void dismiss() {
        VideoAdView videoAdView = this.mBannerView;
        if (videoAdView != null) {
            videoAdView.removeAllViews();
        }
    }

    public Surface getSurface() {
        return this.mSurface;
    }

    public boolean isEndCard() {
        View view = this.mEndCardLayout;
        return (view == null || view.getVisibility() == 0) ? false : true;
    }

    public boolean isMute() {
        return this.mMuteState;
    }

    public void muteVideo() {
        boolean z = !this.mMuteState;
        this.mMuteState = z;
        this.mAdController.setVolume(z);
        if (this.mMuteState) {
            this.mMuteView.setImageResource(C20558R.C20559drawable.mute);
        } else {
            this.mMuteView.setImageResource(C20558R.C20559drawable.unmute);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == C20558R.C20560id.closeView) {
            closeSelf();
        } else if (view.getId() == C20558R.C20560id.skipView) {
            skipVideo();
        } else if (view.getId() == C20558R.C20560id.muteView) {
            muteVideo();
        } else if (view.getId() != C20558R.C20560id.replayView) {
        } else {
            replayVideo();
        }
    }

    public void postDelayed(Runnable runnable, long j) {
        this.mBannerView.postDelayed(runnable, j);
    }

    public void setProgress(int i, int i2) {
        this.mCountdownView.setProgress(i2 - i, i2);
    }

    public void showEndCard(String str) {
        this.mEndCardLayout.setVisibility(0);
        this.mVideoPlayerLayout.setVisibility(8);
        ImageUtils.setScaledImage(this.mEndCardView, str);
    }

    public void showSkipButton() {
        View view = this.mSkipView;
        if (view != null) {
            view.setVisibility(0);
            this.mSkipView.setClickable(true);
        }
    }
}

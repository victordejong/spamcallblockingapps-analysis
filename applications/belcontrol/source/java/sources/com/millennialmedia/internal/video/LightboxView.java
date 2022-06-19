package com.millennialmedia.internal.video;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.net.Uri;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.millennialmedia.C0764R;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.MMWebView;
import com.millennialmedia.internal.SizableStateManager;
import com.millennialmedia.internal.adcontrollers.LightboxController;
import com.millennialmedia.internal.utils.HttpUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.TrackingEvent;
import com.millennialmedia.internal.utils.Utils;
import com.millennialmedia.internal.utils.VideoTrackingEvent;
import com.millennialmedia.internal.utils.ViewUtils;
import com.millennialmedia.internal.video.MMVideoView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/LightboxView.class */
public class LightboxView extends RelativeLayout implements MMVideoView.MMVideoViewListener, View.OnTouchListener {
    private static final int COLLAPSING = 3;
    private static final int DEFAULT = 0;
    private static final int EXPANDED = 4;
    private static final int EXPANDING = 2;
    private static final int SWIPE_AWAY = 1;
    private static final String TAG = LightboxView.class.getSimpleName();
    private int defaultHeight;
    private int defaultWidth;
    private float downX;
    private float downY;
    private ImageView fullscreenCompanion;
    private MMWebView fullscreenCompanionWebView;
    private FrameLayout fullscreenContainer;
    private int fullscreenContainerTopMargin;
    private LightboxController.LightboxAd lightboxAd;
    private int lightboxBottomMargin;
    private int lightboxRightMargin;
    private LightboxViewListener lightboxViewListener;
    private ImageView minimizeButton;
    private float originalX;
    private float originalY;
    private ImageView replayButton;
    private float scaleFactor;
    private int topMargin;
    private MMVideoView videoView;
    private ViewUtils.ViewabilityWatcher videoViewabilityWatcher;
    private WindowManager windowManager;
    private boolean landscape = false;
    private ThreadUtils.ScheduledRunnable minimizeFadeOutRunnable = null;
    private boolean startFired = false;
    private boolean q1Fired = false;
    private boolean midpointFired = false;
    private boolean q3Fired = false;
    private boolean completeFired = false;
    private boolean fullscreenCompanionLoadedFired = false;
    private volatile int state = 0;
    private volatile boolean prepared = false;
    private volatile boolean complete = false;
    private volatile boolean animating = false;

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/LightboxView$LightboxViewListener.class */
    public interface LightboxViewListener {
        void onAdLeftApplication();

        void onClicked();

        void onCollapsed();

        void onExpanded();

        void onFailed();

        void onPrepared();

        void onReadyToStart();
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/LightboxView$MMVideoViewViewabilityListener.class */
    public static class MMVideoViewViewabilityListener implements ViewUtils.ViewabilityListener {
        public WeakReference<LightboxView> lightBoxViewRef;

        public MMVideoViewViewabilityListener(LightboxView lightboxView) {
            this.lightBoxViewRef = new WeakReference<>(lightboxView);
        }

        @Override // com.millennialmedia.internal.utils.ViewUtils.ViewabilityListener
        public void onViewableChanged(boolean z) {
            LightboxView lightboxView = this.lightBoxViewRef.get();
            if (lightboxView == null || lightboxView.complete || lightboxView.videoView == null) {
                return;
            }
            if (z) {
                lightboxView.videoView.start();
            } else {
                lightboxView.videoView.pause();
            }
        }
    }

    public LightboxView(Context context, final LightboxController.LightboxAd lightboxAd, LightboxViewListener lightboxViewListener) {
        super(context);
        this.windowManager = (WindowManager) context.getSystemService("window");
        getDisplaySize();
        Resources resources = getResources();
        this.defaultWidth = resources.getDimensionPixelSize(C0764R.dimen.mmadsdk_lightbox_width);
        this.defaultHeight = resources.getDimensionPixelSize(C0764R.dimen.mmadsdk_lightbox_height);
        this.lightboxBottomMargin = resources.getDimensionPixelSize(C0764R.dimen.mmadsdk_lightbox_bottom_margin);
        this.lightboxRightMargin = resources.getDimensionPixelSize(C0764R.dimen.mmadsdk_lightbox_right_margin);
        this.topMargin = resources.getDimensionPixelSize(C0764R.dimen.mmadsdk_lightbox_top_margin);
        this.fullscreenContainerTopMargin = resources.getDimensionPixelSize(C0764R.dimen.mmadsdk_lightbox_fullscreen_companion_top_margin);
        setBackgroundColor(resources.getColor(17170445));
        setOnTouchListener(this);
        this.lightboxViewListener = lightboxViewListener;
        this.lightboxAd = lightboxAd;
        MMVideoView mMVideoView = new MMVideoView(context, false, true, null, this);
        this.videoView = mMVideoView;
        int i = C0764R.C0766id.mmadsdk_light_box_video_view;
        mMVideoView.setId(i);
        this.videoView.setVideoURI(Uri.parse(lightboxAd.video.uri));
        this.videoView.setBackgroundColor(resources.getColor(17170444));
        ImageView imageView = new ImageView(context);
        this.minimizeButton = imageView;
        imageView.setVisibility(8);
        this.minimizeButton.setBackgroundColor(0);
        this.minimizeButton.setImageDrawable(getResources().getDrawable(C0764R.C0765drawable.mmadsdk_lightbox_down));
        this.minimizeButton.setTag("mmLightboxVideo_minimizeButton");
        this.minimizeButton.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.video.LightboxView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LightboxView.this.animateFromExpandedToDefault();
            }
        });
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(getResources().getDimensionPixelSize(C0764R.dimen.mmadsdk_lightbox_minimize_button_width), getResources().getDimensionPixelSize(C0764R.dimen.mmadsdk_lightbox_minimize_button_height));
        layoutParams.topMargin = getResources().getDimensionPixelSize(C0764R.dimen.mmadsdk_lightbox_minimize_button_top_margin);
        layoutParams.rightMargin = getResources().getDimensionPixelSize(C0764R.dimen.mmadsdk_lightbox_minimize_button_right_margin);
        layoutParams.addRule(10);
        layoutParams.addRule(11);
        this.videoView.addView(this.minimizeButton, layoutParams);
        ImageView imageView2 = new ImageView(context);
        this.replayButton = imageView2;
        imageView2.setVisibility(8);
        this.replayButton.setBackgroundColor(0);
        this.replayButton.setImageDrawable(getResources().getDrawable(C0764R.C0765drawable.mmadsdk_lightbox_replay));
        this.replayButton.setTag("mmLightboxVideo_replayButton");
        this.replayButton.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.video.LightboxView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LightboxView.this.complete = false;
                LightboxView.this.replayButton.setVisibility(8);
                if (LightboxView.this.videoView != null) {
                    LightboxView.this.videoView.restart();
                }
                if (LightboxView.this.state == 4) {
                    LightboxView.this.startMinimizeFadeOut(0L, 500L);
                }
            }
        });
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(getResources().getDimensionPixelSize(C0764R.dimen.mmadsdk_lightbox_replay_button_width), getResources().getDimensionPixelSize(C0764R.dimen.mmadsdk_lightbox_replay_button_height));
        layoutParams2.addRule(13);
        this.videoView.addView(this.replayButton, layoutParams2);
        this.videoViewabilityWatcher = new ViewUtils.ViewabilityWatcher(this.videoView, new MMVideoViewViewabilityListener(this));
        this.fullscreenContainer = new FrameLayout(context);
        ImageView imageView3 = new ImageView(context);
        this.fullscreenCompanion = imageView3;
        imageView3.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.fullscreenCompanion.setBackgroundColor(getResources().getColor(C0764R.color.mmadsdk_lightbox_curtain_background));
        if (!Utils.isEmpty(lightboxAd.fullscreen.imageUri)) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.LightboxView.3
                @Override // java.lang.Runnable
                public void run() {
                    final HttpUtils.Response bitmapFromGetRequest = HttpUtils.getBitmapFromGetRequest(lightboxAd.fullscreen.imageUri);
                    if (bitmapFromGetRequest.code == 200) {
                        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.LightboxView.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                LightboxView.this.fullscreenCompanion.setImageBitmap(bitmapFromGetRequest.bitmap);
                            }
                        });
                    }
                }
            });
        }
        this.fullscreenContainer.addView(this.fullscreenCompanion);
        MMWebView mMWebView = new MMWebView(context, MMWebView.MMWebViewOptions.getDefault(), createMMWebViewListener(lightboxViewListener));
        this.fullscreenCompanionWebView = mMWebView;
        mMWebView.setContent(lightboxAd.fullscreen.webContent);
        this.fullscreenCompanionWebView.setTag("mmLightboxVideo_companionWebView");
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams3.topMargin = this.fullscreenContainerTopMargin;
        layoutParams3.addRule(3, i);
        this.fullscreenContainer.setVisibility(8);
        ViewUtils.attachView(this, this.fullscreenContainer, layoutParams3);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -1);
        if (!this.landscape) {
            layoutParams4.addRule(10);
        }
        setTag("mmLightboxVideo_videoView");
        ViewUtils.attachView(this, this.videoView, layoutParams4);
    }

    public void animateFromExpandedToDefault() {
        boolean z = true;
        this.animating = true;
        final Point displaySize = getDisplaySize();
        if (this.state != 2) {
            z = false;
        }
        this.state = 0;
        this.minimizeButton.setVisibility(8);
        setBackgroundColor(getResources().getColor(17170445));
        if (this.fullscreenCompanionWebView.getParent() != null) {
            this.fullscreenContainer.removeView(this.fullscreenCompanionWebView);
        }
        this.fullscreenCompanion.setVisibility(0);
        this.fullscreenCompanion.setAlpha(1.0f);
        if (!this.landscape) {
            this.fullscreenContainer.setVisibility(0);
        }
        final Point defaultPosition = getDefaultPosition();
        Animation animation = new Animation() { // from class: com.millennialmedia.internal.video.LightboxView.10
            public int heightDelta;
            public int originalHeight;
            public int originalWidth;
            public int widthDelta;

            /* JADX WARN: Code restructure failed: missing block: B:34:0x0139, code lost:
                if (r15 >= r0.y) goto L35;
             */
            @Override // android.view.animation.Animation
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void applyTransformation(float r7, android.view.animation.Transformation r8) {
                /*
                    Method dump skipped, instructions count: 608
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.internal.video.LightboxView.C091910.applyTransformation(float, android.view.animation.Transformation):void");
            }

            @Override // android.view.animation.Animation
            public void initialize(int i, int i2, int i3, int i4) {
                this.originalHeight = i2;
                this.heightDelta = i2 - LightboxView.this.defaultHeight;
                this.originalWidth = i;
                this.widthDelta = i - LightboxView.this.defaultWidth;
            }

            @Override // android.view.animation.Animation
            public boolean willChangeBounds() {
                return true;
            }
        };
        animation.setDuration(displaySize.y / (getContext().getResources().getDisplayMetrics().density / 2.0f));
        final boolean z2 = z;
        animation.setAnimationListener(new Animation.AnimationListener() { // from class: com.millennialmedia.internal.video.LightboxView.11
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation2) {
                LightboxView.this.fullscreenContainer.setVisibility(8);
                if (LightboxView.this.videoView != null) {
                    LightboxView.this.videoView.mute();
                }
                if (!z2) {
                    LightboxView.this.lightboxViewListener.onCollapsed();
                    LightboxView lightboxView = LightboxView.this;
                    lightboxView.fireVideoTrackingEvents(lightboxView.lightboxAd.video.trackingEvents.get(LightboxController.TrackableEvent.videoCollapse), 0);
                }
                LightboxView.this.animating = false;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation2) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation2) {
            }
        });
        startAnimation(animation);
    }

    private void animateToDefault(Point point) {
        this.animating = true;
        this.state = 0;
        final Point defaultPosition = getDefaultPosition();
        Animation animation = new Animation() { // from class: com.millennialmedia.internal.video.LightboxView.8
            public float distanceToDefault;
            public float translateX;
            public int width;

            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                float f2;
                if (f == 1.0f) {
                    f2 = defaultPosition.x;
                } else {
                    f2 = (f * this.distanceToDefault) + this.translateX;
                }
                LightboxView.this.setTranslationX(f2);
            }

            @Override // android.view.animation.Animation
            public void initialize(int i, int i2, int i3, int i4) {
                this.width = i;
                float translationX = LightboxView.this.getTranslationX();
                this.translateX = translationX;
                this.distanceToDefault = defaultPosition.x - translationX;
            }

            @Override // android.view.animation.Animation
            public boolean willChangeBounds() {
                return false;
            }
        };
        animation.setAnimationListener(new Animation.AnimationListener() { // from class: com.millennialmedia.internal.video.LightboxView.9
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation2) {
                LightboxView.this.animating = false;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation2) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation2) {
            }
        });
        animation.setDuration(point.x / getContext().getResources().getDisplayMetrics().density);
        startAnimation(animation);
    }

    private void animateToExpand(final Point point) {
        if (this.videoView == null) {
            return;
        }
        this.animating = true;
        boolean z = this.state == 3;
        this.state = 4;
        setBackgroundColor(getResources().getColor(17170445));
        if (!this.fullscreenCompanionLoadedFired && !this.landscape) {
            this.fullscreenCompanionLoadedFired = true;
            fireVideoTrackingEvents(this.lightboxAd.fullscreen.trackingEvents, 0);
        }
        getLayoutParams().width = -1;
        if (!this.landscape) {
            this.videoView.getLayoutParams().height = -2;
        }
        setTranslationX(0.0f);
        if (!this.landscape) {
            this.fullscreenContainer.setVisibility(0);
        }
        Animation animation = new Animation() { // from class: com.millennialmedia.internal.video.LightboxView.12
            public int heightDelta;
            public int originalHeight;

            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                int i;
                int i2;
                if (LightboxView.this.videoView == null) {
                    return;
                }
                int i3 = (f > 1.0f ? 1 : (f == 1.0f ? 0 : -1));
                int i4 = i3 == 0 ? point.y : (int) (this.originalHeight + (this.heightDelta * f));
                float f2 = (i4 - LightboxView.this.defaultHeight) / (point.y - LightboxView.this.defaultHeight);
                int i5 = i3 == 0 ? point.x : (int) (LightboxView.this.defaultWidth + ((point.x - LightboxView.this.defaultWidth) * f2));
                int i6 = LightboxView.this.topMargin;
                if (i3 != 0) {
                    i6 = (int) (i6 * f2);
                }
                int i7 = i3 == 0 ? 0 : LightboxView.this.fullscreenContainerTopMargin - ((int) (LightboxView.this.fullscreenContainerTopMargin * f2));
                int max = i3 == 0 ? 0 : Math.max(0, (point.x - i5) - (LightboxView.this.lightboxRightMargin - ((int) (LightboxView.this.lightboxRightMargin * f2))));
                int max2 = i3 == 0 ? 0 : Math.max(0, (point.y - i4) - (LightboxView.this.lightboxBottomMargin - ((int) (LightboxView.this.lightboxBottomMargin * f2))));
                Point point2 = point;
                int i8 = point2.x;
                if (i5 >= i8 || i4 >= point2.y || max <= 0 || max2 <= 0) {
                    i4 = point2.y;
                    i = LightboxView.this.topMargin;
                    i5 = i8;
                    max2 = 0;
                    max = 0;
                    i2 = 0;
                } else {
                    int i9 = i7;
                    i = i6;
                    i2 = i9;
                }
                ((RelativeLayout.LayoutParams) LightboxView.this.fullscreenContainer.getLayoutParams()).topMargin = i2;
                LightboxView.this.setHeight(i4);
                ((RelativeLayout.LayoutParams) LightboxView.this.videoView.getLayoutParams()).topMargin = i;
                LightboxView.this.videoView.getLayoutParams().width = i5;
                LightboxView.this.setTranslationY(max2);
                LightboxView.this.videoView.setTranslationX(max);
                LightboxView.this.requestLayout();
            }

            @Override // android.view.animation.Animation
            public void initialize(int i, int i2, int i3, int i4) {
                this.originalHeight = i2;
                this.heightDelta = i4 - i2;
            }

            @Override // android.view.animation.Animation
            public boolean willChangeBounds() {
                return true;
            }
        };
        animation.setDuration(point.y / (getContext().getResources().getDisplayMetrics().density / 2.0f));
        final boolean z2 = z;
        animation.setAnimationListener(new Animation.AnimationListener() { // from class: com.millennialmedia.internal.video.LightboxView.13
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation2) {
                LightboxView lightboxView = LightboxView.this;
                lightboxView.setBackgroundColor(lightboxView.getResources().getColor(17170444));
                if (LightboxView.this.videoView != null) {
                    LightboxView.this.videoView.unmute();
                }
                if (!z2) {
                    LightboxView.this.lightboxViewListener.onClicked();
                    LightboxView.this.lightboxViewListener.onExpanded();
                    LightboxView lightboxView2 = LightboxView.this;
                    lightboxView2.fireVideoTrackingEvents(lightboxView2.lightboxAd.video.trackingEvents.get(LightboxController.TrackableEvent.videoExpand), 0);
                }
                LightboxView.this.crossFadeCurtainWebView();
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation2) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation2) {
            }
        });
        startAnimation(animation);
    }

    private MMWebView.MMWebViewListener createMMWebViewListener(final LightboxViewListener lightboxViewListener) {
        return new MMWebView.MMWebViewListener() { // from class: com.millennialmedia.internal.video.LightboxView.17
            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void close() {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public boolean expand(SizableStateManager.ExpandParams expandParams) {
                return false;
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onAdLeftApplication() {
                lightboxViewListener.onAdLeftApplication();
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onClicked() {
                lightboxViewListener.onClicked();
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onFailed() {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onLoaded() {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onReady() {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public boolean resize(SizableStateManager.ResizeParams resizeParams) {
                return false;
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void setOrientation(int i) {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void showCloseIndicator(boolean z) {
            }
        };
    }

    public void crossFadeCurtainWebView() {
        this.fullscreenCompanion.setAlpha(1.0f);
        this.fullscreenCompanionWebView.setAlpha(0.0f);
        if (this.fullscreenCompanionWebView.getParent() == null) {
            this.fullscreenContainer.addView(this.fullscreenCompanionWebView, 0);
        }
        this.fullscreenCompanion.animate().alpha(0.0f).setDuration(1000L).setListener(new Animator.AnimatorListener() { // from class: com.millennialmedia.internal.video.LightboxView.14
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                LightboxView.this.fullscreenCompanion.setVisibility(8);
                LightboxView.this.startMinimizeFadeOut(2500L, 500L);
                LightboxView.this.animating = false;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        }).start();
        this.fullscreenCompanionWebView.animate().alpha(1.0f).setDuration(1000L).start();
    }

    public void fireVideoTrackingEvents(List<TrackingEvent> list, int i) {
        if (list != null) {
            ArrayList arrayList = new ArrayList();
            for (TrackingEvent trackingEvent : list) {
                arrayList.add(new VideoTrackingEvent(trackingEvent, i));
            }
            TrackingEvent.fireEvents(arrayList);
        }
    }

    private Point getDisplaySize() {
        Point point = new Point();
        this.windowManager.getDefaultDisplay().getSize(point);
        return point;
    }

    private void goToDefaultState() {
        if (this.videoView == null) {
            return;
        }
        this.animating = true;
        this.state = 0;
        this.videoView.mute();
        ViewUtils.removeFromParent(this);
        Point defaultPosition = getDefaultPosition();
        setTranslationX(defaultPosition.x);
        setTranslationY(defaultPosition.y);
        this.videoView.setTranslationX(0.0f);
        setHeight(this.defaultHeight);
        getLayoutParams().width = this.defaultWidth;
        this.videoView.getLayoutParams().height = -1;
        this.videoView.getLayoutParams().width = -1;
        setBackgroundColor(getResources().getColor(17170445));
        this.fullscreenContainer.setVisibility(8);
        ((RelativeLayout.LayoutParams) this.fullscreenContainer.getLayoutParams()).topMargin = this.fullscreenContainerTopMargin;
        ((RelativeLayout.LayoutParams) this.videoView.getLayoutParams()).topMargin = 0;
        ViewUtils.attachView(ViewUtils.getDecorView(this), this);
        this.animating = false;
    }

    private void goToExpandedLandscapeState(Point point) {
        if (this.videoView == null) {
            return;
        }
        this.animating = true;
        this.state = 4;
        ViewUtils.removeFromParent(this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(point.x, -1);
        layoutParams.topMargin = this.topMargin;
        setTranslationX(0.0f);
        setTranslationY(0.0f);
        this.videoView.setTranslationX(0.0f);
        ((RelativeLayout.LayoutParams) this.fullscreenContainer.getLayoutParams()).topMargin = 0;
        setHeight(point.y);
        this.videoView.setLayoutParams(layoutParams);
        getLayoutParams().width = -1;
        this.fullscreenContainer.setVisibility(8);
        setBackgroundColor(getResources().getColor(17170444));
        ViewUtils.attachView(ViewUtils.getDecorView(this), this);
        this.videoView.unmute();
        crossFadeCurtainWebView();
    }

    private void goToExpandedPortraitState(Point point) {
        if (this.videoView == null) {
            return;
        }
        this.animating = true;
        this.state = 4;
        ViewUtils.removeFromParent(this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(point.x, -2);
        layoutParams.topMargin = this.topMargin;
        this.videoView.setLayoutParams(layoutParams);
        setTranslationX(0.0f);
        setTranslationY(0.0f);
        this.videoView.setTranslationX(0.0f);
        ((RelativeLayout.LayoutParams) this.fullscreenContainer.getLayoutParams()).topMargin = 0;
        this.fullscreenContainer.setVisibility(0);
        setHeight(point.y);
        getLayoutParams().width = -1;
        if (!this.fullscreenCompanionLoadedFired) {
            this.fullscreenCompanionLoadedFired = true;
            fireVideoTrackingEvents(this.lightboxAd.fullscreen.trackingEvents, 0);
        }
        setBackgroundColor(getResources().getColor(17170444));
        ViewUtils.attachView(ViewUtils.getDecorView(this), this);
        this.videoView.unmute();
        crossFadeCurtainWebView();
    }

    public void releaseVideo() {
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.LightboxView.4
            @Override // java.lang.Runnable
            public void run() {
                if (LightboxView.this.videoView != null) {
                    LightboxView.this.videoView.release();
                    LightboxView.this.videoView = null;
                }
                if (LightboxView.this.fullscreenCompanionWebView != null) {
                    LightboxView.this.fullscreenCompanionWebView.release();
                    LightboxView.this.fullscreenCompanionWebView = null;
                }
            }
        });
    }

    public void setHeight(int i) {
        Point displaySize = getDisplaySize();
        getLayoutParams().height = Math.max(this.defaultHeight, Math.min(i, displaySize.y));
    }

    private void setScreenOn(final boolean z) {
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.LightboxView.15
            @Override // java.lang.Runnable
            public void run() {
                LightboxView.this.setKeepScreenOn(z);
                if (LightboxView.this.videoView != null) {
                    LightboxView.this.videoView.setKeepScreenOn(z);
                }
            }
        });
    }

    public void startMinimizeFadeOut(long j, final long j2) {
        ThreadUtils.ScheduledRunnable scheduledRunnable = this.minimizeFadeOutRunnable;
        if (scheduledRunnable != null) {
            scheduledRunnable.cancel();
        }
        this.minimizeButton.setVisibility(0);
        this.minimizeButton.setAlpha(1.0f);
        this.minimizeFadeOutRunnable = ThreadUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.millennialmedia.internal.video.LightboxView.16
            @Override // java.lang.Runnable
            public void run() {
                if (!LightboxView.this.complete) {
                    LightboxView.this.minimizeButton.animate().alpha(0.0f).setDuration(j2).setListener(new Animator.AnimatorListener() { // from class: com.millennialmedia.internal.video.LightboxView.16.1
                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            LightboxView.this.minimizeFadeOutRunnable = null;
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                        }
                    }).start();
                }
            }
        }, j);
    }

    public void animateToGone(final boolean z) {
        Point displaySize = getDisplaySize();
        Animation animation = new Animation() { // from class: com.millennialmedia.internal.video.LightboxView.6
            public float distanceToOffscreen;
            public float translateX;
            public int width;

            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                LightboxView.this.setTranslationX(f == 1.0f ? this.width * (-1) : this.translateX - (f * this.distanceToOffscreen));
            }

            @Override // android.view.animation.Animation
            public void initialize(int i, int i2, int i3, int i4) {
                this.width = i;
                float translationX = LightboxView.this.getTranslationX();
                this.translateX = translationX;
                this.distanceToOffscreen = translationX + i;
            }

            @Override // android.view.animation.Animation
            public boolean willChangeBounds() {
                return false;
            }
        };
        animation.setDuration(displaySize.x / getContext().getResources().getDisplayMetrics().density);
        animation.setAnimationListener(new Animation.AnimationListener() { // from class: com.millennialmedia.internal.video.LightboxView.7
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation2) {
                if (LightboxView.this.videoView != null) {
                    LightboxView.this.videoView.stop();
                }
                if (LightboxView.this.state == 4) {
                    LightboxView.this.lightboxViewListener.onCollapsed();
                }
                if (z) {
                    LightboxView lightboxView = LightboxView.this;
                    lightboxView.fireVideoTrackingEvents(lightboxView.lightboxAd.video.trackingEvents.get(LightboxController.TrackableEvent.videoClose), 0);
                }
                ViewUtils.removeFromParent(LightboxView.this);
                LightboxView.this.releaseVideo();
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation2) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation2) {
            }
        });
        startAnimation(animation);
    }

    public int getCurrentPosition() {
        MMVideoView mMVideoView = this.videoView;
        if (mMVideoView == null) {
            return -1;
        }
        return mMVideoView.getCurrentPosition();
    }

    public Point getDefaultDimensions() {
        return new Point(this.defaultWidth, this.defaultHeight);
    }

    public Point getDefaultPosition() {
        Point displaySize = getDisplaySize();
        return new Point((displaySize.x - this.lightboxRightMargin) - this.defaultWidth, (displaySize.y - this.lightboxBottomMargin) - this.defaultHeight);
    }

    public int getDuration() {
        MMVideoView mMVideoView = this.videoView;
        if (mMVideoView == null) {
            return -1;
        }
        return mMVideoView.getDuration();
    }

    public boolean isPrepared() {
        return this.prepared;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        MMVideoView mMVideoView;
        super.onAttachedToWindow();
        Point displaySize = getDisplaySize();
        boolean z = displaySize.x > displaySize.y;
        this.landscape = z;
        if (!z && (mMVideoView = this.videoView) != null) {
            ((RelativeLayout.LayoutParams) mMVideoView.getLayoutParams()).addRule(10);
        }
        this.videoViewabilityWatcher.startWatching();
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onBufferingUpdate(MMVideoView mMVideoView, int i) {
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onComplete(MMVideoView mMVideoView) {
        this.complete = true;
        if (!this.completeFired) {
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(TAG, "LightboxView firing complete event");
            }
            this.completeFired = true;
            fireVideoTrackingEvents(this.lightboxAd.video.trackingEvents.get(LightboxController.TrackableEvent.complete), getDuration());
        }
        ThreadUtils.ScheduledRunnable scheduledRunnable = this.minimizeFadeOutRunnable;
        if (scheduledRunnable != null) {
            scheduledRunnable.cancel();
            this.minimizeFadeOutRunnable = null;
        }
        setScreenOn(false);
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.LightboxView.5
            @Override // java.lang.Runnable
            public void run() {
                if (LightboxView.this.state == 4) {
                    LightboxView.this.minimizeButton.setVisibility(0);
                    LightboxView.this.minimizeButton.setAlpha(1.0f);
                }
                LightboxView.this.replayButton.setVisibility(0);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0037, code lost:
        if (r3.state == 1) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003a, code lost:
        com.millennialmedia.internal.utils.ViewUtils.removeFromParent(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0041, code lost:
        goToDefaultState();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0079, code lost:
        if (r3.state == 1) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:?, code lost:
        return;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onConfigurationChanged(android.content.res.Configuration r4) {
        /*
            r3 = this;
            r0 = r3
            r0.clearAnimation()
            r0 = r3
            android.graphics.Point r0 = r0.getDisplaySize()
            r5 = r0
            r0 = r3
            boolean r0 = r0.landscape
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L50
            r0 = r4
            int r0 = r0.orientation
            r1 = 1
            if (r0 != r1) goto L50
            r0 = r3
            r1 = 0
            r0.landscape = r1
            r0 = r3
            int r0 = r0.state
            r1 = 3
            if (r0 == r1) goto L48
            r0 = r3
            int r0 = r0.state
            r1 = 4
            if (r0 != r1) goto L32
            goto L48
        L32:
            r0 = r3
            int r0 = r0.state
            r1 = 1
            if (r0 != r1) goto L41
        L3a:
            r0 = r3
            com.millennialmedia.internal.utils.ViewUtils.removeFromParent(r0)
            goto L84
        L41:
            r0 = r3
            r0.goToDefaultState()
            goto L84
        L48:
            r0 = r3
            r1 = r5
            r0.goToExpandedPortraitState(r1)
            goto L84
        L50:
            r0 = r6
            if (r0 != 0) goto L84
            r0 = r4
            int r0 = r0.orientation
            r1 = 2
            if (r0 != r1) goto L84
            r0 = r3
            r1 = 1
            r0.landscape = r1
            r0 = r3
            int r0 = r0.state
            r1 = 3
            if (r0 == r1) goto L7f
            r0 = r3
            int r0 = r0.state
            r1 = 4
            if (r0 != r1) goto L74
            goto L7f
        L74:
            r0 = r3
            int r0 = r0.state
            r1 = 1
            if (r0 != r1) goto L41
            goto L3a
        L7f:
            r0 = r3
            r1 = r5
            r0.goToExpandedLandscapeState(r1)
        L84:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.internal.video.LightboxView.onConfigurationChanged(android.content.res.Configuration):void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.videoViewabilityWatcher.stopWatching();
        super.onDetachedFromWindow();
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onError(MMVideoView mMVideoView) {
        setScreenOn(false);
        this.lightboxViewListener.onFailed();
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onMuted(MMVideoView mMVideoView) {
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onPause(MMVideoView mMVideoView) {
        setScreenOn(false);
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onPrepared(MMVideoView mMVideoView) {
        this.prepared = true;
        this.lightboxViewListener.onPrepared();
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onProgress(MMVideoView mMVideoView, int i) {
        synchronized (this) {
            int duration = mMVideoView.getDuration() / 4;
            if (!this.q1Fired && i >= duration) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(TAG, "LightboxView firing q1 event");
                }
                this.q1Fired = true;
                fireVideoTrackingEvents(this.lightboxAd.video.trackingEvents.get(LightboxController.TrackableEvent.firstQuartile), i);
            }
            if (!this.midpointFired && i >= duration * 2) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(TAG, "LightboxView firing midpoint event");
                }
                this.midpointFired = true;
                fireVideoTrackingEvents(this.lightboxAd.video.trackingEvents.get(LightboxController.TrackableEvent.midpoint), i);
            }
            if (!this.q3Fired && i >= duration * 3) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(TAG, "LightboxView firing q3 event");
                }
                this.q3Fired = true;
                fireVideoTrackingEvents(this.lightboxAd.video.trackingEvents.get(LightboxController.TrackableEvent.thirdQuartile), i);
            }
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onReadyToStart(MMVideoView mMVideoView) {
        this.lightboxViewListener.onReadyToStart();
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onSeek(MMVideoView mMVideoView) {
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onStart(MMVideoView mMVideoView) {
        setScreenOn(true);
        if (!this.startFired) {
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(TAG, "LightboxView firing start event");
            }
            this.startFired = true;
            fireVideoTrackingEvents(this.lightboxAd.video.trackingEvents.get(LightboxController.TrackableEvent.start), 0);
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onStop(MMVideoView mMVideoView) {
        setScreenOn(false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0134, code lost:
        if (r7.landscape == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x01a0, code lost:
        if (r7.landscape == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x01a3, code lost:
        r7.videoView.getLayoutParams().height = -2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x01af, code lost:
        setTranslationX(0.0f);
        getLayoutParams().width = -1;
     */
    @Override // android.view.View.OnTouchListener
    @android.annotation.SuppressLint({"ClickableViewAccessibility"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r8, android.view.MotionEvent r9) {
        /*
            Method dump skipped, instructions count: 1539
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.internal.video.LightboxView.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onUnmuted(MMVideoView mMVideoView) {
    }

    public void release() {
        releaseVideo();
    }

    public void start() {
        MMVideoView mMVideoView = this.videoView;
        if (mMVideoView != null) {
            mMVideoView.start();
        }
    }
}

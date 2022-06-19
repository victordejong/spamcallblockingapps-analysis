package com.millennialmedia.internal.video;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.graphics.Rect;
import android.media.AudioManager;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AbsoluteLayout;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.ToggleButton;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.millennialmedia.C0764R;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.FiredEvents;
import com.millennialmedia.internal.MMActivity;
import com.millennialmedia.internal.MMWebView;
import com.millennialmedia.internal.utils.HttpUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.ViewUtils;
import com.millennialmedia.internal.video.MMVideoView;
import java.lang.ref.WeakReference;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/InlineWebVideoView.class */
public class InlineWebVideoView extends RelativeLayout implements MMVideoView.MMVideoViewListener {
    private static final String BASE_TAG = "MMInlineWebVideoView_";
    private static final int HIDE_CONTROLS_DELAY = 2500;
    public static final int PROGRESS_UPDATES_DISABLED = -1;
    private static final String STATE_CHANGE = "stateChange";
    private static final String TRACKING = "tracking";
    private InlineWebVideoViewAttachListener attachListener;
    private String callbackId;
    private ToggleButton expandCollapseToggleButton;
    private FiredEvents firedEvents;
    private int height;
    private ThreadUtils.ScheduledRunnable hideControlsRunnable;
    private InlineVideoControls inlineVideoControls;
    private InlineWebVideoViewListener inlineWebVideoViewListener;
    private MMVideoView mmVideoView;
    private WeakReference<MMWebView> mmWebViewRef;
    private ImageView placeholderView;
    private boolean showExpandControls;
    private boolean showMediaControls;
    private int timeUpdateInterval;
    private Uri uri;
    private FrameLayout videoContainer;
    private ViewUtils.ViewabilityWatcher viewabilityWatcher;
    private int width;

    /* renamed from: x */
    private int f4126x;

    /* renamed from: y */
    private int f4127y;
    private static final String TAG = InlineWebVideoView.class.getSimpleName();
    private static volatile int lastTagID = 0;
    private static volatile int nextTagID = 100;
    private long lastUpdateTime = 0;
    private boolean error = false;

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls.class */
    public class InlineVideoControls extends RelativeLayout implements MMVideoView.MediaController {
        private ToggleButton muteUnmuteButton;
        private ToggleButton playPauseButton;
        private ProgressBar progressBar;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InlineVideoControls(Context context, final MMVideoView mMVideoView, boolean z, boolean z2) {
            super(context);
            InlineWebVideoView.this = r8;
            setBackgroundColor(getResources().getColor(C0764R.color.mmadsdk_inline_video_controls_background));
            setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.InlineVideoControls.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                }
            });
            ToggleButton toggleButton = new ToggleButton(context);
            this.playPauseButton = toggleButton;
            int i = C0764R.C0766id.mmadsdk_inline_video_play_pause_button;
            toggleButton.setId(i);
            this.playPauseButton.setTextOn("");
            this.playPauseButton.setTextOff("");
            this.playPauseButton.setChecked(z);
            this.playPauseButton.setBackgroundDrawable(getResources().getDrawable(C0764R.C0765drawable.mmadsdk_play_pause));
            this.playPauseButton.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.InlineVideoControls.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    InlineWebVideoView.this.fireClientSideOnClick();
                }
            });
            this.playPauseButton.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.InlineVideoControls.3
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
                    MMVideoView mMVideoView2 = mMVideoView;
                    if (mMVideoView2 != null) {
                        if (z3) {
                            mMVideoView2.start();
                        } else {
                            mMVideoView2.pause();
                        }
                    }
                }
            });
            Rect buttonDimensions = r8.getButtonDimensions(false);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(buttonDimensions.width(), buttonDimensions.height());
            layoutParams.addRule(9);
            addView(this.playPauseButton, layoutParams);
            ToggleButton toggleButton2 = new ToggleButton(context);
            this.muteUnmuteButton = toggleButton2;
            int i2 = C0764R.C0766id.mmadsdk_inline_video_mute_unmute_button;
            toggleButton2.setId(i2);
            this.muteUnmuteButton.setTextOn("");
            this.muteUnmuteButton.setTextOff("");
            this.muteUnmuteButton.setChecked(z2);
            this.muteUnmuteButton.setBackgroundDrawable(getResources().getDrawable(C0764R.C0765drawable.mmadsdk_mute_unmute));
            this.muteUnmuteButton.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.InlineVideoControls.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    InlineWebVideoView.this.fireClientSideOnClick();
                }
            });
            this.muteUnmuteButton.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.InlineVideoControls.5
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
                    MMVideoView mMVideoView2 = mMVideoView;
                    if (mMVideoView2 != null) {
                        if (z3) {
                            mMVideoView2.mute();
                            return;
                        }
                        mMVideoView2.unmute();
                        AudioManager audioManager = (AudioManager) InlineVideoControls.this.getContext().getSystemService("audio");
                        if (audioManager.getStreamVolume(3) != 0) {
                            return;
                        }
                        audioManager.setStreamVolume(3, audioManager.getStreamMaxVolume(3) / 3, 0);
                    }
                }
            });
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(buttonDimensions.width(), buttonDimensions.height());
            layoutParams2.addRule(11);
            addView(this.muteUnmuteButton, layoutParams2);
            ProgressBar progressBar = new ProgressBar(context, null, 16842872);
            this.progressBar = progressBar;
            progressBar.setProgressDrawable(getResources().getDrawable(C0764R.C0765drawable.mmadsdk_inline_video_progress_bar));
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, buttonDimensions.height() / 2);
            layoutParams3.addRule(1, i);
            layoutParams3.addRule(0, i2);
            layoutParams3.addRule(15);
            addView(this.progressBar, layoutParams3);
        }

        public void mute() {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.InlineVideoControls.8
                @Override // java.lang.Runnable
                public void run() {
                    InlineVideoControls.this.muteUnmuteButton.setChecked(true);
                }
            });
        }

        @Override // com.millennialmedia.internal.video.MMVideoView.MediaController
        public void onComplete() {
            ProgressBar progressBar = this.progressBar;
            progressBar.setProgress(progressBar.getMax());
            pause();
        }

        @Override // com.millennialmedia.internal.video.MMVideoView.MediaController
        public void onMuted() {
        }

        @Override // com.millennialmedia.internal.video.MMVideoView.MediaController
        public void onPause() {
        }

        @Override // com.millennialmedia.internal.video.MMVideoView.MediaController
        public void onProgress(final int i) {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.InlineVideoControls.10
                @Override // java.lang.Runnable
                public void run() {
                    InlineVideoControls.this.progressBar.setProgress(i);
                }
            });
        }

        @Override // com.millennialmedia.internal.video.MMVideoView.MediaController
        public void onStart() {
        }

        @Override // com.millennialmedia.internal.video.MMVideoView.MediaController
        public void onUnmuted() {
        }

        public void pause() {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.InlineVideoControls.7
                @Override // java.lang.Runnable
                public void run() {
                    InlineVideoControls.this.playPauseButton.setChecked(false);
                }
            });
        }

        public void resize(boolean z) {
            Rect buttonDimensions = InlineWebVideoView.this.getButtonDimensions(z);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.muteUnmuteButton.getLayoutParams();
            layoutParams.width = buttonDimensions.width();
            layoutParams.height = buttonDimensions.height();
            this.muteUnmuteButton.setLayoutParams(layoutParams);
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.playPauseButton.getLayoutParams();
            layoutParams2.width = buttonDimensions.width();
            layoutParams2.height = buttonDimensions.height();
            this.playPauseButton.setLayoutParams(layoutParams2);
            RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.progressBar.getLayoutParams();
            layoutParams3.height = buttonDimensions.height() / 2;
            this.progressBar.setLayoutParams(layoutParams3);
        }

        @Override // com.millennialmedia.internal.video.MMVideoView.MediaController
        public void setDuration(final int i) {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.InlineVideoControls.11
                @Override // java.lang.Runnable
                public void run() {
                    InlineVideoControls.this.progressBar.setProgress(0);
                    InlineVideoControls.this.progressBar.setMax(i);
                }
            });
        }

        public void start() {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.InlineVideoControls.6
                @Override // java.lang.Runnable
                public void run() {
                    InlineVideoControls.this.playPauseButton.setChecked(true);
                }
            });
        }

        public void unmute() {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.InlineVideoControls.9
                @Override // java.lang.Runnable
                public void run() {
                    InlineVideoControls.this.muteUnmuteButton.setChecked(false);
                }
            });
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener.class */
    public interface InlineWebVideoViewAttachListener {
        void attachFailed(InlineWebVideoView inlineWebVideoView);

        void attachSucceeded(InlineWebVideoView inlineWebVideoView);
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewListener.class */
    public interface InlineWebVideoViewListener {
        void onClicked();
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/InlineWebVideoView$InlineWebViewViewabilityListener.class */
    public static class InlineWebViewViewabilityListener implements ViewUtils.ViewabilityListener {
        private boolean didPause;
        public WeakReference<InlineWebVideoView> inlineWebVideoViewRef;

        public InlineWebViewViewabilityListener(InlineWebVideoView inlineWebVideoView) {
            this.inlineWebVideoViewRef = new WeakReference<>(inlineWebVideoView);
        }

        @Override // com.millennialmedia.internal.utils.ViewUtils.ViewabilityListener
        public void onViewableChanged(boolean z) {
            InlineWebVideoView inlineWebVideoView = this.inlineWebVideoViewRef.get();
            if (inlineWebVideoView == null) {
                return;
            }
            if (z) {
                if (!this.didPause) {
                    return;
                }
                this.didPause = false;
                inlineWebVideoView.inlineVideoControls.start();
            } else if (inlineWebVideoView.mmVideoView == null || !inlineWebVideoView.mmVideoView.isPlaying()) {
            } else {
                this.didPause = true;
                inlineWebVideoView.inlineVideoControls.pause();
            }
        }
    }

    public InlineWebVideoView(Context context, boolean z, boolean z2, final boolean z3, final boolean z4, int i, String str, InlineWebVideoViewListener inlineWebVideoViewListener) {
        super(new MutableContextWrapper(context));
        this.timeUpdateInterval = -1;
        this.inlineWebVideoViewListener = inlineWebVideoViewListener;
        MutableContextWrapper mutableContextWrapper = (MutableContextWrapper) getContext();
        this.callbackId = str;
        this.timeUpdateInterval = i;
        this.showMediaControls = z3;
        this.showExpandControls = z4;
        ViewUtils.ViewabilityWatcher viewabilityWatcher = new ViewUtils.ViewabilityWatcher(this, new InlineWebViewViewabilityListener(this));
        this.viewabilityWatcher = viewabilityWatcher;
        viewabilityWatcher.startWatching();
        this.videoContainer = new FrameLayout(mutableContextWrapper);
        setBackgroundColor(-16777216);
        this.mmVideoView = new MMVideoView(mutableContextWrapper, z, z2, null, this);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 17;
        this.videoContainer.addView(this.mmVideoView, layoutParams);
        setTag(BASE_TAG + getNextTagID());
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        ImageView imageView = new ImageView(mutableContextWrapper);
        this.placeholderView = imageView;
        imageView.setBackgroundColor(-16777216);
        this.placeholderView.setLayoutParams(layoutParams2);
        this.videoContainer.addView(this.placeholderView);
        addView(this.videoContainer, new RelativeLayout.LayoutParams(-1, -1));
        this.inlineVideoControls = new InlineVideoControls(mutableContextWrapper, this.mmVideoView, z, z2);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams3.addRule(12);
        if (!z3) {
            this.inlineVideoControls.setVisibility(8);
        }
        addView(this.inlineVideoControls, layoutParams3);
        this.mmVideoView.setMediaController(this.inlineVideoControls);
        this.mmVideoView.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                InlineWebVideoView.this.fireClientSideOnClick();
                if (z3) {
                    InlineWebVideoView.this.inlineVideoControls.setAlpha(1.0f);
                    InlineWebVideoView.this.inlineVideoControls.setVisibility(0);
                }
                if (z4) {
                    InlineWebVideoView.this.expandCollapseToggleButton.setAlpha(1.0f);
                    InlineWebVideoView.this.expandCollapseToggleButton.setVisibility(0);
                }
                if (z3 || z4) {
                    InlineWebVideoView.this.scheduleAutoHideControls();
                }
            }
        });
        this.mmVideoView.setOnTouchListener(new View.OnTouchListener() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.2
            @Override // android.view.View.OnTouchListener
            @SuppressLint({"ClickableViewAccessibility"})
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    int convertPixelsToDips = ViewUtils.convertPixelsToDips(((int) motionEvent.getX()) + InlineWebVideoView.this.f4126x);
                    int convertPixelsToDips2 = ViewUtils.convertPixelsToDips(((int) motionEvent.getY()) + InlineWebVideoView.this.f4127y);
                    MMWebView mMWebView = (MMWebView) InlineWebVideoView.this.mmWebViewRef.get();
                    if (mMWebView == null) {
                        return false;
                    }
                    mMWebView.invokeCallback(InlineWebVideoView.this.callbackId, InlineWebVideoView.this.getTag(), "click", Integer.valueOf(convertPixelsToDips), Integer.valueOf(convertPixelsToDips2));
                    return false;
                }
                return false;
            }
        });
        ToggleButton toggleButton = new ToggleButton(mutableContextWrapper);
        this.expandCollapseToggleButton = toggleButton;
        toggleButton.setTextOff("");
        this.expandCollapseToggleButton.setTextOn("");
        this.expandCollapseToggleButton.setChecked(false);
        this.expandCollapseToggleButton.setBackgroundDrawable(getResources().getDrawable(C0764R.C0765drawable.mmadsdk_expand_collapse));
        this.expandCollapseToggleButton.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.3
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z5) {
                InlineWebVideoView.this.fireClientSideOnClick();
                if (z5) {
                    InlineWebVideoView.this.internalExpandToFullScreen();
                }
            }
        });
        if (!z4) {
            this.expandCollapseToggleButton.setVisibility(8);
        }
        Rect buttonDimensions = getButtonDimensions(false);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(buttonDimensions.width(), buttonDimensions.height());
        layoutParams4.addRule(10);
        layoutParams4.addRule(11);
        addView(this.expandCollapseToggleButton, layoutParams4);
    }

    public void attachToAnchorView(MMWebView mMWebView) {
        if (getParent() == null) {
            ViewUtils.attachView(mMWebView, this, new AbsoluteLayout.LayoutParams(this.width, this.height, this.f4126x, this.f4127y));
            this.attachListener.attachSucceeded(this);
        }
    }

    public void fireClientSideOnClick() {
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.12
            @Override // java.lang.Runnable
            public void run() {
                if (InlineWebVideoView.this.inlineWebVideoViewListener != null) {
                    InlineWebVideoView.this.inlineWebVideoViewListener.onClicked();
                }
            }
        });
    }

    private void fireTrackingEvent(MMWebView mMWebView, String str) {
        if (this.firedEvents == null) {
            if (!MMLog.isDebugEnabled()) {
                return;
            }
            MMLog.m4070d(TAG, String.format("InlineVideoView[%s]: Cannot fire event '%s'! Field 'firedEvents' is null!", getTag(), str));
            return;
        }
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, String.format("InlineVideoView[%s]: firing '%s' event", getTag(), str));
        }
        mMWebView.invokeCallback(this.callbackId, getTag(), TRACKING, str);
        this.firedEvents.recordForUri(this.uri, str);
    }

    public Rect getButtonDimensions(boolean z) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(C0764R.dimen.mmadsdk_control_button_max_width_height);
        if (z) {
            return new Rect(0, 0, dimensionPixelSize, dimensionPixelSize);
        }
        int max = Math.max(getResources().getDimensionPixelSize(C0764R.dimen.mmadsdk_control_button_min_width_height), Math.min(dimensionPixelSize, this.height / 5));
        return new Rect(0, 0, max, max);
    }

    public static int getLastTagID() {
        return lastTagID;
    }

    private static int getNextTagID() {
        lastTagID = nextTagID;
        int i = nextTagID;
        nextTagID = i + 1;
        return i;
    }

    public void internalExpandToFullScreen() {
        if (!this.error) {
            MMActivity.launch(getContext(), new MMActivity.MMActivityConfig(), new MMActivity.MMActivityListener() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.5
                @Override // com.millennialmedia.internal.MMActivity.MMActivityListener
                public void onCreate(final MMActivity mMActivity) {
                    super.onCreate(mMActivity);
                    ViewUtils.removeFromParent(InlineWebVideoView.this);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                    InlineWebVideoView.this.expandCollapseToggleButton.setOnCheckedChangeListener(null);
                    InlineWebVideoView.this.expandCollapseToggleButton.setChecked(true);
                    InlineWebVideoView.this.expandCollapseToggleButton.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.5.1
                        @Override // android.widget.CompoundButton.OnCheckedChangeListener
                        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                            if (!z) {
                                mMActivity.finish();
                            }
                        }
                    });
                    InlineWebVideoView.this.resizeButtons(true);
                    ViewUtils.attachView(mMActivity.getRootView(), InlineWebVideoView.this, layoutParams);
                    MMWebView mMWebView = (MMWebView) InlineWebVideoView.this.mmWebViewRef.get();
                    if (mMWebView != null) {
                        mMWebView.invokeCallback(InlineWebVideoView.this.callbackId, InlineWebVideoView.this.getTag(), "expand");
                    }
                }

                @Override // com.millennialmedia.internal.MMActivity.MMActivityListener
                public void onDestroy(MMActivity mMActivity) {
                    ViewUtils.removeFromParent(InlineWebVideoView.this);
                    AbsoluteLayout.LayoutParams layoutParams = new AbsoluteLayout.LayoutParams(InlineWebVideoView.this.width, InlineWebVideoView.this.height, InlineWebVideoView.this.f4126x, InlineWebVideoView.this.f4127y);
                    InlineWebVideoView.this.expandCollapseToggleButton.setOnCheckedChangeListener(null);
                    InlineWebVideoView.this.expandCollapseToggleButton.setChecked(false);
                    InlineWebVideoView.this.expandCollapseToggleButton.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.5.2
                        @Override // android.widget.CompoundButton.OnCheckedChangeListener
                        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                            if (z) {
                                InlineWebVideoView.this.internalExpandToFullScreen();
                            }
                        }
                    });
                    InlineWebVideoView.this.resizeButtons(false);
                    MMWebView mMWebView = (MMWebView) InlineWebVideoView.this.mmWebViewRef.get();
                    if (mMWebView != null) {
                        ViewUtils.attachView(mMWebView, InlineWebVideoView.this, layoutParams);
                        mMWebView.invokeCallback(InlineWebVideoView.this.callbackId, InlineWebVideoView.this.getTag(), "collapse");
                    }
                    super.onDestroy(mMActivity);
                }

                @Override // com.millennialmedia.internal.MMActivity.MMActivityListener
                public void onPause(MMActivity mMActivity) {
                    super.onPause(mMActivity);
                }

                @Override // com.millennialmedia.internal.MMActivity.MMActivityListener
                public void onResume(MMActivity mMActivity) {
                    super.onResume(mMActivity);
                }
            });
        } else if (!MMLog.isDebugEnabled()) {
        } else {
            MMLog.m4070d(TAG, "InlineWebVideoView.expandToFullScreen could not complete because of a previous error.");
        }
    }

    private boolean isEventFired(String str) {
        FiredEvents firedEvents = this.firedEvents;
        if (firedEvents != null) {
            return firedEvents.isEventFiredForUri(this.uri, str);
        }
        if (!MMLog.isDebugEnabled()) {
            return false;
        }
        MMLog.m4070d(TAG, String.format("InlineVideoView[%s]: Cannot check if event  '%s' was fired or not! Field 'firedEvents' is null!", getTag(), str));
        return false;
    }

    public void resizeButtons(boolean z) {
        this.inlineVideoControls.resize(z);
        Rect buttonDimensions = getButtonDimensions(z);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.expandCollapseToggleButton.getLayoutParams();
        layoutParams.width = buttonDimensions.width();
        layoutParams.height = buttonDimensions.height();
        this.expandCollapseToggleButton.setLayoutParams(layoutParams);
    }

    public void scheduleAutoHideControls() {
        if (this.showExpandControls || this.showMediaControls) {
            ThreadUtils.ScheduledRunnable scheduledRunnable = this.hideControlsRunnable;
            if (scheduledRunnable != null) {
                scheduledRunnable.cancel();
            }
            this.hideControlsRunnable = ThreadUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.10
                @Override // java.lang.Runnable
                public void run() {
                    InlineWebVideoView.this.inlineVideoControls.animate().alpha(0.0f).setDuration(500L).setListener(new Animator.AnimatorListener() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.10.1
                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            InlineWebVideoView.this.inlineVideoControls.setVisibility(8);
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                        }
                    }).start();
                    InlineWebVideoView.this.expandCollapseToggleButton.animate().alpha(0.0f).setDuration(500L).setListener(new Animator.AnimatorListener() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.10.2
                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            InlineWebVideoView.this.expandCollapseToggleButton.setVisibility(8);
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                        }
                    }).start();
                }
            }, 2500L);
        }
    }

    private void setKeepScreenOnUiThread(final boolean z) {
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.11
            @Override // java.lang.Runnable
            public void run() {
                InlineWebVideoView.this.setKeepScreenOn(z);
            }
        });
    }

    private int toDips(DisplayMetrics displayMetrics, int i) {
        return (int) Math.ceil(i / displayMetrics.density);
    }

    public void expandToFullScreen() {
        this.expandCollapseToggleButton.setChecked(true);
    }

    public void mute() {
        if (!this.error) {
            this.inlineVideoControls.mute();
        } else if (!MMLog.isDebugEnabled()) {
        } else {
            MMLog.m4070d(TAG, "InlineWebVideoView.mute could not complete because of a previous error.");
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onBufferingUpdate(MMVideoView mMVideoView, int i) {
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onComplete(MMVideoView mMVideoView) {
        mMVideoView.seekTo(0);
        setKeepScreenOnUiThread(false);
        MMWebView mMWebView = this.mmWebViewRef.get();
        if (mMWebView != null) {
            synchronized (this) {
                if (!isEventFired(TtmlNode.END)) {
                    fireTrackingEvent(mMWebView, TtmlNode.END);
                }
            }
            mMWebView.invokeCallback(this.callbackId, getTag(), "timeUpdate", Integer.valueOf(mMVideoView.getDuration()));
            mMWebView.invokeCallback(this.callbackId, getTag(), STATE_CHANGE, "complete");
        } else if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, "InlineVideoView anchor WebView is gone.  Tracking events disabled.");
        }
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.9
            @Override // java.lang.Runnable
            public void run() {
                if (InlineWebVideoView.this.placeholderView.getParent() == null) {
                    InlineWebVideoView.this.videoContainer.addView(InlineWebVideoView.this.placeholderView);
                }
            }
        });
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onError(MMVideoView mMVideoView) {
        this.error = true;
        setKeepScreenOnUiThread(false);
        MMWebView mMWebView = this.mmWebViewRef.get();
        if (mMWebView != null) {
            mMWebView.invokeCallback(this.callbackId, getTag(), "error", "Inline video play back failed.");
        }
        if (getParent() == null) {
            this.attachListener.attachFailed(this);
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onMuted(MMVideoView mMVideoView) {
        MMWebView mMWebView = this.mmWebViewRef.get();
        if (mMWebView != null) {
            mMWebView.invokeCallback(this.callbackId, getTag(), "mute", Boolean.TRUE);
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onPause(MMVideoView mMVideoView) {
        setKeepScreenOnUiThread(false);
        MMWebView mMWebView = this.mmWebViewRef.get();
        if (mMWebView != null) {
            mMWebView.invokeCallback(this.callbackId, getTag(), STATE_CHANGE, "paused");
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onPrepared(final MMVideoView mMVideoView) {
        if (!this.error) {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.6
                @Override // java.lang.Runnable
                public void run() {
                    MMWebView mMWebView = (MMWebView) InlineWebVideoView.this.mmWebViewRef.get();
                    if (mMWebView != null) {
                        mMWebView.invokeCallback(InlineWebVideoView.this.callbackId, InlineWebVideoView.this.getTag(), InlineWebVideoView.STATE_CHANGE, "loading");
                        mMWebView.invokeCallback(InlineWebVideoView.this.callbackId, InlineWebVideoView.this.getTag(), "updateVideoURL", InlineWebVideoView.this.uri.toString());
                        mMWebView.invokeCallback(InlineWebVideoView.this.callbackId, InlineWebVideoView.this.getTag(), "durationChange", Integer.valueOf(mMVideoView.getDuration()));
                        if (mMWebView.getWidth() - InlineWebVideoView.this.f4126x < InlineWebVideoView.this.width || mMWebView.getHeight() - InlineWebVideoView.this.f4127y < InlineWebVideoView.this.height) {
                            MMLog.m4068e(InlineWebVideoView.TAG, "Cannot attach the inline video; it will not fit within the anchor view.");
                        } else {
                            InlineWebVideoView.this.attachToAnchorView(mMWebView);
                        }
                    }
                }
            });
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onProgress(MMVideoView mMVideoView, int i) {
        synchronized (this) {
            MMWebView mMWebView = this.mmWebViewRef.get();
            if (mMWebView != null) {
                int duration = mMVideoView.getDuration() / 4;
                if (!isEventFired("q1") && i >= duration) {
                    fireTrackingEvent(mMWebView, "q1");
                }
                if (!isEventFired("q2") && i >= duration * 2) {
                    fireTrackingEvent(mMWebView, "q2");
                }
                if (!isEventFired("q3") && i >= duration * 3) {
                    fireTrackingEvent(mMWebView, "q3");
                }
                long currentTimeMillis = System.currentTimeMillis();
                int i2 = this.timeUpdateInterval;
                if (i2 != -1 && currentTimeMillis - this.lastUpdateTime >= i2) {
                    this.lastUpdateTime = currentTimeMillis;
                    mMWebView.invokeCallback(this.callbackId, getTag(), "timeUpdate", Integer.valueOf(i));
                }
            } else if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(TAG, "InlineVideoView anchor WebView is gone.  Tracking events disabled.");
            }
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onReadyToStart(MMVideoView mMVideoView) {
        MMWebView mMWebView = this.mmWebViewRef.get();
        if (mMWebView != null) {
            mMWebView.invokeCallback(this.callbackId, getTag(), STATE_CHANGE, "readyToStart");
            mMWebView.invokeCallback(this.callbackId, getTag(), "updateVideoURL", this.uri.toString());
            mMWebView.invokeCallback(this.callbackId, getTag(), "durationChange", Integer.valueOf(mMVideoView.getDuration()));
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onSeek(MMVideoView mMVideoView) {
        MMWebView mMWebView = this.mmWebViewRef.get();
        if (mMWebView != null) {
            mMWebView.invokeCallback(this.callbackId, getTag(), "seek", Integer.valueOf(mMVideoView.getCurrentPosition()));
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onStart(MMVideoView mMVideoView) {
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.7
            @Override // java.lang.Runnable
            public void run() {
                InlineWebVideoView.this.setKeepScreenOn(true);
                ViewUtils.removeFromParent(InlineWebVideoView.this.placeholderView);
            }
        });
        scheduleAutoHideControls();
        MMWebView mMWebView = this.mmWebViewRef.get();
        if (mMWebView == null) {
            if (!MMLog.isDebugEnabled()) {
                return;
            }
            MMLog.m4070d(TAG, "InlineWebVideoView anchor WebView is gone.  Tracking events disabled.");
            return;
        }
        synchronized (this) {
            if (!isEventFired(TtmlNode.START)) {
                fireTrackingEvent(mMWebView, TtmlNode.START);
            }
        }
        mMWebView.invokeCallback(this.callbackId, getTag(), STATE_CHANGE, "playing");
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onStop(MMVideoView mMVideoView) {
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.8
            @Override // java.lang.Runnable
            public void run() {
                InlineWebVideoView.this.setKeepScreenOn(false);
                if (InlineWebVideoView.this.placeholderView.getParent() == null) {
                    InlineWebVideoView.this.videoContainer.addView(InlineWebVideoView.this.placeholderView);
                }
            }
        });
        MMWebView mMWebView = this.mmWebViewRef.get();
        if (mMWebView != null) {
            mMWebView.invokeCallback(this.callbackId, getTag(), STATE_CHANGE, "stopped");
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onUnmuted(MMVideoView mMVideoView) {
        MMWebView mMWebView = this.mmWebViewRef.get();
        if (mMWebView != null) {
            mMWebView.invokeCallback(this.callbackId, getTag(), "mute", Boolean.FALSE);
        }
    }

    public void pause() {
        if (!this.error) {
            this.inlineVideoControls.pause();
        } else if (!MMLog.isDebugEnabled()) {
        } else {
            MMLog.m4070d(TAG, "InlineWebVideoView.pause could not complete because of a previous error.");
        }
    }

    public void release() {
        MMVideoView mMVideoView = this.mmVideoView;
        if (mMVideoView != null) {
            mMVideoView.release();
            this.mmVideoView = null;
        }
    }

    public void remove() {
        MMVideoView mMVideoView = this.mmVideoView;
        if (mMVideoView != null) {
            mMVideoView.stop();
        }
        MMWebView mMWebView = this.mmWebViewRef.get();
        if (mMWebView != null) {
            mMWebView.invokeCallback(this.callbackId, getTag(), STATE_CHANGE, "removed");
        }
        ViewUtils.removeFromParent(this);
    }

    public void reposition(int i, int i2, int i3, int i4) {
        String str;
        String str2;
        if (this.error) {
            if (!MMLog.isDebugEnabled()) {
                return;
            }
            MMLog.m4070d(TAG, "InlineWebVideoView.reposition could not complete because of a previous error.");
        } else if (i < 0 || i2 < 0 || i3 < 0 || i4 < 0) {
            MMLog.m4068e(TAG, "All position parameters must be greater than or equal to zero.");
        } else {
            WeakReference<MMWebView> weakReference = this.mmWebViewRef;
            if (weakReference != null) {
                MMWebView mMWebView = weakReference.get();
                if (mMWebView != null) {
                    if (mMWebView.getWidth() - i < i3 || mMWebView.getHeight() - i2 < i4) {
                        MMLog.m4068e(TAG, "Cannot reposition the inline video as it will not fit within the anchor view.");
                        return;
                    }
                    this.width = i3;
                    this.height = i4;
                    this.f4126x = i;
                    this.f4127y = i2;
                    resizeButtons(false);
                    AbsoluteLayout.LayoutParams layoutParams = new AbsoluteLayout.LayoutParams(i3, i4, i, i2);
                    ViewUtils.removeFromParent(this);
                    ViewUtils.attachView(mMWebView, this, layoutParams);
                    DisplayMetrics displayMetrics = mMWebView.getResources().getDisplayMetrics();
                    mMWebView.invokeCallback(this.callbackId, getTag(), "reposition", Integer.valueOf(toDips(displayMetrics, i3)), Integer.valueOf(toDips(displayMetrics, i4)), Integer.valueOf(toDips(displayMetrics, i)), Integer.valueOf(toDips(displayMetrics, i2)));
                    return;
                }
                str = TAG;
                str2 = "Cannot position the InlineVideoView because the anchor view is gone.";
            } else {
                str = TAG;
                str2 = "Cannot position the InlineVideoView because the anchor view has not been set.";
            }
            MMLog.m4062w(str, str2);
        }
    }

    public void seekTo(int i) {
        MMVideoView mMVideoView;
        if (!this.error && (mMVideoView = this.mmVideoView) != null) {
            mMVideoView.seekTo(i);
        } else if (!MMLog.isDebugEnabled()) {
        } else {
            MMLog.m4070d(TAG, "InlineWebVideoView.seekTo could not complete because of a previous error.");
        }
    }

    public void setAnchorView(MMWebView mMWebView, int i, int i2, int i3, int i4, InlineWebVideoViewAttachListener inlineWebVideoViewAttachListener) {
        MMVideoView mMVideoView;
        if (i < 0 || i2 < 0 || i3 < 0 || i4 < 0) {
            MMLog.m4068e(TAG, "All position parameters must be greater than or equal to zero.");
            inlineWebVideoViewAttachListener.attachFailed(this);
            return;
        }
        this.mmWebViewRef = new WeakReference<>(mMWebView);
        this.attachListener = inlineWebVideoViewAttachListener;
        this.f4126x = i;
        this.f4127y = i2;
        this.width = i3;
        this.height = i4;
        resizeButtons(false);
        Uri uri = this.uri;
        if (uri == null || (mMVideoView = this.mmVideoView) == null) {
            return;
        }
        mMVideoView.setVideoURI(uri);
    }

    public void setPlaceholder(final Uri uri) {
        if (this.mmWebViewRef != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.4
                @Override // java.lang.Runnable
                public void run() {
                    final HttpUtils.Response bitmapFromGetRequest = HttpUtils.getBitmapFromGetRequest(uri.toString());
                    if (bitmapFromGetRequest == null || bitmapFromGetRequest.code != 200 || bitmapFromGetRequest.bitmap == null) {
                        return;
                    }
                    ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            MMWebView mMWebView = (MMWebView) InlineWebVideoView.this.mmWebViewRef.get();
                            if (mMWebView != null) {
                                InlineWebVideoView.this.placeholderView.setImageBitmap(bitmapFromGetRequest.bitmap);
                                if (mMWebView.getWidth() - InlineWebVideoView.this.f4126x < InlineWebVideoView.this.width || mMWebView.getHeight() - InlineWebVideoView.this.f4127y < InlineWebVideoView.this.height) {
                                    MMLog.m4068e(InlineWebVideoView.TAG, "Cannot attach the inline video; it will not fit within the anchor view.");
                                } else {
                                    InlineWebVideoView.this.attachToAnchorView(mMWebView);
                                }
                            }
                        }
                    });
                }
            });
        }
    }

    public void setVideoURI(Uri uri, FiredEvents firedEvents) {
        MMVideoView mMVideoView;
        this.firedEvents = firedEvents;
        this.error = false;
        this.uri = uri;
        if (this.mmWebViewRef == null || (mMVideoView = this.mmVideoView) == null) {
            return;
        }
        mMVideoView.setVideoURI(uri);
        MMWebView mMWebView = this.mmWebViewRef.get();
        if (mMWebView == null) {
            return;
        }
        mMWebView.invokeCallback(this.callbackId, getTag(), STATE_CHANGE, "loading");
    }

    public void start() {
        if (!this.error) {
            this.inlineVideoControls.start();
        } else if (!MMLog.isDebugEnabled()) {
        } else {
            MMLog.m4070d(TAG, "InlineWebVideoView.start could not complete because of a previous error.");
        }
    }

    public void stop() {
        MMVideoView mMVideoView;
        if (!this.error && (mMVideoView = this.mmVideoView) != null) {
            mMVideoView.stop();
        } else if (!MMLog.isDebugEnabled()) {
        } else {
            MMLog.m4070d(TAG, "InlineWebVideoView.stop could not complete because of a previous error.");
        }
    }

    public void triggerTimeUpdate() {
        if (this.error) {
            if (!MMLog.isDebugEnabled()) {
                return;
            }
            MMLog.m4070d(TAG, "InlineWebVideoView.triggerTimeUpdate could not complete because of a previous error.");
            return;
        }
        MMWebView mMWebView = this.mmWebViewRef.get();
        if (mMWebView == null || this.mmVideoView == null) {
            return;
        }
        mMWebView.invokeCallback(this.callbackId, getTag(), "timeUpdate", Integer.valueOf(this.mmVideoView.getCurrentPosition()));
    }

    public void unmute() {
        if (!this.error) {
            this.inlineVideoControls.unmute();
        } else if (!MMLog.isDebugEnabled()) {
        } else {
            MMLog.m4070d(TAG, "InlineWebVideoView.unmute could not complete because of a previous error.");
        }
    }
}

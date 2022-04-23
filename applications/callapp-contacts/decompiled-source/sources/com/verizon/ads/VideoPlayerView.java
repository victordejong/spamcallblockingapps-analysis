package com.verizon.ads;

import android.content.Context;
import android.content.MutableContextWrapper;
import android.os.Looper;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.SurfaceView;
import android.view.View;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.ToggleButton;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.verizon.ads.VideoPlayer;
import com.verizon.ads.VideoPlayerView;
import com.verizon.ads.utils.ThreadUtils;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/VideoPlayerView.class */
public class VideoPlayerView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35339a = Logger.getInstance(VideoPlayerView.class);

    /* renamed from: b  reason: collision with root package name */
    private RelativeLayout f35340b;

    /* renamed from: c  reason: collision with root package name */
    private Button f35341c;

    /* renamed from: d  reason: collision with root package name */
    private Button f35342d;
    private ToggleButton e;
    private boolean f;
    private boolean g;
    private boolean h;
    private VideoPlayer i;
    private SurfaceView j;

    /* renamed from: com.verizon.ads.VideoPlayerView$1  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/VideoPlayerView$1.class */
    class AnonymousClass1 implements VideoPlayer.VideoPlayerListener {
        AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            VideoPlayerView.this.requestLayout();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(float f) {
            if (VideoPlayerView.this.e != null) {
                VideoPlayerView.this.e.setChecked(f > BitmapDescriptorFactory.HUE_RED);
            }
        }

        @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
        public void onClick(VideoPlayer videoPlayer) {
        }

        @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
        public void onComplete(VideoPlayer videoPlayer) {
            final VideoPlayerView videoPlayerView = VideoPlayerView.this;
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads._$$Lambda$VideoPlayerView$1$wADx25B9ZFPX_DkCwge9fgXzIVg
                @Override // java.lang.Runnable
                public final void run() {
                    VideoPlayerView.this.c();
                }
            });
        }

        @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
        public void onError(VideoPlayer videoPlayer) {
        }

        @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
        public void onLoaded(VideoPlayer videoPlayer) {
        }

        @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
        public void onPaused(VideoPlayer videoPlayer) {
        }

        @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
        public void onPlay(VideoPlayer videoPlayer) {
            final VideoPlayerView videoPlayerView = VideoPlayerView.this;
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads._$$Lambda$VideoPlayerView$1$y1evjaWshzpaujZANcqcugClLwE
                @Override // java.lang.Runnable
                public final void run() {
                    VideoPlayerView.this.b();
                }
            });
            final VideoPlayerView videoPlayerView2 = VideoPlayerView.this;
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads._$$Lambda$VideoPlayerView$1$GBjaBclR8_t0Ac_9GiOFuJ05kcc
                @Override // java.lang.Runnable
                public final void run() {
                    VideoPlayerView.this.c();
                }
            });
            final VideoPlayerView videoPlayerView3 = VideoPlayerView.this;
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads._$$Lambda$VideoPlayerView$1$zY296W1DvB0TRk7X9SPJm_XGBmM
                @Override // java.lang.Runnable
                public final void run() {
                    VideoPlayerView.this.d();
                }
            });
        }

        @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
        public void onProgress(VideoPlayer videoPlayer, int i) {
        }

        @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
        public void onReady(VideoPlayer videoPlayer) {
        }

        @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
        public void onSeekCompleted(VideoPlayer videoPlayer) {
        }

        @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
        public void onUnloaded(VideoPlayer videoPlayer) {
        }

        @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
        public void onVideoSizeChanged(int i, int i2) {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads._$$Lambda$VideoPlayerView$1$s33IMpXdavdA2FAjOW_2QtTPWn8
                @Override // java.lang.Runnable
                public final void run() {
                    VideoPlayerView.AnonymousClass1.this.a();
                }
            });
        }

        @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
        public void onVolumeChanged(VideoPlayer videoPlayer, final float f) {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads._$$Lambda$VideoPlayerView$1$yX2rrSA3gapETKhrixFOCyKMSNs
                @Override // java.lang.Runnable
                public final void run() {
                    VideoPlayerView.AnonymousClass1.this.a(f);
                }
            });
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/VideoPlayerView$VideoSurfaceView.class */
    class VideoSurfaceView extends SurfaceView {
        VideoSurfaceView(Context context) {
            super(context);
        }

        /* JADX WARN: Removed duplicated region for block: B:43:0x015a  */
        @Override // android.view.SurfaceView, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onMeasure(int r5, int r6) {
            /*
                Method dump skipped, instructions count: 456
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.VideoPlayerView.VideoSurfaceView.onMeasure(int, int):void");
        }
    }

    public VideoPlayerView(Context context) {
        this(context, null, 0);
    }

    public VideoPlayerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VideoPlayerView(Context context, AttributeSet attributeSet, int i) {
        super(new MutableContextWrapper(context), attributeSet, i);
        this.f = false;
        this.g = false;
        this.h = false;
        if (attributeSet != null) {
            this.h = attributeSet.getAttributeBooleanValue("http://verizon.com/ads", "muteToggleEnabled", false);
            this.g = attributeSet.getAttributeBooleanValue("http://verizon.com/ads", "playButtonEnabled", false);
            this.f = attributeSet.getAttributeBooleanValue("http://verizon.com/ads", "replayButtonEnabled", false);
        }
        setBackgroundColor(getResources().getColor(17170444));
        MutableContextWrapper mutableContextWrapper = (MutableContextWrapper) getContext();
        this.f35340b = new RelativeLayout(mutableContextWrapper);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        addView(this.f35340b, layoutParams);
        VideoSurfaceView videoSurfaceView = new VideoSurfaceView(mutableContextWrapper);
        this.j = videoSurfaceView;
        videoSurfaceView.getHolder().setType(3);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13);
        this.f35340b.addView(this.j, layoutParams2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        this.i.play();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(CompoundButton compoundButton, boolean z) {
        this.i.setVolume(z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f35339a.e("updateMuteToggleVisibility must be called from UI thread.");
            return;
        }
        ToggleButton toggleButton = this.e;
        if (toggleButton == null) {
            return;
        }
        if (this.h) {
            toggleButton.setVisibility(0);
        } else {
            toggleButton.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        this.i.replay();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f35339a.e("updateReplayVisibility must be called from UI thread.");
            return;
        }
        VideoPlayer videoPlayer = this.i;
        if (videoPlayer == null) {
            f35339a.d("A VideoPlayer instance has not been bound.");
        } else if (this.f35341c != null) {
            int state = videoPlayer.getState();
            if (!this.f || state != 6) {
                this.f35341c.setVisibility(8);
            } else {
                this.f35341c.setVisibility(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f35339a.e("updatePlayVisibility must be called from UI thread.");
            return;
        }
        VideoPlayer videoPlayer = this.i;
        if (videoPlayer == null) {
            f35339a.d("A VideoPlayer instance has not been bound.");
        } else if (this.f35342d != null) {
            int state = videoPlayer.getState();
            if (!this.g || state == 4 || state == 6) {
                this.f35342d.setVisibility(8);
            } else {
                this.f35342d.setVisibility(0);
            }
        }
    }

    public void bindPlayer(VideoPlayer videoPlayer) {
        this.i = videoPlayer;
        videoPlayer.setSurfaceView(this.j);
        Context context = getContext();
        ToggleButton toggleButton = new ToggleButton(context);
        this.e = toggleButton;
        toggleButton.setText("");
        this.e.setTextOff("");
        this.e.setTextOn("");
        this.e.setTag("MUTE_UNMUTE_TOGGLE");
        this.e.setBackgroundResource(R.drawable.verizon_ads_sdk_mute_toggle);
        this.e.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.verizon.ads._$$Lambda$VideoPlayerView$raeOaxjAmn0qm35DRAvsNomFmGo
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                VideoPlayerView.this.a(compoundButton, z);
            }
        });
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) context.getResources().getDimension(R.dimen.verizon_ads_sdk_mute_width), (int) context.getResources().getDimension(R.dimen.verizon_ads_sdk_mute_width));
        layoutParams.addRule(12);
        layoutParams.addRule(11);
        this.f35340b.addView(this.e, layoutParams);
        Button button = new Button(context);
        this.f35341c = button;
        button.setTag("REPLAY_BUTTON");
        this.f35341c.setBackgroundResource(R.drawable.verizon_ads_sdk_replay);
        this.f35341c.setOnClickListener(new View.OnClickListener() { // from class: com.verizon.ads._$$Lambda$VideoPlayerView$G0bWj0uq5jtwmt9TF7eYgsF_OW4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoPlayerView.this.b(view);
            }
        });
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) context.getResources().getDimension(R.dimen.verizon_ads_sdk_replay_width), (int) context.getResources().getDimension(R.dimen.verizon_ads_sdk_replay_width));
        layoutParams2.addRule(13);
        this.f35340b.addView(this.f35341c, layoutParams2);
        Button button2 = new Button(context);
        this.f35342d = button2;
        button2.setTag("PLAY_BUTTON");
        this.f35342d.setBackgroundResource(R.drawable.verizon_ads_sdk_play);
        this.f35342d.setOnClickListener(new View.OnClickListener() { // from class: com.verizon.ads._$$Lambda$VideoPlayerView$zDeRdFvbf7xGWSEM7KixJswUnTE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoPlayerView.this.a(view);
            }
        });
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams((int) context.getResources().getDimension(R.dimen.verizon_ads_sdk_replay_width), (int) context.getResources().getDimension(R.dimen.verizon_ads_sdk_replay_width));
        layoutParams3.addRule(13);
        this.f35340b.addView(this.f35342d, layoutParams3);
        c();
        b();
        d();
        videoPlayer.registerListener(new AnonymousClass1());
    }

    public VideoPlayer getVideoPlayer() {
        return this.i;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        VideoPlayer videoPlayer = this.i;
        if (videoPlayer == null) {
            f35339a.d("A VideoPlayer instance has not been bound.");
        } else {
            videoPlayer.setAudioFocus();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        VideoPlayer videoPlayer = this.i;
        if (videoPlayer != null) {
            videoPlayer.releaseAudioFocus();
        } else {
            f35339a.d("A VideoPlayer instance has not been bound.");
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        AbsSavedState absSavedState = (AbsSavedState) parcelable;
        super.onRestoreInstanceState(absSavedState.getSuperState());
        VideoPlayer videoPlayer = this.i;
        if (videoPlayer == null) {
            f35339a.d("A VideoPlayer instance has not been bound.");
        } else {
            videoPlayer.restoreInstanceState(absSavedState);
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        VideoPlayer videoPlayer = this.i;
        if (videoPlayer != null) {
            return videoPlayer.saveInstanceState(super.onSaveInstanceState());
        }
        f35339a.d("A VideoPlayer instance has not been bound.");
        return null;
    }

    public void setMuteToggleEnabled(boolean z) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f35339a.e("setMuteToggleEnabled must be called from UI thread.");
            return;
        }
        this.h = z;
        b();
    }

    public void setPlayButtonEnabled(boolean z) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f35339a.e("setPlayButtonEnabled must be called from UI thread.");
            return;
        }
        this.g = z;
        d();
    }

    public void setReplayButtonEnabled(boolean z) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f35339a.e("setReplayButtonEnabled must be called from UI thread.");
            return;
        }
        this.f = z;
        c();
    }
}

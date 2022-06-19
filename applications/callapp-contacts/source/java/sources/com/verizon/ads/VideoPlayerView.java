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

    /* renamed from: a */
    private static final Logger f61260a = Logger.getInstance(VideoPlayerView.class);

    /* renamed from: b */
    private RelativeLayout f61261b;

    /* renamed from: c */
    private Button f61262c;

    /* renamed from: d */
    private Button f61263d;

    /* renamed from: e */
    private ToggleButton f61264e;

    /* renamed from: f */
    private boolean f61265f;

    /* renamed from: g */
    private boolean f61266g;

    /* renamed from: h */
    private boolean f61267h;

    /* renamed from: i */
    private VideoPlayer f61268i;

    /* renamed from: j */
    private SurfaceView f61269j;

    /* renamed from: com.verizon.ads.VideoPlayerView$1 */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/VideoPlayerView$1.class */
    public class C173321 implements VideoPlayer.VideoPlayerListener {
        C173321() {
            VideoPlayerView.this = r4;
        }

        /* renamed from: a */
        public /* synthetic */ void m5521a() {
            VideoPlayerView.this.requestLayout();
        }

        /* renamed from: a */
        public /* synthetic */ void m5520a(float f) {
            if (VideoPlayerView.this.f61264e != null) {
                VideoPlayerView.this.f61264e.setChecked(f > BitmapDescriptorFactory.HUE_RED);
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
                    VideoPlayerView.this.m5526c();
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
                    VideoPlayerView.this.m5529b();
                }
            });
            final VideoPlayerView videoPlayerView2 = VideoPlayerView.this;
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads._$$Lambda$VideoPlayerView$1$GBjaBclR8_t0Ac_9GiOFuJ05kcc
                @Override // java.lang.Runnable
                public final void run() {
                    VideoPlayerView.this.m5526c();
                }
            });
            final VideoPlayerView videoPlayerView3 = VideoPlayerView.this;
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads._$$Lambda$VideoPlayerView$1$zY296W1DvB0TRk7X9SPJm_XGBmM
                @Override // java.lang.Runnable
                public final void run() {
                    VideoPlayerView.this.m5524d();
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
                    VideoPlayerView.C173321.this.m5521a();
                }
            });
        }

        @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
        public void onVolumeChanged(VideoPlayer videoPlayer, final float f) {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads._$$Lambda$VideoPlayerView$1$yX2rrSA3gapETKhrixFOCyKMSNs
                @Override // java.lang.Runnable
                public final void run() {
                    VideoPlayerView.C173321.this.m5520a(f);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/VideoPlayerView$VideoSurfaceView.class */
    public class VideoSurfaceView extends SurfaceView {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        VideoSurfaceView(Context context) {
            super(context);
            VideoPlayerView.this = r4;
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
        this.f61265f = false;
        this.f61266g = false;
        this.f61267h = false;
        if (attributeSet != null) {
            this.f61267h = attributeSet.getAttributeBooleanValue("http://verizon.com/ads", "muteToggleEnabled", false);
            this.f61266g = attributeSet.getAttributeBooleanValue("http://verizon.com/ads", "playButtonEnabled", false);
            this.f61265f = attributeSet.getAttributeBooleanValue("http://verizon.com/ads", "replayButtonEnabled", false);
        }
        setBackgroundColor(getResources().getColor(17170444));
        MutableContextWrapper mutableContextWrapper = (MutableContextWrapper) getContext();
        this.f61261b = new RelativeLayout(mutableContextWrapper);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        addView(this.f61261b, layoutParams);
        VideoSurfaceView videoSurfaceView = new VideoSurfaceView(mutableContextWrapper);
        this.f61269j = videoSurfaceView;
        videoSurfaceView.getHolder().setType(3);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13);
        this.f61261b.addView(this.f61269j, layoutParams2);
    }

    /* renamed from: a */
    public /* synthetic */ void m5532a(View view) {
        this.f61268i.play();
    }

    /* renamed from: a */
    public /* synthetic */ void m5531a(CompoundButton compoundButton, boolean z) {
        this.f61268i.setVolume(z ? 1.0f : 0.0f);
    }

    /* renamed from: b */
    public void m5529b() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f61260a.m5565e("updateMuteToggleVisibility must be called from UI thread.");
            return;
        }
        ToggleButton toggleButton = this.f61264e;
        if (toggleButton == null) {
            return;
        }
        if (this.f61267h) {
            toggleButton.setVisibility(0);
        } else {
            toggleButton.setVisibility(8);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m5528b(View view) {
        this.f61268i.replay();
    }

    /* renamed from: c */
    public void m5526c() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f61260a.m5565e("updateReplayVisibility must be called from UI thread.");
            return;
        }
        VideoPlayer videoPlayer = this.f61268i;
        if (videoPlayer == null) {
            f61260a.m5567d("A VideoPlayer instance has not been bound.");
        } else if (this.f61262c == null) {
        } else {
            int state = videoPlayer.getState();
            if (!this.f61265f || state != 6) {
                this.f61262c.setVisibility(8);
            } else {
                this.f61262c.setVisibility(0);
            }
        }
    }

    /* renamed from: d */
    public void m5524d() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f61260a.m5565e("updatePlayVisibility must be called from UI thread.");
            return;
        }
        VideoPlayer videoPlayer = this.f61268i;
        if (videoPlayer == null) {
            f61260a.m5567d("A VideoPlayer instance has not been bound.");
        } else if (this.f61263d == null) {
        } else {
            int state = videoPlayer.getState();
            if (!this.f61266g || state == 4 || state == 6) {
                this.f61263d.setVisibility(8);
            } else {
                this.f61263d.setVisibility(0);
            }
        }
    }

    public void bindPlayer(VideoPlayer videoPlayer) {
        this.f61268i = videoPlayer;
        videoPlayer.setSurfaceView(this.f61269j);
        Context context = getContext();
        ToggleButton toggleButton = new ToggleButton(context);
        this.f61264e = toggleButton;
        toggleButton.setText("");
        this.f61264e.setTextOff("");
        this.f61264e.setTextOn("");
        this.f61264e.setTag("MUTE_UNMUTE_TOGGLE");
        this.f61264e.setBackgroundResource(C17320R.C17321drawable.verizon_ads_sdk_mute_toggle);
        this.f61264e.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.verizon.ads._$$Lambda$VideoPlayerView$raeOaxjAmn0qm35DRAvsNomFmGo
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                VideoPlayerView.this.m5531a(compoundButton, z);
            }
        });
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) context.getResources().getDimension(C17320R.dimen.verizon_ads_sdk_mute_width), (int) context.getResources().getDimension(C17320R.dimen.verizon_ads_sdk_mute_width));
        layoutParams.addRule(12);
        layoutParams.addRule(11);
        this.f61261b.addView(this.f61264e, layoutParams);
        Button button = new Button(context);
        this.f61262c = button;
        button.setTag("REPLAY_BUTTON");
        this.f61262c.setBackgroundResource(C17320R.C17321drawable.verizon_ads_sdk_replay);
        this.f61262c.setOnClickListener(new View.OnClickListener() { // from class: com.verizon.ads._$$Lambda$VideoPlayerView$G0bWj0uq5jtwmt9TF7eYgsF_OW4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoPlayerView.this.m5528b(view);
            }
        });
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) context.getResources().getDimension(C17320R.dimen.verizon_ads_sdk_replay_width), (int) context.getResources().getDimension(C17320R.dimen.verizon_ads_sdk_replay_width));
        layoutParams2.addRule(13);
        this.f61261b.addView(this.f61262c, layoutParams2);
        Button button2 = new Button(context);
        this.f61263d = button2;
        button2.setTag("PLAY_BUTTON");
        this.f61263d.setBackgroundResource(C17320R.C17321drawable.verizon_ads_sdk_play);
        this.f61263d.setOnClickListener(new View.OnClickListener() { // from class: com.verizon.ads._$$Lambda$VideoPlayerView$zDeRdFvbf7xGWSEM7KixJswUnTE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoPlayerView.this.m5532a(view);
            }
        });
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams((int) context.getResources().getDimension(C17320R.dimen.verizon_ads_sdk_replay_width), (int) context.getResources().getDimension(C17320R.dimen.verizon_ads_sdk_replay_width));
        layoutParams3.addRule(13);
        this.f61261b.addView(this.f61263d, layoutParams3);
        m5526c();
        m5529b();
        m5524d();
        videoPlayer.registerListener(new C173321());
    }

    public VideoPlayer getVideoPlayer() {
        return this.f61268i;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        VideoPlayer videoPlayer = this.f61268i;
        if (videoPlayer == null) {
            f61260a.m5567d("A VideoPlayer instance has not been bound.");
        } else {
            videoPlayer.setAudioFocus();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        VideoPlayer videoPlayer = this.f61268i;
        if (videoPlayer != null) {
            videoPlayer.releaseAudioFocus();
        } else {
            f61260a.m5567d("A VideoPlayer instance has not been bound.");
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        AbsSavedState absSavedState = (AbsSavedState) parcelable;
        super.onRestoreInstanceState(absSavedState.getSuperState());
        VideoPlayer videoPlayer = this.f61268i;
        if (videoPlayer == null) {
            f61260a.m5567d("A VideoPlayer instance has not been bound.");
        } else {
            videoPlayer.restoreInstanceState(absSavedState);
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        VideoPlayer videoPlayer = this.f61268i;
        if (videoPlayer == null) {
            f61260a.m5567d("A VideoPlayer instance has not been bound.");
            return null;
        }
        return videoPlayer.saveInstanceState(super.onSaveInstanceState());
    }

    public void setMuteToggleEnabled(boolean z) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f61260a.m5565e("setMuteToggleEnabled must be called from UI thread.");
            return;
        }
        this.f61267h = z;
        m5529b();
    }

    public void setPlayButtonEnabled(boolean z) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f61260a.m5565e("setPlayButtonEnabled must be called from UI thread.");
            return;
        }
        this.f61266g = z;
        m5524d();
    }

    public void setReplayButtonEnabled(boolean z) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f61260a.m5565e("setReplayButtonEnabled must be called from UI thread.");
            return;
        }
        this.f61265f = z;
        m5526c();
    }
}

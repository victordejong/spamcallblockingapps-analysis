package com.appnext.nativeads;

import android.content.Context;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.appnext.base.C0472a;
import com.appnext.core.C0551g;
import com.appnext.p005a.C0468a;
import com.appnext.p005a.C0470b;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/appnext/nativeads/MediaView.class */
public class MediaView extends RelativeLayout {

    /* renamed from: fE */
    private NativeAd f1929fE;

    /* renamed from: fF */
    private MediaType f1930fF;

    /* renamed from: fG */
    private NativeAdData f1931fG;

    /* renamed from: fH */
    private C0468a f1932fH;

    /* renamed from: fI */
    private C0470b f1933fI;

    /* renamed from: fJ */
    private View f1934fJ;

    /* renamed from: fK */
    private C0622a f1935fK;
    private Handler mHandler;
    private MediaPlayer mediaPlayer;

    /* renamed from: fD */
    private boolean f1928fD = true;
    private boolean mute = false;
    private boolean clickEnabled = true;

    /* renamed from: fL */
    private boolean f1936fL = false;
    private boolean finished = false;

    /* renamed from: fM */
    private int f1937fM = 0;
    private Runnable tick = new Runnable() { // from class: com.appnext.nativeads.MediaView.8
        @Override // java.lang.Runnable
        public final void run() {
            try {
                if (MediaView.this.mediaPlayer != null && MediaView.this.mediaPlayer.isPlaying()) {
                    MediaView mediaView = MediaView.this;
                    mediaView.f1937fM = mediaView.mediaPlayer.getCurrentPosition();
                }
            } catch (Throwable th) {
            }
            if (MediaView.this.mHandler != null) {
                MediaView.this.mHandler.postDelayed(MediaView.this.tick, 500L);
            }
        }
    };

    /* loaded from: classes-dex2jar.jar:com/appnext/nativeads/MediaView$MediaType.class */
    public enum MediaType {
        VIDEO,
        STATIC
    }

    /* renamed from: com.appnext.nativeads.MediaView$a */
    /* loaded from: classes-dex2jar.jar:com/appnext/nativeads/MediaView$a.class */
    public final class C0622a extends ImageView {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0622a(Context context) {
            super(context);
            MediaView.this = r4;
        }
    }

    public MediaView(Context context) {
        super(context);
    }

    public MediaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MediaView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public MediaView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    /* renamed from: ba */
    private void m42236ba() {
        try {
            this.f1933fI = new C0470b(getContext());
            this.f1929fE.downloadAndDisplayImage(getContext(), this.f1933fI, this.f1931fG.getWideImageURL());
            addView(this.f1933fI);
            ((RelativeLayout.LayoutParams) this.f1933fI.getLayoutParams()).addRule(13);
            this.f1933fI.getLayoutParams().width = -1;
            this.f1933fI.getLayoutParams().height = -2;
            this.f1933fI.setAdjustViewBounds(true);
        } catch (Throwable th) {
            C0472a.m42577a("MediaView$initStatic", th);
        }
    }

    /* renamed from: a */
    public final void m42239a(NativeAd nativeAd, NativeAdData nativeAdData, MediaType mediaType) {
        Uri uri;
        try {
            this.f1929fE = nativeAd;
            this.f1931fG = nativeAdData;
            this.f1930fF = mediaType;
            if (mediaType == MediaType.VIDEO) {
                this.f1932fH = new C0468a(getContext().getApplicationContext());
                this.mHandler = new Handler();
                this.f1932fH.setPlayPauseListener(new C0468a.AbstractC0469a() { // from class: com.appnext.nativeads.MediaView.1
                    @Override // com.appnext.p005a.C0468a.AbstractC0469a
                    /* renamed from: bb */
                    public final void mo42226bb() {
                        ((ImageView) MediaView.this.f1934fJ).setImageResource(0);
                    }

                    @Override // com.appnext.p005a.C0468a.AbstractC0469a
                    public final void onPause() {
                        ((ImageView) MediaView.this.f1934fJ).setImageResource(C0635R.C0636drawable.apnxt_na_play);
                    }
                });
                this.f1932fH.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.appnext.nativeads.MediaView.2
                    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                    public final void onGlobalLayout() {
                        try {
                            if (MediaView.this.f1932fH == null) {
                                return;
                            }
                            if (MediaView.this.getLayoutParams().height == -2) {
                                MediaView.this.f1932fH.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
                            } else if (MediaView.this.getLayoutParams().height == -1) {
                                MediaView.this.f1932fH.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
                            } else if (MediaView.this.getLayoutParams().height < C0551g.m42395a(MediaView.this.getContext(), 200.0f)) {
                                MediaView.this.f1932fH.setLayoutParams(new RelativeLayout.LayoutParams(-1, C0551g.m42395a(MediaView.this.getContext(), 200.0f)));
                            } else {
                                MediaView.this.f1932fH.setLayoutParams(new RelativeLayout.LayoutParams(-1, MediaView.this.getHeight()));
                            }
                            MediaView.this.f1932fH.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                            ((RelativeLayout.LayoutParams) MediaView.this.f1932fH.getLayoutParams()).addRule(13);
                            ((RelativeLayout.LayoutParams) MediaView.this.f1934fJ.getLayoutParams()).addRule(13);
                        } catch (Throwable th) {
                            C0472a.m42577a("MediaView$initVideo", th);
                        }
                    }
                });
                this.f1932fH.setLayoutParams(new RelativeLayout.LayoutParams(-1, 1));
                addView(this.f1932fH);
                this.f1932fH.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.appnext.nativeads.MediaView.3
                    @Override // android.media.MediaPlayer.OnPreparedListener
                    public final void onPrepared(MediaPlayer mediaPlayer) {
                        try {
                            MediaView.this.mediaPlayer = mediaPlayer;
                            if (MediaView.this.isMute()) {
                                MediaView.this.mediaPlayer.setVolume(0.0f, 0.0f);
                            } else {
                                MediaView.this.mediaPlayer.setVolume(1.0f, 1.0f);
                            }
                            MediaView.this.mHandler.removeCallbacksAndMessages(null);
                            MediaView.this.mHandler.post(MediaView.this.tick);
                            MediaView.this.mediaPlayer.seekTo(MediaView.this.f1937fM);
                            MediaView.this.mediaPlayer.setOnSeekCompleteListener(new MediaPlayer.OnSeekCompleteListener() { // from class: com.appnext.nativeads.MediaView.3.1
                                @Override // android.media.MediaPlayer.OnSeekCompleteListener
                                public final void onSeekComplete(MediaPlayer mediaPlayer2) {
                                    if (!MediaView.this.isAutoPLay() || MediaView.this.f1929fE.getNativeAdView().getVisiblePercent(MediaView.this.f1932fH) <= 90) {
                                        return;
                                    }
                                    MediaView.this.play();
                                }
                            });
                            new Handler().postDelayed(new Runnable() { // from class: com.appnext.nativeads.MediaView.3.2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    try {
                                        MediaView.this.f1934fJ.getLayoutParams().height = MediaView.this.f1932fH.getMeasuredHeight();
                                    } catch (Throwable th) {
                                        C0472a.m42577a("MediaView$initVideo", th);
                                    }
                                }
                            }, 200L);
                            MediaView.this.mediaPlayer.setOnInfoListener(new MediaPlayer.OnInfoListener() { // from class: com.appnext.nativeads.MediaView.3.3
                                @Override // android.media.MediaPlayer.OnInfoListener
                                public final boolean onInfo(MediaPlayer mediaPlayer2, int i, int i2) {
                                    return false;
                                }
                            });
                        } catch (Throwable th) {
                        }
                    }
                });
                this.f1932fH.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.appnext.nativeads.MediaView.4
                    @Override // android.media.MediaPlayer.OnErrorListener
                    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                        if (i == -38 && i2 == 0) {
                            return true;
                        }
                        StringBuilder sb = new StringBuilder("mp error: what: ");
                        sb.append(i);
                        sb.append(" extra: ");
                        sb.append(i2);
                        return true;
                    }
                });
                this.f1932fH.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.appnext.nativeads.MediaView.5
                    @Override // android.media.MediaPlayer.OnCompletionListener
                    public final void onCompletion(MediaPlayer mediaPlayer) {
                        try {
                            if (MediaView.this.mediaPlayer == null || MediaView.this.mediaPlayer.getCurrentPosition() == 0 || MediaView.this.mediaPlayer.getDuration() == 0) {
                                return;
                            }
                            if (MediaView.this.finished) {
                                return;
                            }
                            MediaView.this.finished = true;
                            if (MediaView.this.isClickEnabled()) {
                                return;
                            }
                            ((ImageView) MediaView.this.f1934fJ).setImageResource(C0635R.C0636drawable.apnxt_na_play);
                        } catch (Throwable th) {
                            C0472a.m42577a("MediaView$initVideo", th);
                        }
                    }
                });
                String selectedVideo = this.f1931fG.getSelectedVideo();
                if (selectedVideo != null && !selectedVideo.equals("")) {
                    View c0622a = new C0622a(getContext());
                    this.f1934fJ = c0622a;
                    addView(c0622a);
                    this.f1934fJ.getLayoutParams().height = -1;
                    this.f1934fJ.getLayoutParams().width = -1;
                    ((ImageView) this.f1934fJ).setImageResource(C0635R.C0636drawable.apnxt_na_play);
                    ((ImageView) this.f1934fJ).setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    this.f1934fJ.setOnClickListener(new View.OnClickListener() { // from class: com.appnext.nativeads.MediaView.6
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            if (MediaView.this.f1932fH == null || !MediaView.this.f1932fH.isPlaying()) {
                                MediaView.this.f1936fL = false;
                                MediaView.this.finished = false;
                                MediaView.this.f1932fH.start();
                            } else if (!MediaView.this.isClickEnabled()) {
                                MediaView.this.f1936fL = true;
                                MediaView.this.f1932fH.pause();
                            } else {
                                if (!MediaView.this.isAutoPLay()) {
                                    ((ImageView) MediaView.this.f1934fJ).setImageResource(C0635R.C0636drawable.apnxt_na_play);
                                }
                                MediaView.super.callOnClick();
                            }
                        }
                    });
                    if (isAutoPLay()) {
                        ((ImageView) this.f1934fJ).setImageResource(0);
                    }
                    C0622a c0622a2 = new C0622a(getContext());
                    this.f1935fK = c0622a2;
                    addView(c0622a2);
                    this.f1935fK.getLayoutParams().height = C0551g.m42395a(getContext(), 30.0f);
                    this.f1935fK.getLayoutParams().width = C0551g.m42395a(getContext(), 30.0f);
                    if (isMute()) {
                        this.f1935fK.setImageResource(C0635R.C0636drawable.apnxt_na_mute);
                    } else {
                        this.f1935fK.setImageResource(C0635R.C0636drawable.apnxt_na_unmute);
                    }
                    this.f1935fK.setOnClickListener(new View.OnClickListener() { // from class: com.appnext.nativeads.MediaView.7
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            MediaView mediaView = MediaView.this;
                            mediaView.setMute(!mediaView.isMute());
                            if (MediaView.this.isMute()) {
                                MediaView.this.f1935fK.setImageResource(C0635R.C0636drawable.apnxt_na_mute);
                            } else {
                                MediaView.this.f1935fK.setImageResource(C0635R.C0636drawable.apnxt_na_unmute);
                            }
                        }
                    });
                    C0468a c0468a = this.f1932fH;
                    String m42378b = C0551g.m42378b(selectedVideo);
                    String str = getContext().getFilesDir().getAbsolutePath() + "/data/appnext/videos/";
                    if (new File(str + m42378b).exists()) {
                        uri = Uri.parse(str + m42378b);
                    } else {
                        uri = Uri.parse(selectedVideo);
                    }
                    c0468a.setVideoURI(uri);
                }
                removeView(this.f1932fH);
                this.f1932fH = null;
                m42236ba();
            } else {
                m42236ba();
            }
            if (getBackground() != null) {
                return;
            }
            setBackgroundColor(-16777216);
        } catch (Throwable th) {
            C0472a.m42577a("MediaView$initData", th);
        }
    }

    /* renamed from: d */
    public final void m42234d(int i) {
        if (this.f1930fF == MediaType.VIDEO) {
            if (i < 90) {
                pause();
            } else if (this.f1936fL || !isAutoPLay() || this.finished) {
            } else {
                play();
            }
        }
    }

    public void destroy() {
        removeAllViews();
        try {
            C0468a c0468a = this.f1932fH;
            if (c0468a != null) {
                c0468a.setOnCompletionListener(null);
                this.f1932fH.setOnErrorListener(null);
                this.f1932fH.setOnPreparedListener(null);
                this.f1932fH.suspend();
                this.f1932fH = null;
                this.mediaPlayer.release();
                this.mediaPlayer = null;
            }
        } catch (Throwable th) {
            C0472a.m42577a("MediaView$destroy", th);
        }
        try {
            C0470b c0470b = this.f1933fI;
            if (c0470b != null) {
                c0470b.setImageBitmap(null);
                this.f1933fI = null;
            }
        } catch (Throwable th2) {
            C0472a.m42577a("MediaView$destroy", th2);
        }
        this.mHandler.removeCallbacksAndMessages(null);
    }

    public boolean isAutoPLay() {
        return this.f1928fD;
    }

    public boolean isClickEnabled() {
        return this.clickEnabled;
    }

    public boolean isMute() {
        return this.mute;
    }

    public void pause() {
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer == null || !mediaPlayer.isPlaying()) {
                return;
            }
            this.mediaPlayer.pause();
            ((ImageView) this.f1934fJ).setImageResource(C0635R.C0636drawable.apnxt_na_play);
        } catch (Throwable th) {
        }
    }

    public void play() {
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer == null || mediaPlayer.isPlaying()) {
                return;
            }
            this.mediaPlayer.start();
            ((ImageView) this.f1934fJ).setImageResource(0);
        } catch (Throwable th) {
            C0472a.m42577a("MediaView$play", th);
        }
    }

    public void setAutoPLay(boolean z) {
        this.f1928fD = z;
    }

    public void setClickEnabled(boolean z) {
        this.clickEnabled = z;
    }

    public void setMute(boolean z) {
        this.mute = z;
        try {
            if (this.mediaPlayer == null) {
                return;
            }
            if (isMute()) {
                this.mediaPlayer.setVolume(0.0f, 0.0f);
            } else {
                this.mediaPlayer.setVolume(1.0f, 1.0f);
            }
        } catch (Throwable th) {
            C0472a.m42577a("MediaView$setMute", th);
        }
    }
}

package com.flurry.sdk;

import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.widget.VideoView;
import androidx.media2.exoplayer.external.util.MimeTypes;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import java.io.IOException;
/* renamed from: com.flurry.sdk.fl */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/fl.class */
public class C3096fl extends VideoView {

    /* renamed from: a */
    public static final String f4982a = C3096fl.class.getSimpleName();

    /* renamed from: i */
    public static int f4983i = 0;

    /* renamed from: e */
    public EnumC3103b f4987e;

    /* renamed from: j */
    public AbstractC3102a f4991j;

    /* renamed from: p */
    public AudioManager f4996p;

    /* renamed from: b */
    public float f4984b = 0.0f;

    /* renamed from: c */
    public Uri f4985c = null;

    /* renamed from: d */
    public int f4986d = 0;

    /* renamed from: k */
    public int f4992k = 0;

    /* renamed from: l */
    public final AbstractC3344jl<C3002dq> f4993l = new AbstractC3344jl<C3002dq>() { // from class: com.flurry.sdk.fl.1
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* synthetic */ void mo32302a(C3002dq dqVar) {
            if (C3096fl.this.isPlaying() && C3096fl.this.f4985c != null) {
                try {
                    int duration = C3096fl.this.getDuration();
                    C3096fl.this.f4992k = C3096fl.this.getCurrentPosition();
                    if (duration < 0 || C3096fl.this.f4991j == null) {
                        return;
                    }
                    if (C3096fl.this.f4992k - C3096fl.this.f4984b > 200.0f || C3096fl.this.f4984b <= 300.0f) {
                        C3096fl.this.f4984b = C3096fl.this.f4992k;
                        C3096fl.this.f4991j.mo33064a(C3096fl.this.f4985c.toString(), duration, C3096fl.this.f4992k);
                    }
                } catch (Exception e) {
                    String str = C3096fl.f4982a;
                    C3356jq.m32613a(str, "Video view progress error: " + e.getMessage());
                }
            }
        }
    };

    /* renamed from: n */
    public int f4994n = -1;

    /* renamed from: o */
    public int f4995o = -1;

    /* renamed from: q */
    public MediaPlayer f4997q = null;

    /* renamed from: f */
    public boolean f4988f = false;

    /* renamed from: g */
    public boolean f4989g = false;

    /* renamed from: r */
    public MediaPlayer.OnInfoListener f4998r = new MediaPlayer.OnInfoListener() { // from class: com.flurry.sdk.fl.2
        @Override // android.media.MediaPlayer.OnInfoListener
        public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
            if (i != 3) {
                return false;
            }
            mediaPlayer.setOnInfoListener(null);
            C3096fl.this.setBackgroundColor(0);
            return false;
        }
    };

    /* renamed from: s */
    public MediaPlayer.OnPreparedListener f4999s = new MediaPlayer.OnPreparedListener() { // from class: com.flurry.sdk.fl.3
        @Override // android.media.MediaPlayer.OnPreparedListener
        public final void onPrepared(MediaPlayer mediaPlayer) {
            String str = C3096fl.f4982a;
            C3356jq.m32615a(5, str, "OnPreparedListener: " + C3096fl.this.f4985c);
            C3096fl.this.f4987e = EnumC3103b.STATE_PREPARED;
            int i = C3096fl.this.f4986d;
            C3096fl.this.f4997q = mediaPlayer;
            C3096fl flVar = C3096fl.this;
            flVar.f4996p = (AudioManager) flVar.getContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
            int unused = C3096fl.f4983i = C3096fl.this.f4996p.getStreamVolume(3);
            if (C3096fl.this.f4988f) {
                C3096fl.this.m33082b();
            } else {
                C3096fl.this.m33079c();
            }
            if (i > 3) {
                C3096fl.this.seekTo(i);
            } else {
                C3096fl.this.seekTo(3);
            }
            if (!(C3096fl.this.f4991j == null || C3096fl.this.f4985c == null)) {
                C3096fl.this.f4991j.mo33065a(C3096fl.this.f4985c.toString());
            }
            if (Build.VERSION.SDK_INT < 17) {
                C3096fl.this.setBackgroundColor(0);
            }
        }
    };

    /* renamed from: h */
    public boolean f4990h = false;

    /* renamed from: t */
    public MediaPlayer.OnCompletionListener f5000t = new MediaPlayer.OnCompletionListener() { // from class: com.flurry.sdk.fl.4
        @Override // android.media.MediaPlayer.OnCompletionListener
        public final void onCompletion(MediaPlayer mediaPlayer) {
            C3096fl.this.m33090a();
        }
    };

    /* renamed from: u */
    public MediaPlayer.OnErrorListener f5001u = new MediaPlayer.OnErrorListener() { // from class: com.flurry.sdk.fl.5
        @Override // android.media.MediaPlayer.OnErrorListener
        public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            String str = C3096fl.f4982a;
            C3356jq.m32615a(5, str, "Error: " + C3096fl.this.f4985c + " framework_err " + i + " impl_err " + i2);
            C3096fl.this.f4987e = EnumC3103b.STATE_ERROR;
            if (C3096fl.this.f4991j == null) {
                return true;
            }
            AbstractC3102a aVar = C3096fl.this.f4991j;
            String uri = C3096fl.this.f4985c.toString();
            int i3 = EnumC2873bh.kVideoPlaybackError.f4222z;
            aVar.mo33063a(uri, i, i2);
            return true;
        }
    };

    /* renamed from: com.flurry.sdk.fl$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/fl$a.class */
    public interface AbstractC3102a {
        /* renamed from: a */
        void mo33066a(int i, int i2);

        /* renamed from: a */
        void mo33065a(String str);

        /* renamed from: a */
        void mo33064a(String str, float f, float f2);

        /* renamed from: a */
        void mo33063a(String str, int i, int i2);

        /* renamed from: b */
        void mo33062b(String str);

        /* renamed from: c */
        void mo33061c(int i);

        /* renamed from: d */
        void mo33060d(int i);

        /* renamed from: k */
        void mo33059k();
    }

    /* renamed from: com.flurry.sdk.fl$b */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/fl$b.class */
    public enum EnumC3103b {
        STATE_UNKNOWN,
        STATE_INIT,
        STATE_PREPARED,
        STATE_PLAYING,
        STATE_PAUSED,
        STATE_PLAYBACK_COMPLETED,
        STATE_SUSPEND,
        STATE_ERROR
    }

    public C3096fl(Context context, AbstractC3102a aVar) {
        super(context);
        this.f4987e = EnumC3103b.STATE_UNKNOWN;
        this.f4996p = null;
        this.f4991j = aVar;
        this.f4996p = (AudioManager) getContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        AudioManager audioManager = this.f4996p;
        if (audioManager != null) {
            audioManager.getStreamVolume(3);
        }
        setBackgroundColor(-16777216);
        this.f4987e = EnumC3103b.STATE_INIT;
        this.f4991j = aVar;
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        requestLayout();
        C3356jq.m32615a(3, f4982a, "Register tick listener");
        C3003dr.m33334a().m33333a(this.f4993l);
        if (getHolder() != null) {
            getHolder().setType(3);
        }
    }

    /* renamed from: a */
    public final void m33090a() {
        Uri uri;
        if (!this.f4989g) {
            setBackgroundColor(-16777216);
            this.f4987e = EnumC3103b.STATE_PLAYBACK_COMPLETED;
        }
        AbstractC3102a aVar = this.f4991j;
        if (aVar != null && (uri = this.f4985c) != null) {
            aVar.mo33062b(uri.toString());
        }
    }

    /* renamed from: a */
    public final void m33089a(int i) {
        if (i <= 3) {
            i = 0;
        }
        seekTo(i);
        start();
    }

    /* renamed from: b */
    public final void m33082b() {
        if (this.f4997q != null) {
            f4983i = this.f4996p.getStreamVolume(3);
            this.f4997q.setVolume(0.0f, 0.0f);
        }
        this.f4988f = true;
    }

    /* renamed from: c */
    public final void m33079c() {
        int streamVolume;
        AudioManager audioManager = this.f4996p;
        if (audioManager != null && (streamVolume = audioManager.getStreamVolume(3)) > 0) {
            f4983i = streamVolume;
        }
        MediaPlayer mediaPlayer = this.f4997q;
        if (mediaPlayer != null) {
            mediaPlayer.setVolume(1.0f, 1.0f);
        }
        this.f4988f = false;
    }

    /* renamed from: d */
    public final boolean m33077d() {
        return (this.f4987e != null) & this.f4987e.equals(EnumC3103b.STATE_PLAYBACK_COMPLETED);
    }

    /* renamed from: e */
    public final boolean m33075e() {
        return (this.f4987e != null) & this.f4987e.equals(EnumC3103b.STATE_PAUSED);
    }

    /* renamed from: f */
    public final void m33073f() throws IOException, IllegalArgumentException {
        if (this.f4985c != null) {
            if (Build.VERSION.SDK_INT >= 17) {
                setOnInfoListener(this.f4998r);
            }
            setOnPreparedListener(this.f4999s);
            setOnCompletionListener(this.f5000t);
            setOnErrorListener(this.f5001u);
            pause();
            Uri uri = this.f4985c;
            if ((uri == null || uri.getScheme() == null || this.f4985c.getScheme().equalsIgnoreCase("file")) ? false : true) {
                setVideoURI(this.f4985c);
            } else {
                setVideoPath(this.f4985c.getPath());
            }
            requestFocus();
        }
    }

    public void finalize() throws Throwable {
        super.finalize();
        m33067j();
    }

    /* renamed from: g */
    public final void m33071g() {
        pause();
        m33069h();
    }

    @Override // android.widget.VideoView, android.widget.MediaController.MediaPlayerControl
    public int getCurrentPosition() {
        try {
            int currentPosition = super.getCurrentPosition();
            if (currentPosition == 0) {
                return Integer.MIN_VALUE;
            }
            return currentPosition;
        } catch (Exception e) {
            String str = f4982a;
            C3356jq.m32613a(str, "MediaPlayer current position issue: " + e.getMessage());
            return Integer.MIN_VALUE;
        }
    }

    public int getOffsetStartTime() {
        return 3;
    }

    public int getVolume() {
        AudioManager audioManager = this.f4996p;
        return audioManager != null ? audioManager.getStreamVolume(3) : f4983i;
    }

    /* renamed from: h */
    public final void m33069h() {
        setFocusable(false);
        setFocusableInTouchMode(false);
        if (getContext() != null) {
            Intent intent = new Intent("com.android.music.musicservicecommand");
            intent.putExtra(MraidParser.MRAID_KEY_COMMAND, "pause");
            getContext().sendBroadcast(intent);
        }
        pause();
        this.f4997q.reset();
        m33067j();
    }

    @Override // android.widget.VideoView, android.widget.MediaController.MediaPlayerControl
    public boolean isPlaying() {
        return super.isPlaying();
    }

    /* renamed from: j */
    public final void m33067j() {
        C3356jq.m32615a(3, f4982a, "Remove tick listener");
        C3003dr.m33334a().m33332b(this.f4993l);
    }

    @Override // android.widget.VideoView, android.view.SurfaceView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        try {
            m33073f();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override // android.widget.VideoView, android.view.SurfaceView, android.view.View
    public void onDetachedFromWindow() {
        int i = this.f4992k;
        if (i != Integer.MIN_VALUE) {
            this.f4991j.mo33060d(i);
        }
        super.onDetachedFromWindow();
        pause();
        m33067j();
    }

    @Override // android.widget.VideoView, android.view.SurfaceView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        AbstractC3102a aVar = this.f4991j;
        if (aVar != null && size != this.f4994n && size2 != this.f4995o) {
            this.f4994n = size;
            this.f4995o = size2;
            aVar.mo33066a(size, size2);
        }
    }

    @Override // android.widget.VideoView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.f4990h = true;
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        int i;
        super.onWindowFocusChanged(z);
        if (!z && (i = this.f4992k) != Integer.MIN_VALUE) {
            this.f4991j.mo33061c(i);
            this.f4991j.mo33059k();
        }
    }

    @Override // android.widget.VideoView, android.widget.MediaController.MediaPlayerControl
    public void pause() {
        if (!m33077d()) {
            super.pause();
            this.f4987e = EnumC3103b.STATE_PAUSED;
        }
    }

    @Override // android.widget.VideoView
    public void resume() {
        super.resume();
        this.f4987e = EnumC3103b.STATE_PLAYING;
    }

    @Override // android.widget.VideoView
    public void setVideoPath(String str) {
        super.setVideoPath(str);
    }

    @Override // android.widget.VideoView, android.widget.MediaController.MediaPlayerControl
    public void start() {
        super.start();
        this.f4987e = EnumC3103b.STATE_PLAYING;
    }

    @Override // android.widget.VideoView
    public void suspend() {
        super.suspend();
        this.f4987e = EnumC3103b.STATE_SUSPEND;
    }
}

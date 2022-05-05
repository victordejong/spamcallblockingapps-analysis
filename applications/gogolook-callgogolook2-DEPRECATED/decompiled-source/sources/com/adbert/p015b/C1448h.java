package com.adbert.p015b;

import android.content.Context;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.widget.VideoView;
import com.adbert.p009a.C1402g;
/* renamed from: com.adbert.b.h */
/* loaded from: classes-dex2jar.jar:com/adbert/b/h.class */
public class C1448h extends VideoView {

    /* renamed from: d */
    public MediaPlayer f765d;

    /* renamed from: f */
    public AbstractC1453a f767f;

    /* renamed from: b */
    public int f763b = 0;

    /* renamed from: c */
    public int f764c = 0;

    /* renamed from: e */
    public Handler f766e = new Handler();

    /* renamed from: a */
    public Runnable f762a = new Runnable() { // from class: com.adbert.b.h.4
        @Override // java.lang.Runnable
        public void run() {
            if (C1448h.this.f767f != null) {
                C1448h.this.f767f.onSeekChange();
            }
            C1448h.this.f766e.postDelayed(this, 1000L);
        }
    };

    /* renamed from: g */
    public boolean f768g = false;

    /* renamed from: h */
    public boolean f769h = false;

    /* renamed from: com.adbert.b.h$a */
    /* loaded from: classes-dex2jar.jar:com/adbert/b/h$a.class */
    public interface AbstractC1453a {
        void OnCompletion();

        void OnError();

        void onPrepared(MediaPlayer mediaPlayer);

        void onSeekChange();
    }

    public C1448h(Context context, int i, int i2) {
        super(context);
        m37051a(i, i2);
    }

    /* renamed from: a */
    public void m37052a() {
        pause();
        stopPlayback();
        MediaPlayer mediaPlayer = this.f765d;
        if (mediaPlayer != null) {
            mediaPlayer.release();
        }
    }

    /* renamed from: a */
    public void m37051a(int i, int i2) {
        this.f763b = i2;
        this.f764c = i;
    }

    /* renamed from: b */
    public void m37048b() {
        this.f769h = true;
        try {
            if (this.f765d != null) {
                this.f765d.setVolume(1.0f, 1.0f);
            }
        } catch (Exception e) {
            C1402g.m37141a(e);
        }
    }

    /* renamed from: c */
    public void m37046c() {
        this.f769h = false;
        try {
            if (this.f765d != null) {
                this.f765d.setVolume(0.0f, 0.0f);
            }
        } catch (Exception e) {
        }
    }

    @Override // android.widget.VideoView, android.view.SurfaceView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4 = this.f764c;
        if (i4 == 0 || (i3 = this.f763b) == 0) {
            super.onMeasure(i, i2);
        } else {
            setMeasuredDimension(i4, i3);
        }
    }

    @Override // android.view.SurfaceView, android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
    }

    @Override // android.widget.VideoView, android.widget.MediaController.MediaPlayerControl
    public void pause() {
        if (isPlaying()) {
            super.pause();
        }
        this.f766e.removeCallbacks(this.f762a);
    }

    public void setListener(AbstractC1453a aVar) {
        this.f767f = aVar;
    }

    public void setUrl(String str) {
        setVideoURI(Uri.parse(str));
        requestFocus();
        setMediaController(null);
        setDrawingCacheEnabled(true);
        setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.adbert.b.h.1
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer) {
                C1448h.this.m37046c();
                C1448h.this.f765d = mediaPlayer;
                if (C1448h.this.f767f != null) {
                    C1448h.this.f767f.onPrepared(mediaPlayer);
                }
            }
        });
        setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.adbert.b.h.2
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                if (C1448h.this.f767f == null) {
                    return true;
                }
                C1448h.this.f767f.OnError();
                return true;
            }
        });
        setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.adbert.b.h.3
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer) {
                if (C1448h.this.f767f != null) {
                    C1448h.this.f767f.OnCompletion();
                }
                C1448h.this.f766e.removeCallbacks(C1448h.this.f762a);
            }
        });
    }

    @Override // android.widget.VideoView, android.widget.MediaController.MediaPlayerControl
    public void start() {
        super.start();
        this.f768g = true;
        this.f766e.removeCallbacks(this.f762a);
        this.f766e.post(this.f762a);
    }
}

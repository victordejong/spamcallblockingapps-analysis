package com.bytedance.sdk.openadsdk.core.video.d;

import android.content.Context;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.utils.q;
import java.io.FileDescriptor;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/d/b.class */
public class b extends com.bytedance.sdk.openadsdk.core.video.d.a {

    /* renamed from: a  reason: collision with root package name */
    private final MediaPlayer f9187a;

    /* renamed from: b  reason: collision with root package name */
    private final a f9188b;

    /* renamed from: c  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.video.a.a f9189c;

    /* renamed from: d  reason: collision with root package name */
    private Surface f9190d;
    private final Object e;
    private boolean f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/d/b$a.class */
    public class a implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnVideoSizeChangedListener {

        /* renamed from: b  reason: collision with root package name */
        private final WeakReference<b> f9192b;

        public a(b bVar) {
            this.f9192b = new WeakReference<>(bVar);
        }

        @Override // android.media.MediaPlayer.OnBufferingUpdateListener
        public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
            try {
                if (this.f9192b.get() != null) {
                    b.this.a(i);
                }
            } catch (Throwable th) {
                q.c("AndroidMediaPlayer", "AndroidMediaPlayerListenerHolder.onBufferingUpdate error: ", th);
            }
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            try {
                if (this.f9192b.get() != null) {
                    b.this.c();
                }
            } catch (Throwable th) {
                q.c("AndroidMediaPlayer", "AndroidMediaPlayerListenerHolder.onCompletion error: ", th);
            }
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            boolean z = false;
            try {
                if (this.f9192b.get() != null) {
                    z = false;
                    if (b.this.a(i, i2)) {
                        z = true;
                    }
                }
                return z;
            } catch (Throwable th) {
                q.c("AndroidMediaPlayer", "AndroidMediaPlayerListenerHolder.onError error: ", th);
                return false;
            }
        }

        @Override // android.media.MediaPlayer.OnInfoListener
        public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
            boolean z = false;
            try {
                if (this.f9192b.get() != null) {
                    z = false;
                    if (b.this.b(i, i2)) {
                        z = true;
                    }
                }
                return z;
            } catch (Throwable th) {
                q.c("AndroidMediaPlayer", "AndroidMediaPlayerListenerHolder.onInfo error: ", th);
                return false;
            }
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            try {
                if (this.f9192b.get() != null) {
                    b.this.b();
                }
            } catch (Throwable th) {
                q.c("AndroidMediaPlayer", "AndroidMediaPlayerListenerHolder.onPrepared error: ", th);
            }
        }

        @Override // android.media.MediaPlayer.OnSeekCompleteListener
        public void onSeekComplete(MediaPlayer mediaPlayer) {
            try {
                if (this.f9192b.get() != null) {
                    b.this.d();
                }
            } catch (Throwable th) {
                q.c("AndroidMediaPlayer", "AndroidMediaPlayerListenerHolder.onSeekComplete error: ", th);
            }
        }

        @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
        public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
            try {
                if (this.f9192b.get() != null) {
                    b.this.a(i, i2, 1, 1);
                }
            } catch (Throwable th) {
                q.c("AndroidMediaPlayer", "AndroidMediaPlayerListenerHolder.onVideoSizeChanged error: ", th);
            }
        }
    }

    public b() {
        MediaPlayer mediaPlayer;
        Object obj = new Object();
        this.e = obj;
        synchronized (obj) {
            mediaPlayer = new MediaPlayer();
            this.f9187a = mediaPlayer;
        }
        a(mediaPlayer);
        try {
            mediaPlayer.setAudioStreamType(3);
        } catch (Throwable th) {
            q.c("AndroidMediaPlayer", "setAudioStreamType error: ", th);
        }
        this.f9188b = new a(this);
        n();
    }

    private void a(MediaPlayer mediaPlayer) {
        if (Build.VERSION.SDK_INT >= 19 && Build.VERSION.SDK_INT < 28) {
            try {
                Class<?> cls = Class.forName("android.media.MediaTimeProvider");
                Class<?> cls2 = Class.forName("android.media.SubtitleController");
                Class<?> cls3 = Class.forName("android.media.SubtitleController$Anchor");
                Object newInstance = cls2.getConstructor(Context.class, cls, Class.forName("android.media.SubtitleController$Listener")).newInstance(n.a(), null, null);
                Field declaredField = cls2.getDeclaredField("mHandler");
                declaredField.setAccessible(true);
                declaredField.set(newInstance, new Handler());
                declaredField.setAccessible(false);
                mediaPlayer.getClass().getMethod("setSubtitleAnchor", cls2, cls3).invoke(mediaPlayer, newInstance, null);
            } catch (Throwable th) {
                q.c("AndroidMediaPlayer", "setSubtitleController error: ", th);
            }
        }
    }

    private void m() {
        com.bytedance.sdk.openadsdk.video.a.a aVar;
        if (Build.VERSION.SDK_INT >= 23 && (aVar = this.f9189c) != null) {
            try {
                aVar.close();
            } catch (Throwable th) {
                q.c("AndroidMediaPlayer", "releaseMediaDataSource error: ", th);
            }
            this.f9189c = null;
        }
    }

    private void n() {
        this.f9187a.setOnPreparedListener(this.f9188b);
        this.f9187a.setOnBufferingUpdateListener(this.f9188b);
        this.f9187a.setOnCompletionListener(this.f9188b);
        this.f9187a.setOnSeekCompleteListener(this.f9188b);
        this.f9187a.setOnVideoSizeChangedListener(this.f9188b);
        this.f9187a.setOnErrorListener(this.f9188b);
        this.f9187a.setOnInfoListener(this.f9188b);
    }

    private void o() {
        try {
            Surface surface = this.f9190d;
            if (surface != null) {
                surface.release();
                this.f9190d = null;
            }
        } catch (Throwable th) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c
    public void a(float f, float f2) throws Throwable {
        this.f9187a.setVolume(f, f2);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c
    public void a(long j) throws Throwable {
        this.f9187a.seekTo((int) j);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c
    public void a(Context context, int i) throws Throwable {
        this.f9187a.setWakeMode(context, i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c
    public void a(Surface surface) {
        o();
        this.f9190d = surface;
        this.f9187a.setSurface(surface);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c
    public void a(SurfaceHolder surfaceHolder) throws Throwable {
        synchronized (this.e) {
            if (!this.f) {
                this.f9187a.setDisplay(surfaceHolder);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c
    public void a(FileDescriptor fileDescriptor) throws Throwable {
        this.f9187a.setDataSource(fileDescriptor);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c
    public void a(String str) throws Throwable {
        Uri parse = Uri.parse(str);
        String scheme = parse.getScheme();
        if (TextUtils.isEmpty(scheme) || !scheme.equalsIgnoreCase("file")) {
            this.f9187a.setDataSource(str);
        } else {
            this.f9187a.setDataSource(parse.getPath());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c
    public void a(String str, String str2) {
        synchronized (this) {
            String str3 = str2;
            if (TextUtils.isEmpty(str2)) {
                str3 = com.bytedance.sdk.openadsdk.k.g.b.a(str);
            }
            if (this.f9189c == null) {
                com.bytedance.sdk.openadsdk.video.b.a aVar = new com.bytedance.sdk.openadsdk.video.b.a();
                aVar.a(str);
                aVar.b(str3);
                this.f9189c = new com.bytedance.sdk.openadsdk.video.a.a(n.a(), aVar);
            }
            this.f9187a.setDataSource(this.f9189c);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c
    public void a(boolean z) throws Throwable {
        this.f9187a.setScreenOnWhilePlaying(z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c
    public void b(boolean z) throws Throwable {
        this.f9187a.setLooping(z);
    }

    public MediaPlayer e() {
        return this.f9187a;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c
    public void f() throws Throwable {
        this.f9187a.start();
    }

    protected void finalize() throws Throwable {
        super.finalize();
        o();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c
    public void g() throws Throwable {
        this.f9187a.stop();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c
    public void h() throws Throwable {
        this.f9187a.pause();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c
    public long i() {
        try {
            return this.f9187a.getCurrentPosition();
        } catch (Throwable th) {
            q.c("AndroidMediaPlayer", "getCurrentPosition error: ", th);
            return 0L;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c
    public long j() {
        try {
            return this.f9187a.getDuration();
        } catch (Throwable th) {
            q.c("AndroidMediaPlayer", "getDuration error: ", th);
            return 0L;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c
    public void k() throws Throwable {
        this.f = true;
        this.f9187a.release();
        o();
        m();
        a();
        n();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c
    public void l() throws Throwable {
        try {
            this.f9187a.reset();
        } catch (Throwable th) {
            q.c("AndroidMediaPlayer", "reset error: ", th);
        }
        m();
        a();
        n();
    }
}

package com.bytedance.sdk.openadsdk.core.video.p161d;

import android.content.Context;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.p176k.p183g.C5028b;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.video.p227a.C5492a;
import com.bytedance.sdk.openadsdk.video.p231b.C5500a;
import java.io.FileDescriptor;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
/* renamed from: com.bytedance.sdk.openadsdk.core.video.d.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/d/b.class */
public class C4689b extends AbstractC4688a {

    /* renamed from: a */
    private final MediaPlayer f17145a;

    /* renamed from: b */
    private final C4690a f17146b;

    /* renamed from: c */
    private C5492a f17147c;

    /* renamed from: d */
    private Surface f17148d;

    /* renamed from: e */
    private final Object f17149e;

    /* renamed from: f */
    private boolean f17150f;

    /* renamed from: com.bytedance.sdk.openadsdk.core.video.d.b$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/d/b$a.class */
    public class C4690a implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnVideoSizeChangedListener {

        /* renamed from: b */
        private final WeakReference<C4689b> f17152b;

        public C4690a(C4689b c4689b) {
            C4689b.this = r6;
            this.f17152b = new WeakReference<>(c4689b);
        }

        @Override // android.media.MediaPlayer.OnBufferingUpdateListener
        public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
            try {
                if (this.f17152b.get() == null) {
                    return;
                }
                C4689b.this.m34495a(i);
            } catch (Throwable th) {
                C5478q.m32108c("AndroidMediaPlayer", "AndroidMediaPlayerListenerHolder.onBufferingUpdate error: ", th);
            }
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            try {
                if (this.f17152b.get() == null) {
                    return;
                }
                C4689b.this.m34490c();
            } catch (Throwable th) {
                C5478q.m32108c("AndroidMediaPlayer", "AndroidMediaPlayerListenerHolder.onCompletion error: ", th);
            }
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            boolean z = false;
            try {
                if (this.f17152b.get() != null) {
                    z = false;
                    if (C4689b.this.m34494a(i, i2)) {
                        z = true;
                    }
                }
                return z;
            } catch (Throwable th) {
                C5478q.m32108c("AndroidMediaPlayer", "AndroidMediaPlayerListenerHolder.onError error: ", th);
                return false;
            }
        }

        @Override // android.media.MediaPlayer.OnInfoListener
        public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
            boolean z = false;
            try {
                if (this.f17152b.get() != null) {
                    z = false;
                    if (C4689b.this.m34491b(i, i2)) {
                        z = true;
                    }
                }
                return z;
            } catch (Throwable th) {
                C5478q.m32108c("AndroidMediaPlayer", "AndroidMediaPlayerListenerHolder.onInfo error: ", th);
                return false;
            }
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            try {
                if (this.f17152b.get() == null) {
                    return;
                }
                C4689b.this.m34492b();
            } catch (Throwable th) {
                C5478q.m32108c("AndroidMediaPlayer", "AndroidMediaPlayerListenerHolder.onPrepared error: ", th);
            }
        }

        @Override // android.media.MediaPlayer.OnSeekCompleteListener
        public void onSeekComplete(MediaPlayer mediaPlayer) {
            try {
                if (this.f17152b.get() == null) {
                    return;
                }
                C4689b.this.m34489d();
            } catch (Throwable th) {
                C5478q.m32108c("AndroidMediaPlayer", "AndroidMediaPlayerListenerHolder.onSeekComplete error: ", th);
            }
        }

        @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
        public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
            try {
                if (this.f17152b.get() == null) {
                    return;
                }
                C4689b.this.m34493a(i, i2, 1, 1);
            } catch (Throwable th) {
                C5478q.m32108c("AndroidMediaPlayer", "AndroidMediaPlayerListenerHolder.onVideoSizeChanged error: ", th);
            }
        }
    }

    public C4689b() {
        MediaPlayer mediaPlayer;
        Object obj = new Object();
        this.f17149e = obj;
        synchronized (obj) {
            mediaPlayer = new MediaPlayer();
            this.f17145a = mediaPlayer;
        }
        m34488a(mediaPlayer);
        try {
            mediaPlayer.setAudioStreamType(3);
        } catch (Throwable th) {
            C5478q.m32108c("AndroidMediaPlayer", "setAudioStreamType error: ", th);
        }
        this.f17146b = new C4690a(this);
        m34485n();
    }

    /* renamed from: a */
    private void m34488a(MediaPlayer mediaPlayer) {
        if (Build.VERSION.SDK_INT < 19 || Build.VERSION.SDK_INT >= 28) {
            return;
        }
        try {
            Class<?> cls = Class.forName("android.media.MediaTimeProvider");
            Class<?> cls2 = Class.forName("android.media.SubtitleController");
            Class<?> cls3 = Class.forName("android.media.SubtitleController$Anchor");
            Object newInstance = cls2.getConstructor(Context.class, cls, Class.forName("android.media.SubtitleController$Listener")).newInstance(C4600n.m34815a(), null, null);
            Field declaredField = cls2.getDeclaredField("mHandler");
            declaredField.setAccessible(true);
            declaredField.set(newInstance, new Handler());
            declaredField.setAccessible(false);
            mediaPlayer.getClass().getMethod("setSubtitleAnchor", cls2, cls3).invoke(mediaPlayer, newInstance, null);
        } catch (Throwable th) {
            C5478q.m32108c("AndroidMediaPlayer", "setSubtitleController error: ", th);
        }
    }

    /* renamed from: m */
    private void m34486m() {
        C5492a c5492a;
        if (Build.VERSION.SDK_INT < 23 || (c5492a = this.f17147c) == null) {
            return;
        }
        try {
            c5492a.close();
        } catch (Throwable th) {
            C5478q.m32108c("AndroidMediaPlayer", "releaseMediaDataSource error: ", th);
        }
        this.f17147c = null;
    }

    /* renamed from: n */
    private void m34485n() {
        this.f17145a.setOnPreparedListener(this.f17146b);
        this.f17145a.setOnBufferingUpdateListener(this.f17146b);
        this.f17145a.setOnCompletionListener(this.f17146b);
        this.f17145a.setOnSeekCompleteListener(this.f17146b);
        this.f17145a.setOnVideoSizeChangedListener(this.f17146b);
        this.f17145a.setOnErrorListener(this.f17146b);
        this.f17145a.setOnInfoListener(this.f17146b);
    }

    /* renamed from: o */
    private void m34484o() {
        try {
            Surface surface = this.f17148d;
            if (surface == null) {
                return;
            }
            surface.release();
            this.f17148d = null;
        } catch (Throwable th) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c
    /* renamed from: a */
    public void mo34483a(float f, float f2) throws Throwable {
        this.f17145a.setVolume(f, f2);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c
    /* renamed from: a */
    public void mo34482a(long j) throws Throwable {
        this.f17145a.seekTo((int) j);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c
    /* renamed from: a */
    public void mo34481a(Context context, int i) throws Throwable {
        this.f17145a.setWakeMode(context, i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c
    /* renamed from: a */
    public void mo34480a(Surface surface) {
        m34484o();
        this.f17148d = surface;
        this.f17145a.setSurface(surface);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c
    /* renamed from: a */
    public void mo34479a(SurfaceHolder surfaceHolder) throws Throwable {
        synchronized (this.f17149e) {
            if (!this.f17150f) {
                this.f17145a.setDisplay(surfaceHolder);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c
    /* renamed from: a */
    public void mo34471a(FileDescriptor fileDescriptor) throws Throwable {
        this.f17145a.setDataSource(fileDescriptor);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c
    /* renamed from: a */
    public void mo34470a(String str) throws Throwable {
        Uri parse = Uri.parse(str);
        String scheme = parse.getScheme();
        if (TextUtils.isEmpty(scheme) || !scheme.equalsIgnoreCase("file")) {
            this.f17145a.setDataSource(str);
        } else {
            this.f17145a.setDataSource(parse.getPath());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c
    /* renamed from: a */
    public void mo34469a(String str, String str2) {
        synchronized (this) {
            String str3 = str2;
            if (TextUtils.isEmpty(str2)) {
                str3 = C5028b.m33243a(str);
            }
            if (this.f17147c == null) {
                C5500a c5500a = new C5500a();
                c5500a.m31989a(str);
                c5500a.m31987b(str3);
                this.f17147c = new C5492a(C4600n.m34815a(), c5500a);
            }
            this.f17145a.setDataSource(this.f17147c);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c
    /* renamed from: a */
    public void mo34468a(boolean z) throws Throwable {
        this.f17145a.setScreenOnWhilePlaying(z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c
    /* renamed from: b */
    public void mo34467b(boolean z) throws Throwable {
        this.f17145a.setLooping(z);
    }

    /* renamed from: e */
    public MediaPlayer m34487e() {
        return this.f17145a;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c
    /* renamed from: f */
    public void mo34466f() throws Throwable {
        this.f17145a.start();
    }

    protected void finalize() throws Throwable {
        super.finalize();
        m34484o();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c
    /* renamed from: g */
    public void mo34465g() throws Throwable {
        this.f17145a.stop();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c
    /* renamed from: h */
    public void mo34464h() throws Throwable {
        this.f17145a.pause();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c
    /* renamed from: i */
    public long mo34463i() {
        try {
            return this.f17145a.getCurrentPosition();
        } catch (Throwable th) {
            C5478q.m32108c("AndroidMediaPlayer", "getCurrentPosition error: ", th);
            return 0L;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c
    /* renamed from: j */
    public long mo34462j() {
        try {
            return this.f17145a.getDuration();
        } catch (Throwable th) {
            C5478q.m32108c("AndroidMediaPlayer", "getDuration error: ", th);
            return 0L;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c
    /* renamed from: k */
    public void mo34461k() throws Throwable {
        this.f17150f = true;
        this.f17145a.release();
        m34484o();
        m34486m();
        m34496a();
        m34485n();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c
    /* renamed from: l */
    public void mo34460l() throws Throwable {
        try {
            this.f17145a.reset();
        } catch (Throwable th) {
            C5478q.m32108c("AndroidMediaPlayer", "reset error: ", th);
        }
        m34486m();
        m34496a();
        m34485n();
    }
}

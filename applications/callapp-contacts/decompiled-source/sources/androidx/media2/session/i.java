package androidx.media2.session;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.Log;
import android.view.Surface;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import androidx.media2.session.MediaSession;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/media2/session/i.class */
public class i implements MediaController.c {

    /* renamed from: b  reason: collision with root package name */
    static final boolean f4665b = Log.isLoggable("MC2ImplLegacy", 3);
    MediaMetadataCompat A;
    boolean B;

    /* renamed from: c  reason: collision with root package name */
    final Context f4666c;

    /* renamed from: d  reason: collision with root package name */
    final SessionToken f4667d;
    final HandlerThread e;
    final Handler f;
    final Object g;
    MediaController h;
    MediaBrowserCompat i;
    boolean j;
    List<MediaItem> k;
    List<MediaSessionCompat.QueueItem> l;
    MediaMetadata m;
    int n;
    int o;
    int p;
    MediaItem q;
    int r;
    int s = -1;
    long t;
    MediaController.PlaybackInfo u;
    SessionCommandGroup v;
    List<MediaSession.CommandButton> w;
    MediaControllerCompat x;
    b y;
    PlaybackStateCompat z;

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/i$a.class */
    final class a extends MediaBrowserCompat.b {
        a() {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.b
        public final void a() {
            MediaBrowserCompat q = i.this.q();
            if (q != null) {
                i.this.a(q.c());
            } else if (i.f4665b) {
                new IllegalStateException();
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.b
        public final void b() {
            i.this.close();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.b
        public final void c() {
            i.this.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/i$b.class */
    public final class b extends MediaControllerCompat.a {
        b() {
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public final void a() {
            boolean z;
            PlaybackStateCompat b2;
            int e;
            int d2;
            boolean f;
            synchronized (i.this.g) {
                z = i.this.B;
            }
            if (!z) {
                i.this.r();
                return;
            }
            synchronized (i.this.g) {
                b2 = i.this.x.b();
                e = i.this.x.e();
                d2 = i.this.x.d();
                f = i.this.x.f423a.f();
            }
            a(b2);
            b(e);
            a(d2);
            a(f);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public final void a(final int i) {
            synchronized (i.this.g) {
                if (!i.this.j && i.this.B) {
                    i.this.n = i;
                    i.this.h.b(new MediaController.b() { // from class: androidx.media2.session.i.b.8
                        @Override // androidx.media2.session.MediaController.b
                        public final void run(MediaController.a aVar) {
                        }
                    });
                }
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public final void a(final Bundle bundle) {
            synchronized (i.this.g) {
                if (!i.this.j && i.this.B) {
                    i.this.h.a(new MediaController.b() { // from class: androidx.media2.session.i.b.5
                        @Override // androidx.media2.session.MediaController.b
                        public final void run(MediaController.a aVar) {
                            new SessionCommand("android.media.session.command.ON_EXTRAS_CHANGED", null);
                            MediaController.a.b();
                        }
                    });
                }
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public final void a(MediaMetadataCompat mediaMetadataCompat) {
            synchronized (i.this.g) {
                if (!i.this.j && i.this.B) {
                    MediaItem mediaItem = i.this.q;
                    i.this.a(mediaMetadataCompat);
                    final MediaItem mediaItem2 = i.this.q;
                    if (mediaItem != mediaItem2) {
                        i.this.h.b(new MediaController.b() { // from class: androidx.media2.session.i.b.2
                            @Override // androidx.media2.session.MediaController.b
                            public final void run(MediaController.a aVar) {
                                aVar.a(mediaItem2);
                            }
                        });
                    }
                }
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public final void a(MediaControllerCompat.d dVar) {
            final MediaController.PlaybackInfo a2 = s.a(dVar);
            synchronized (i.this.g) {
                if (!i.this.j && i.this.B) {
                    i.this.u = a2;
                    i.this.h.b(new MediaController.b() { // from class: androidx.media2.session.i.b.6
                        @Override // androidx.media2.session.MediaController.b
                        public final void run(MediaController.a aVar) {
                        }
                    });
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:68:0x0263  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x027c A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:72:0x027d  */
        @Override // android.support.v4.media.session.MediaControllerCompat.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a(final android.support.v4.media.session.PlaybackStateCompat r8) {
            /*
                Method dump skipped, instructions count: 706
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.session.i.b.a(android.support.v4.media.session.PlaybackStateCompat):void");
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public final void a(CharSequence charSequence) {
            synchronized (i.this.g) {
                if (!i.this.j && i.this.B) {
                    i.this.m = s.a(charSequence);
                    final MediaMetadata mediaMetadata = i.this.m;
                    i.this.h.b(new MediaController.b() { // from class: androidx.media2.session.i.b.4
                        @Override // androidx.media2.session.MediaController.b
                        public final void run(MediaController.a aVar) {
                        }
                    });
                }
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public final void a(final String str, final Bundle bundle) {
            synchronized (i.this.g) {
                if (!i.this.j && i.this.B) {
                    i.this.h.a(new MediaController.b() { // from class: androidx.media2.session.i.b.1
                        @Override // androidx.media2.session.MediaController.b
                        public final void run(MediaController.a aVar) {
                            new SessionCommand(str, null);
                            MediaController.a.b();
                        }
                    });
                }
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public final void a(List<MediaSessionCompat.QueueItem> list) {
            synchronized (i.this.g) {
                if (!i.this.j && i.this.B) {
                    i.this.l = s.g(list);
                    if (!(i.this.l == null || i.this.l.size() == 0)) {
                        i iVar = i.this;
                        iVar.k = s.c(iVar.l);
                        final List<MediaItem> list2 = i.this.k;
                        final MediaMetadata mediaMetadata = i.this.m;
                        i.this.h.b(new MediaController.b() { // from class: androidx.media2.session.i.b.3
                            @Override // androidx.media2.session.MediaController.b
                            public final void run(MediaController.a aVar) {
                                aVar.a(list2, mediaMetadata);
                            }
                        });
                    }
                    i.this.l = null;
                    i.this.k = null;
                    final List list22 = i.this.k;
                    final MediaMetadata mediaMetadata2 = i.this.m;
                    i.this.h.b(new MediaController.b() { // from class: androidx.media2.session.i.b.3
                        @Override // androidx.media2.session.MediaController.b
                        public final void run(MediaController.a aVar) {
                            aVar.a(list22, mediaMetadata2);
                        }
                    });
                }
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public final void a(final boolean z) {
            synchronized (i.this.g) {
                if (!i.this.j && i.this.B) {
                    i.this.h.a(new MediaController.b() { // from class: androidx.media2.session.i.b.7
                        @Override // androidx.media2.session.MediaController.b
                        public final void run(MediaController.a aVar) {
                            new Bundle().putBoolean("androidx.media2.argument.CAPTIONING_ENABLED", z);
                            new SessionCommand("android.media.session.command.ON_CAPTIONING_ENALBED_CHANGED", null);
                            MediaController.a.b();
                        }
                    });
                }
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public final void b() {
            i.this.close();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public final void b(final int i) {
            synchronized (i.this.g) {
                if (!i.this.j && i.this.B) {
                    i.this.o = i;
                    i.this.h.b(new MediaController.b() { // from class: androidx.media2.session.i.b.9
                        @Override // androidx.media2.session.MediaController.b
                        public final void run(MediaController.a aVar) {
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(Context context, MediaController mediaController, SessionToken sessionToken) {
        Object obj = new Object();
        this.g = obj;
        this.f4666c = context;
        this.h = mediaController;
        HandlerThread handlerThread = new HandlerThread("MediaController_Thread");
        this.e = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        this.f = handler;
        this.f4667d = sessionToken;
        if (sessionToken.b() == 0) {
            synchronized (obj) {
                this.i = null;
            }
            a((MediaSessionCompat.Token) sessionToken.e());
            return;
        }
        handler.post(new Runnable() { // from class: androidx.media2.session.i.4
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (i.this.g) {
                    i iVar = i.this;
                    iVar.i = new MediaBrowserCompat(iVar.f4666c, i.this.f4667d.f4550a.f(), new a(), null);
                    i.this.i.a();
                }
            }
        });
    }

    private com.google.common.util.concurrent.a<SessionResult> b(int i) {
        MediaItem mediaItem;
        synchronized (this.g) {
            mediaItem = this.q;
        }
        androidx.c.a.b a2 = androidx.c.a.b.a();
        a2.a((androidx.c.a.b) new SessionResult(i, null, mediaItem));
        return a2;
    }

    @Override // androidx.media2.session.MediaController.c
    public final SessionPlayer.TrackInfo a(int i) {
        Log.w("MC2ImplLegacy", "Session doesn't support getting selected track");
        return null;
    }

    @Override // androidx.media2.session.MediaController.c
    public final com.google.common.util.concurrent.a<SessionResult> a(float f) {
        synchronized (this.g) {
            if (!this.B) {
                Log.w("MC2ImplLegacy", "Session isn't active", new IllegalStateException());
                return b(-100);
            }
            this.x.a().a(f);
            return b(0);
        }
    }

    @Override // androidx.media2.session.MediaController.c
    public final com.google.common.util.concurrent.a<SessionResult> a(long j) {
        synchronized (this.g) {
            if (!this.B) {
                Log.w("MC2ImplLegacy", "Session isn't active", new IllegalStateException());
                return b(-100);
            }
            this.x.a().a(j);
            return b(0);
        }
    }

    @Override // androidx.media2.session.MediaController.c
    public final com.google.common.util.concurrent.a<SessionResult> a(Surface surface) {
        Log.w("MC2ImplLegacy", "Session doesn't support setting Surface");
        return b(-6);
    }

    @Override // androidx.media2.session.MediaController.c
    public final com.google.common.util.concurrent.a<SessionResult> a(SessionPlayer.TrackInfo trackInfo) {
        Log.w("MC2ImplLegacy", "Session doesn't support selecting track");
        return b(-6);
    }

    final void a(MediaMetadataCompat mediaMetadataCompat) {
        this.A = mediaMetadataCompat;
        if (mediaMetadataCompat == null) {
            this.r = -1;
            this.q = null;
        } else if (this.l == null) {
            this.r = -1;
            this.q = s.a(mediaMetadataCompat);
        } else {
            PlaybackStateCompat playbackStateCompat = this.z;
            if (playbackStateCompat != null) {
                long activeQueueItemId = playbackStateCompat.getActiveQueueItemId();
                for (int i = 0; i < this.l.size(); i++) {
                    if (this.l.get(i).getQueueId() == activeQueueItemId) {
                        this.q = s.a(mediaMetadataCompat);
                        this.r = i;
                        return;
                    }
                }
            }
            String string = mediaMetadataCompat.getString(MediaMetadataCompat.METADATA_KEY_MEDIA_ID);
            if (string == null) {
                this.r = -1;
                this.q = s.a(mediaMetadataCompat);
                return;
            }
            int i2 = this.s;
            int i3 = 0;
            if (i2 >= 0) {
                i3 = 0;
                if (i2 < this.l.size()) {
                    i3 = 0;
                    if (TextUtils.equals(string, this.l.get(this.s).getDescription().getMediaId())) {
                        this.q = s.a(mediaMetadataCompat);
                        this.r = this.s;
                        this.s = -1;
                        return;
                    }
                }
            }
            while (i3 < this.l.size()) {
                if (TextUtils.equals(string, this.l.get(i3).getDescription().getMediaId())) {
                    this.r = i3;
                    this.q = s.a(mediaMetadataCompat);
                    return;
                }
                i3++;
            }
            this.r = -1;
            this.q = s.a(this.A);
        }
    }

    final void a(MediaSessionCompat.Token token) {
        boolean g;
        MediaControllerCompat mediaControllerCompat = new MediaControllerCompat(this.f4666c, token);
        synchronized (this.g) {
            this.x = mediaControllerCompat;
            this.y = new b();
            g = this.x.g();
            this.x.a(this.y, this.f);
        }
        if (!g) {
            r();
        }
    }

    @Override // androidx.media2.session.MediaController.c
    public final boolean a() {
        boolean z;
        synchronized (this.g) {
            z = this.B;
        }
        return z;
    }

    @Override // androidx.media2.session.MediaController.c
    public final com.google.common.util.concurrent.a<SessionResult> b() {
        synchronized (this.g) {
            if (!this.B) {
                Log.w("MC2ImplLegacy", "Session isn't active", new IllegalStateException());
                return b(-100);
            }
            this.x.a().a();
            return b(0);
        }
    }

    @Override // androidx.media2.session.MediaController.c
    public final com.google.common.util.concurrent.a<SessionResult> b(SessionPlayer.TrackInfo trackInfo) {
        Log.w("MC2ImplLegacy", "Session doesn't support deselecting track");
        return b(-6);
    }

    @Override // androidx.media2.session.MediaController.c
    public final com.google.common.util.concurrent.a<SessionResult> c() {
        synchronized (this.g) {
            if (!this.B) {
                Log.w("MC2ImplLegacy", "Session isn't active", new IllegalStateException());
                return b(-100);
            }
            this.x.a().b();
            return b(0);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (f4665b) {
            new StringBuilder("close from ").append(this.f4667d);
        }
        synchronized (this.g) {
            if (!this.j) {
                this.f.removeCallbacksAndMessages(null);
                if (Build.VERSION.SDK_INT >= 18) {
                    this.e.quitSafely();
                } else {
                    this.e.quit();
                }
                this.j = true;
                MediaBrowserCompat mediaBrowserCompat = this.i;
                if (mediaBrowserCompat != null) {
                    mediaBrowserCompat.b();
                    this.i = null;
                }
                MediaControllerCompat mediaControllerCompat = this.x;
                if (mediaControllerCompat != null) {
                    mediaControllerCompat.a(this.y);
                    this.x = null;
                }
                this.B = false;
                this.h.b(new MediaController.b() { // from class: androidx.media2.session.i.1
                    @Override // androidx.media2.session.MediaController.b
                    public final void run(MediaController.a aVar) {
                    }
                });
            }
        }
    }

    @Override // androidx.media2.session.MediaController.c
    public final int d() {
        synchronized (this.g) {
            if (!this.B) {
                Log.w("MC2ImplLegacy", "Session isn't active", new IllegalStateException());
                return 3;
            }
            return this.p;
        }
    }

    @Override // androidx.media2.session.MediaController.c
    public final long e() {
        synchronized (this.g) {
            if (!this.B) {
                Log.w("MC2ImplLegacy", "Session isn't active", new IllegalStateException());
                return Long.MIN_VALUE;
            }
            MediaMetadataCompat mediaMetadataCompat = this.A;
            if (mediaMetadataCompat == null || !mediaMetadataCompat.containsKey(MediaMetadataCompat.METADATA_KEY_DURATION)) {
                return Long.MIN_VALUE;
            }
            return this.A.getLong(MediaMetadataCompat.METADATA_KEY_DURATION);
        }
    }

    @Override // androidx.media2.session.MediaController.c
    public final long f() {
        synchronized (this.g) {
            if (!this.B) {
                Log.w("MC2ImplLegacy", "Session isn't active", new IllegalStateException());
                return Long.MIN_VALUE;
            }
            PlaybackStateCompat playbackStateCompat = this.z;
            if (playbackStateCompat == null) {
                return Long.MIN_VALUE;
            }
            return playbackStateCompat.getCurrentPosition(this.h.g);
        }
    }

    @Override // androidx.media2.session.MediaController.c
    public final float g() {
        synchronized (this.g) {
            boolean z = this.B;
            float f = BitmapDescriptorFactory.HUE_RED;
            if (!z) {
                Log.w("MC2ImplLegacy", "Session isn't active", new IllegalStateException());
                return BitmapDescriptorFactory.HUE_RED;
            }
            PlaybackStateCompat playbackStateCompat = this.z;
            if (playbackStateCompat != null) {
                f = playbackStateCompat.getPlaybackSpeed();
            }
            return f;
        }
    }

    @Override // androidx.media2.session.MediaController.c
    public final long h() {
        synchronized (this.g) {
            long j = Long.MIN_VALUE;
            if (!this.B) {
                Log.w("MC2ImplLegacy", "Session isn't active", new IllegalStateException());
                return Long.MIN_VALUE;
            }
            PlaybackStateCompat playbackStateCompat = this.z;
            if (playbackStateCompat != null) {
                j = playbackStateCompat.getBufferedPosition();
            }
            return j;
        }
    }

    @Override // androidx.media2.session.MediaController.c
    public final MediaItem i() {
        synchronized (this.g) {
            if (!this.B) {
                Log.w("MC2ImplLegacy", "Session isn't active", new IllegalStateException());
                return null;
            }
            return this.q;
        }
    }

    @Override // androidx.media2.session.MediaController.c
    public final int j() {
        return -1;
    }

    @Override // androidx.media2.session.MediaController.c
    public final int k() {
        return -1;
    }

    @Override // androidx.media2.session.MediaController.c
    public final com.google.common.util.concurrent.a<SessionResult> l() {
        synchronized (this.g) {
            if (!this.B) {
                Log.w("MC2ImplLegacy", "Session isn't active", new IllegalStateException());
                return b(-100);
            }
            this.x.a().d();
            return b(0);
        }
    }

    @Override // androidx.media2.session.MediaController.c
    public final com.google.common.util.concurrent.a<SessionResult> m() {
        synchronized (this.g) {
            if (!this.B) {
                Log.w("MC2ImplLegacy", "Session isn't active", new IllegalStateException());
                return b(-100);
            }
            this.x.a().c();
            return b(0);
        }
    }

    @Override // androidx.media2.session.MediaController.c
    public final VideoSize n() {
        Log.w("MC2ImplLegacy", "Session doesn't support getting VideoSize");
        return new VideoSize(0, 0);
    }

    @Override // androidx.media2.session.MediaController.c
    public final List<SessionPlayer.TrackInfo> o() {
        Log.w("MC2ImplLegacy", "Session doesn't support getting TrackInfo");
        return Collections.emptyList();
    }

    @Override // androidx.media2.session.MediaController.c
    public final SessionCommandGroup p() {
        synchronized (this.g) {
            if (!this.B) {
                Log.w("MC2ImplLegacy", "Session isn't active", new IllegalStateException());
                return null;
            }
            return this.v;
        }
    }

    public final MediaBrowserCompat q() {
        MediaBrowserCompat mediaBrowserCompat;
        synchronized (this.g) {
            mediaBrowserCompat = this.i;
        }
        return mediaBrowserCompat;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void r() {
        /*
            Method dump skipped, instructions count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.session.i.r():void");
    }
}

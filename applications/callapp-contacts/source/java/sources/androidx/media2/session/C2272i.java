package androidx.media2.session;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.support.p008v4.media.MediaBrowserCompat;
import android.support.p008v4.media.MediaMetadataCompat;
import android.support.p008v4.media.session.MediaControllerCompat;
import android.support.p008v4.media.session.MediaSessionCompat;
import android.support.p008v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.Log;
import android.view.Surface;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import androidx.media2.session.MediaSession;
import androidx.p024c.p025a.C0492b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.common.util.concurrent.AbstractFutureC15579a;
import java.util.Collections;
import java.util.List;
/* renamed from: androidx.media2.session.i */
/* loaded from: classes-dex2jar.jar:androidx/media2/session/i.class */
public class C2272i implements MediaController.AbstractC2202c {

    /* renamed from: b */
    static final boolean f8924b = Log.isLoggable("MC2ImplLegacy", 3);

    /* renamed from: A */
    MediaMetadataCompat f8925A;

    /* renamed from: B */
    boolean f8926B;

    /* renamed from: c */
    final Context f8927c;

    /* renamed from: d */
    final SessionToken f8928d;

    /* renamed from: e */
    final HandlerThread f8929e;

    /* renamed from: f */
    final Handler f8930f;

    /* renamed from: g */
    final Object f8931g;

    /* renamed from: h */
    MediaController f8932h;

    /* renamed from: i */
    MediaBrowserCompat f8933i;

    /* renamed from: j */
    boolean f8934j;

    /* renamed from: k */
    List<MediaItem> f8935k;

    /* renamed from: l */
    List<MediaSessionCompat.QueueItem> f8936l;

    /* renamed from: m */
    MediaMetadata f8937m;

    /* renamed from: n */
    int f8938n;

    /* renamed from: o */
    int f8939o;

    /* renamed from: p */
    int f8940p;

    /* renamed from: q */
    MediaItem f8941q;

    /* renamed from: r */
    int f8942r;

    /* renamed from: s */
    int f8943s = -1;

    /* renamed from: t */
    long f8944t;

    /* renamed from: u */
    MediaController.PlaybackInfo f8945u;

    /* renamed from: v */
    SessionCommandGroup f8946v;

    /* renamed from: w */
    List<MediaSession.CommandButton> f8947w;

    /* renamed from: x */
    MediaControllerCompat f8948x;

    /* renamed from: y */
    C2278b f8949y;

    /* renamed from: z */
    PlaybackStateCompat f8950z;

    /* renamed from: androidx.media2.session.i$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/i$a.class */
    final class C2277a extends MediaBrowserCompat.C0021b {
        C2277a() {
            C2272i.this = r4;
        }

        @Override // android.support.p008v4.media.MediaBrowserCompat.C0021b
        /* renamed from: a */
        public final void mo41044a() {
            MediaBrowserCompat m41046q = C2272i.this.m41046q();
            if (m41046q != null) {
                C2272i.this.m41066a(m41046q.m46594c());
            } else if (!C2272i.f8924b) {
            } else {
                new IllegalStateException();
            }
        }

        @Override // android.support.p008v4.media.MediaBrowserCompat.C0021b
        /* renamed from: b */
        public final void mo41043b() {
            C2272i.this.close();
        }

        @Override // android.support.p008v4.media.MediaBrowserCompat.C0021b
        /* renamed from: c */
        public final void mo41042c() {
            C2272i.this.close();
        }
    }

    /* renamed from: androidx.media2.session.i$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/i$b.class */
    public final class C2278b extends MediaControllerCompat.AbstractC0050a {
        C2278b() {
            C2272i.this = r4;
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0050a
        /* renamed from: a */
        public final void mo41041a() {
            boolean z;
            PlaybackStateCompat m46569b;
            int m46566e;
            int m46567d;
            boolean mo46550f;
            synchronized (C2272i.this.f8931g) {
                z = C2272i.this.f8926B;
            }
            if (!z) {
                C2272i.this.m41045r();
                return;
            }
            synchronized (C2272i.this.f8931g) {
                m46569b = C2272i.this.f8948x.m46569b();
                m46566e = C2272i.this.f8948x.m46566e();
                m46567d = C2272i.this.f8948x.m46567d();
                mo46550f = C2272i.this.f8948x.f78a.mo46550f();
            }
            mo41036a(m46569b);
            mo41030b(m46566e);
            mo41040a(m46567d);
            mo41032a(mo46550f);
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0050a
        /* renamed from: a */
        public final void mo41040a(final int i) {
            synchronized (C2272i.this.f8931g) {
                if (!C2272i.this.f8934j && C2272i.this.f8926B) {
                    C2272i.this.f8938n = i;
                    C2272i.this.f8932h.m41155b(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.i.b.8
                        @Override // androidx.media2.session.MediaController.AbstractC2201b
                        public final void run(MediaController.AbstractC2200a abstractC2200a) {
                        }
                    });
                }
            }
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0050a
        /* renamed from: a */
        public final void mo41039a(final Bundle bundle) {
            synchronized (C2272i.this.f8931g) {
                if (!C2272i.this.f8934j && C2272i.this.f8926B) {
                    C2272i.this.f8932h.m41159a(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.i.b.5
                        @Override // androidx.media2.session.MediaController.AbstractC2201b
                        public final void run(MediaController.AbstractC2200a abstractC2200a) {
                            new SessionCommand("android.media.session.command.ON_EXTRAS_CHANGED", null);
                            MediaController.AbstractC2200a.m41140b();
                        }
                    });
                }
            }
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0050a
        /* renamed from: a */
        public final void mo41038a(MediaMetadataCompat mediaMetadataCompat) {
            synchronized (C2272i.this.f8931g) {
                if (!C2272i.this.f8934j && C2272i.this.f8926B) {
                    MediaItem mediaItem = C2272i.this.f8941q;
                    C2272i.this.m41067a(mediaMetadataCompat);
                    final MediaItem mediaItem2 = C2272i.this.f8941q;
                    if (mediaItem == mediaItem2) {
                        return;
                    }
                    C2272i.this.f8932h.m41155b(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.i.b.2
                        @Override // androidx.media2.session.MediaController.AbstractC2201b
                        public final void run(MediaController.AbstractC2200a abstractC2200a) {
                            abstractC2200a.mo40628a(mediaItem2);
                        }
                    });
                }
            }
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0050a
        /* renamed from: a */
        public final void mo41037a(MediaControllerCompat.C0056d c0056d) {
            final MediaController.PlaybackInfo m40800a = C2481s.m40800a(c0056d);
            synchronized (C2272i.this.f8931g) {
                if (!C2272i.this.f8934j && C2272i.this.f8926B) {
                    C2272i.this.f8945u = m40800a;
                    C2272i.this.f8932h.m41155b(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.i.b.6
                        @Override // androidx.media2.session.MediaController.AbstractC2201b
                        public final void run(MediaController.AbstractC2200a abstractC2200a) {
                        }
                    });
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:68:0x0263  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x027c A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:72:0x027d  */
        /* JADX WARN: Type inference failed for: r0v134, types: [long] */
        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0050a
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo41036a(final android.support.p008v4.media.session.PlaybackStateCompat r8) {
            /*
                Method dump skipped, instructions count: 706
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.session.C2272i.C2278b.mo41036a(android.support.v4.media.session.PlaybackStateCompat):void");
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0050a
        /* renamed from: a */
        public final void mo41035a(CharSequence charSequence) {
            synchronized (C2272i.this.f8931g) {
                if (!C2272i.this.f8934j && C2272i.this.f8926B) {
                    C2272i.this.f8937m = C2481s.m40792a(charSequence);
                    final MediaMetadata mediaMetadata = C2272i.this.f8937m;
                    C2272i.this.f8932h.m41155b(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.i.b.4
                        @Override // androidx.media2.session.MediaController.AbstractC2201b
                        public final void run(MediaController.AbstractC2200a abstractC2200a) {
                        }
                    });
                }
            }
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0050a
        /* renamed from: a */
        public final void mo41034a(final String str, final Bundle bundle) {
            synchronized (C2272i.this.f8931g) {
                if (!C2272i.this.f8934j && C2272i.this.f8926B) {
                    C2272i.this.f8932h.m41159a(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.i.b.1
                        @Override // androidx.media2.session.MediaController.AbstractC2201b
                        public final void run(MediaController.AbstractC2200a abstractC2200a) {
                            new SessionCommand(str, null);
                            MediaController.AbstractC2200a.m41140b();
                        }
                    });
                }
            }
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0050a
        /* renamed from: a */
        public final void mo41033a(List<MediaSessionCompat.QueueItem> list) {
            synchronized (C2272i.this.f8931g) {
                if (!C2272i.this.f8934j && C2272i.this.f8926B) {
                    C2272i.this.f8936l = C2481s.m40782g(list);
                    if (C2272i.this.f8936l != null && C2272i.this.f8936l.size() != 0) {
                        C2272i c2272i = C2272i.this;
                        c2272i.f8935k = C2481s.m40786c(c2272i.f8936l);
                        final List<MediaItem> list2 = C2272i.this.f8935k;
                        final MediaMetadata mediaMetadata = C2272i.this.f8937m;
                        C2272i.this.f8932h.m41155b(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.i.b.3
                            @Override // androidx.media2.session.MediaController.AbstractC2201b
                            public final void run(MediaController.AbstractC2200a abstractC2200a) {
                                abstractC2200a.mo40622a(list2, mediaMetadata);
                            }
                        });
                    }
                    C2272i.this.f8936l = null;
                    C2272i.this.f8935k = null;
                    final List list22 = C2272i.this.f8935k;
                    final MediaMetadata mediaMetadata2 = C2272i.this.f8937m;
                    C2272i.this.f8932h.m41155b(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.i.b.3
                        @Override // androidx.media2.session.MediaController.AbstractC2201b
                        public final void run(MediaController.AbstractC2200a abstractC2200a) {
                            abstractC2200a.mo40622a(list22, mediaMetadata2);
                        }
                    });
                }
            }
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0050a
        /* renamed from: a */
        public final void mo41032a(final boolean z) {
            synchronized (C2272i.this.f8931g) {
                if (!C2272i.this.f8934j && C2272i.this.f8926B) {
                    C2272i.this.f8932h.m41159a(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.i.b.7
                        @Override // androidx.media2.session.MediaController.AbstractC2201b
                        public final void run(MediaController.AbstractC2200a abstractC2200a) {
                            new Bundle().putBoolean("androidx.media2.argument.CAPTIONING_ENABLED", z);
                            new SessionCommand("android.media.session.command.ON_CAPTIONING_ENALBED_CHANGED", null);
                            MediaController.AbstractC2200a.m41140b();
                        }
                    });
                }
            }
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0050a
        /* renamed from: b */
        public final void mo41031b() {
            C2272i.this.close();
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0050a
        /* renamed from: b */
        public final void mo41030b(final int i) {
            synchronized (C2272i.this.f8931g) {
                if (!C2272i.this.f8934j && C2272i.this.f8926B) {
                    C2272i.this.f8939o = i;
                    C2272i.this.f8932h.m41155b(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.i.b.9
                        @Override // androidx.media2.session.MediaController.AbstractC2201b
                        public final void run(MediaController.AbstractC2200a abstractC2200a) {
                        }
                    });
                }
            }
        }
    }

    public C2272i(Context context, MediaController mediaController, SessionToken sessionToken) {
        Object obj = new Object();
        this.f8931g = obj;
        this.f8927c = context;
        this.f8932h = mediaController;
        HandlerThread handlerThread = new HandlerThread("MediaController_Thread");
        this.f8929e = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        this.f8930f = handler;
        this.f8928d = sessionToken;
        if (sessionToken.m41110b() != 0) {
            handler.post(new Runnable() { // from class: androidx.media2.session.i.4
                @Override // java.lang.Runnable
                public final void run() {
                    synchronized (C2272i.this.f8931g) {
                        C2272i c2272i = C2272i.this;
                        c2272i.f8933i = new MediaBrowserCompat(c2272i.f8927c, C2272i.this.f8928d.f8763a.mo41102f(), new C2277a(), null);
                        C2272i.this.f8933i.m46596a();
                    }
                }
            });
            return;
        }
        synchronized (obj) {
            this.f8933i = null;
        }
        m41066a((MediaSessionCompat.Token) sessionToken.m41107e());
    }

    /* renamed from: b */
    private AbstractFutureC15579a<SessionResult> m41062b(int i) {
        MediaItem mediaItem;
        synchronized (this.f8931g) {
            mediaItem = this.f8941q;
        }
        C0492b m45412a = C0492b.m45412a();
        m45412a.mo40774a((C0492b) new SessionResult(i, null, mediaItem));
        return m45412a;
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: a */
    public final SessionPlayer.TrackInfo mo41069a(int i) {
        Log.w("MC2ImplLegacy", "Session doesn't support getting selected track");
        return null;
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: a */
    public final AbstractFutureC15579a<SessionResult> mo41070a(float f) {
        synchronized (this.f8931g) {
            if (this.f8926B) {
                this.f8948x.m46573a().mo46541a(f);
                return m41062b(0);
            }
            Log.w("MC2ImplLegacy", "Session isn't active", new IllegalStateException());
            return m41062b(-100);
        }
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: a */
    public final AbstractFutureC15579a<SessionResult> mo41068a(long j) {
        synchronized (this.f8931g) {
            if (this.f8926B) {
                this.f8948x.m46573a().mo46540a(j);
                return m41062b(0);
            }
            Log.w("MC2ImplLegacy", "Session isn't active", new IllegalStateException());
            return m41062b(-100);
        }
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: a */
    public final AbstractFutureC15579a<SessionResult> mo41065a(Surface surface) {
        Log.w("MC2ImplLegacy", "Session doesn't support setting Surface");
        return m41062b(-6);
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: a */
    public final AbstractFutureC15579a<SessionResult> mo41064a(SessionPlayer.TrackInfo trackInfo) {
        Log.w("MC2ImplLegacy", "Session doesn't support selecting track");
        return m41062b(-6);
    }

    /* renamed from: a */
    final void m41067a(MediaMetadataCompat mediaMetadataCompat) {
        this.f8925A = mediaMetadataCompat;
        if (mediaMetadataCompat == null) {
            this.f8942r = -1;
            this.f8941q = null;
        } else if (this.f8936l == null) {
            this.f8942r = -1;
            this.f8941q = C2481s.m40802a(mediaMetadataCompat);
        } else {
            PlaybackStateCompat playbackStateCompat = this.f8950z;
            if (playbackStateCompat != null) {
                long activeQueueItemId = playbackStateCompat.getActiveQueueItemId();
                for (int i = 0; i < this.f8936l.size(); i++) {
                    if (this.f8936l.get(i).getQueueId() == activeQueueItemId) {
                        this.f8941q = C2481s.m40802a(mediaMetadataCompat);
                        this.f8942r = i;
                        return;
                    }
                }
            }
            String string = mediaMetadataCompat.getString(MediaMetadataCompat.METADATA_KEY_MEDIA_ID);
            if (string == null) {
                this.f8942r = -1;
                this.f8941q = C2481s.m40802a(mediaMetadataCompat);
                return;
            }
            int i2 = this.f8943s;
            int i3 = 0;
            if (i2 >= 0) {
                i3 = 0;
                if (i2 < this.f8936l.size()) {
                    i3 = 0;
                    if (TextUtils.equals(string, this.f8936l.get(this.f8943s).getDescription().getMediaId())) {
                        this.f8941q = C2481s.m40802a(mediaMetadataCompat);
                        this.f8942r = this.f8943s;
                        this.f8943s = -1;
                        return;
                    }
                }
            }
            while (i3 < this.f8936l.size()) {
                if (TextUtils.equals(string, this.f8936l.get(i3).getDescription().getMediaId())) {
                    this.f8942r = i3;
                    this.f8941q = C2481s.m40802a(mediaMetadataCompat);
                    return;
                }
                i3++;
            }
            this.f8942r = -1;
            this.f8941q = C2481s.m40802a(this.f8925A);
        }
    }

    /* renamed from: a */
    final void m41066a(MediaSessionCompat.Token token) {
        boolean m46564g;
        MediaControllerCompat mediaControllerCompat = new MediaControllerCompat(this.f8927c, token);
        synchronized (this.f8931g) {
            this.f8948x = mediaControllerCompat;
            this.f8949y = new C2278b();
            m46564g = this.f8948x.m46564g();
            this.f8948x.m46571a(this.f8949y, this.f8930f);
        }
        if (!m46564g) {
            m41045r();
        }
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: a */
    public final boolean mo41071a() {
        boolean z;
        synchronized (this.f8931g) {
            z = this.f8926B;
        }
        return z;
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: b */
    public final AbstractFutureC15579a<SessionResult> mo41063b() {
        synchronized (this.f8931g) {
            if (this.f8926B) {
                this.f8948x.m46573a().mo46542a();
                return m41062b(0);
            }
            Log.w("MC2ImplLegacy", "Session isn't active", new IllegalStateException());
            return m41062b(-100);
        }
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: b */
    public final AbstractFutureC15579a<SessionResult> mo41061b(SessionPlayer.TrackInfo trackInfo) {
        Log.w("MC2ImplLegacy", "Session doesn't support deselecting track");
        return m41062b(-6);
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: c */
    public final AbstractFutureC15579a<SessionResult> mo41060c() {
        synchronized (this.f8931g) {
            if (this.f8926B) {
                this.f8948x.m46573a().mo46539b();
                return m41062b(0);
            }
            Log.w("MC2ImplLegacy", "Session isn't active", new IllegalStateException());
            return m41062b(-100);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (f8924b) {
            new StringBuilder("close from ").append(this.f8928d);
        }
        synchronized (this.f8931g) {
            if (this.f8934j) {
                return;
            }
            this.f8930f.removeCallbacksAndMessages(null);
            if (Build.VERSION.SDK_INT >= 18) {
                this.f8929e.quitSafely();
            } else {
                this.f8929e.quit();
            }
            this.f8934j = true;
            MediaBrowserCompat mediaBrowserCompat = this.f8933i;
            if (mediaBrowserCompat != null) {
                mediaBrowserCompat.m46595b();
                this.f8933i = null;
            }
            MediaControllerCompat mediaControllerCompat = this.f8948x;
            if (mediaControllerCompat != null) {
                mediaControllerCompat.m46572a(this.f8949y);
                this.f8948x = null;
            }
            this.f8926B = false;
            this.f8932h.m41155b(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.i.1
                @Override // androidx.media2.session.MediaController.AbstractC2201b
                public final void run(MediaController.AbstractC2200a abstractC2200a) {
                }
            });
        }
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: d */
    public final int mo41059d() {
        synchronized (this.f8931g) {
            if (!this.f8926B) {
                Log.w("MC2ImplLegacy", "Session isn't active", new IllegalStateException());
                return 3;
            }
            return this.f8940p;
        }
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: e */
    public final long mo41058e() {
        synchronized (this.f8931g) {
            if (!this.f8926B) {
                Log.w("MC2ImplLegacy", "Session isn't active", new IllegalStateException());
                return Long.MIN_VALUE;
            }
            MediaMetadataCompat mediaMetadataCompat = this.f8925A;
            if (mediaMetadataCompat == null || !mediaMetadataCompat.containsKey(MediaMetadataCompat.METADATA_KEY_DURATION)) {
                return Long.MIN_VALUE;
            }
            return this.f8925A.getLong(MediaMetadataCompat.METADATA_KEY_DURATION);
        }
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: f */
    public final long mo41057f() {
        synchronized (this.f8931g) {
            if (!this.f8926B) {
                Log.w("MC2ImplLegacy", "Session isn't active", new IllegalStateException());
                return Long.MIN_VALUE;
            }
            PlaybackStateCompat playbackStateCompat = this.f8950z;
            if (playbackStateCompat == null) {
                return Long.MIN_VALUE;
            }
            return playbackStateCompat.getCurrentPosition(this.f8932h.f8709g);
        }
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: g */
    public final float mo41056g() {
        synchronized (this.f8931g) {
            float f = 0.0f;
            if (!this.f8926B) {
                Log.w("MC2ImplLegacy", "Session isn't active", new IllegalStateException());
                return BitmapDescriptorFactory.HUE_RED;
            }
            PlaybackStateCompat playbackStateCompat = this.f8950z;
            if (playbackStateCompat != null) {
                f = playbackStateCompat.getPlaybackSpeed();
            }
            return f;
        }
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: h */
    public final long mo41055h() {
        synchronized (this.f8931g) {
            char c = 0;
            if (!this.f8926B) {
                Log.w("MC2ImplLegacy", "Session isn't active", new IllegalStateException());
                return Long.MIN_VALUE;
            }
            PlaybackStateCompat playbackStateCompat = this.f8950z;
            if (playbackStateCompat != null) {
                c = playbackStateCompat.getBufferedPosition();
            }
            return c;
        }
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: i */
    public final MediaItem mo41054i() {
        synchronized (this.f8931g) {
            if (!this.f8926B) {
                Log.w("MC2ImplLegacy", "Session isn't active", new IllegalStateException());
                return null;
            }
            return this.f8941q;
        }
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: j */
    public final int mo41053j() {
        return -1;
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: k */
    public final int mo41052k() {
        return -1;
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: l */
    public final AbstractFutureC15579a<SessionResult> mo41051l() {
        synchronized (this.f8931g) {
            if (this.f8926B) {
                this.f8948x.m46573a().mo46537d();
                return m41062b(0);
            }
            Log.w("MC2ImplLegacy", "Session isn't active", new IllegalStateException());
            return m41062b(-100);
        }
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: m */
    public final AbstractFutureC15579a<SessionResult> mo41050m() {
        synchronized (this.f8931g) {
            if (this.f8926B) {
                this.f8948x.m46573a().mo46538c();
                return m41062b(0);
            }
            Log.w("MC2ImplLegacy", "Session isn't active", new IllegalStateException());
            return m41062b(-100);
        }
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: n */
    public final VideoSize mo41049n() {
        Log.w("MC2ImplLegacy", "Session doesn't support getting VideoSize");
        return new VideoSize(0, 0);
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: o */
    public final List<SessionPlayer.TrackInfo> mo41048o() {
        Log.w("MC2ImplLegacy", "Session doesn't support getting TrackInfo");
        return Collections.emptyList();
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: p */
    public final SessionCommandGroup mo41047p() {
        synchronized (this.f8931g) {
            if (!this.f8926B) {
                Log.w("MC2ImplLegacy", "Session isn't active", new IllegalStateException());
                return null;
            }
            return this.f8946v;
        }
    }

    /* renamed from: q */
    public final MediaBrowserCompat m41046q() {
        MediaBrowserCompat mediaBrowserCompat;
        synchronized (this.f8931g) {
            mediaBrowserCompat = this.f8933i;
        }
        return mediaBrowserCompat;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void m41045r() {
        /*
            Method dump skipped, instructions count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.session.C2272i.m41045r():void");
    }
}

package androidx.media2.session;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Surface;
import androidx.media.AudioAttributesCompat;
import androidx.media.MediaBrowserServiceCompat;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import androidx.media2.session.MediaSession;
import androidx.media2.session.u;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/media2/session/n.class */
public class n implements MediaSession.c {
    private static boolean k = false;
    private static ComponentName l;
    private boolean A;
    private MediaBrowserServiceCompat B;

    /* renamed from: b  reason: collision with root package name */
    final Object f4823b;

    /* renamed from: c  reason: collision with root package name */
    final Uri f4824c;

    /* renamed from: d  reason: collision with root package name */
    final Executor f4825d;
    final MediaSession.d e;
    final MediaSessionCompat f;
    MediaController.PlaybackInfo g;
    androidx.media.f h;
    SessionPlayer i;
    private final Context n;
    private final HandlerThread o;
    private final Handler p;
    private final r q;
    private final o r;
    private final String s;
    private final SessionToken t;
    private final AudioManager u;
    private final f v;
    private final MediaSession w;
    private final PendingIntent x;
    private final PendingIntent y;
    private final BroadcastReceiver z;
    private static final Object j = new Object();

    /* renamed from: a  reason: collision with root package name */
    static final boolean f4822a = Log.isLoggable("MSImplBase", 3);
    private static final SessionResult m = new SessionResult(1);

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/n$a.class */
    static final class a<T extends androidx.media2.common.a> extends androidx.c.a.a<T> {
        final com.google.common.util.concurrent.a<T>[] f;
        AtomicInteger g = new AtomicInteger(0);

        private a(Executor executor, com.google.common.util.concurrent.a<T>[] aVarArr) {
            final int i = 0;
            this.f = aVarArr;
            while (true) {
                com.google.common.util.concurrent.a<T>[] aVarArr2 = this.f;
                if (i < aVarArr2.length) {
                    aVarArr2[i].a(new Runnable() { // from class: androidx.media2.session.n.a.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            try {
                                T t = a.this.f[i].get();
                                int a2 = t.a();
                                if (a2 != 0 && a2 != 1) {
                                    for (int i2 = 0; i2 < a.this.f.length; i2++) {
                                        if (!a.this.f[i2].isCancelled() && !a.this.f[i2].isDone() && i != i2) {
                                            a.this.f[i2].cancel(true);
                                        }
                                    }
                                    a.this.a((a) t);
                                } else if (a.this.g.incrementAndGet() == a.this.f.length) {
                                    a.this.a((a) t);
                                }
                            } catch (Exception e) {
                                for (int i3 = 0; i3 < a.this.f.length; i3++) {
                                    if (!a.this.f[i3].isCancelled() && !a.this.f[i3].isDone() && i != i3) {
                                        a.this.f[i3].cancel(true);
                                    }
                                }
                                a.this.a((Throwable) e);
                            }
                        }
                    }, executor);
                    i++;
                } else {
                    return;
                }
            }
        }

        @SafeVarargs
        public static <U extends androidx.media2.common.a> a<U> a(Executor executor, com.google.common.util.concurrent.a<U>... aVarArr) {
            return new a<>(executor, aVarArr);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/n$b.class */
    final class b extends BroadcastReceiver {
        b() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            KeyEvent keyEvent;
            if ("android.intent.action.MEDIA_BUTTON".equals(intent.getAction()) && androidx.core.e.a.a(intent.getData(), n.this.f4824c) && (keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT")) != null) {
                n.this.f.f448b.a(keyEvent);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @FunctionalInterface
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/n$c.class */
    public interface c<T> {
        T a(SessionPlayer sessionPlayer) throws Exception;
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/n$d.class */
    static final class d implements MediaItem.b {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<n> f4907a;

        d(n nVar) {
            this.f4907a = new WeakReference<>(nVar);
        }

        @Override // androidx.media2.common.MediaItem.b
        public final void a(MediaItem mediaItem, MediaMetadata mediaMetadata) {
            final List<MediaItem> k;
            final n nVar = this.f4907a.get();
            if (!(nVar == null || mediaItem == null || (k = nVar.k()) == null)) {
                for (int i = 0; i < k.size(); i++) {
                    if (mediaItem.equals(k.get(i))) {
                        nVar.a(new e() { // from class: androidx.media2.session.n.d.1
                            @Override // androidx.media2.session.n.e
                            public final void a(MediaSession.a aVar, int i2) throws RemoteException {
                                aVar.a(i2, k, nVar.l(), nVar.n(), nVar.o(), nVar.p());
                            }
                        });
                        return;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @FunctionalInterface
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/n$e.class */
    public interface e {
        void a(MediaSession.a aVar, int i) throws RemoteException;
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/n$f.class */
    static final class f extends u.a implements MediaItem.b {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<n> f4911a;

        /* renamed from: b  reason: collision with root package name */
        private MediaItem f4912b;

        /* renamed from: c  reason: collision with root package name */
        private List<MediaItem> f4913c;

        /* renamed from: d  reason: collision with root package name */
        private final d f4914d;

        f(n nVar) {
            this.f4911a = new WeakReference<>(nVar);
            this.f4914d = new d(nVar);
        }

        private n a() {
            n nVar = this.f4911a.get();
            if (nVar == null && n.f4822a) {
                new IllegalStateException();
            }
            return nVar;
        }

        private void a(final MediaItem mediaItem) {
            final n a2 = a();
            if (a2 != null) {
                a(a2.B(), new e() { // from class: androidx.media2.session.n.f.7
                    @Override // androidx.media2.session.n.e
                    public final void a(MediaSession.a aVar, int i) throws RemoteException {
                        aVar.a(i, mediaItem, a2.n(), a2.o(), a2.p());
                    }
                });
            }
        }

        private void a(SessionPlayer sessionPlayer, e eVar) {
            n a2 = a();
            if (a2 != null && sessionPlayer != null && a2.B() == sessionPlayer) {
                a2.a(eVar);
            }
        }

        private static boolean a(SessionPlayer sessionPlayer) {
            MediaItem r = sessionPlayer.r();
            if (r == null) {
                return false;
            }
            return a(sessionPlayer, r, r.d());
        }

        private static boolean a(SessionPlayer sessionPlayer, MediaItem mediaItem, MediaMetadata mediaMetadata) {
            MediaMetadata mediaMetadata2;
            long f = sessionPlayer.f();
            if (mediaItem != sessionPlayer.r() || sessionPlayer.d() == 0 || f <= 0 || f == Long.MIN_VALUE) {
                return false;
            }
            if (mediaMetadata == null) {
                mediaMetadata2 = new MediaMetadata.a().a(MediaMetadataCompat.METADATA_KEY_DURATION, f).a(MediaMetadataCompat.METADATA_KEY_MEDIA_ID, mediaItem.f()).a("androidx.media2.metadata.PLAYABLE", 1L).a();
            } else if (!mediaMetadata.a(MediaMetadataCompat.METADATA_KEY_DURATION)) {
                mediaMetadata2 = new MediaMetadata.a(mediaMetadata).a(MediaMetadataCompat.METADATA_KEY_DURATION, f).a("androidx.media2.metadata.PLAYABLE", 1L).a();
            } else {
                long d2 = mediaMetadata.d(MediaMetadataCompat.METADATA_KEY_DURATION);
                mediaMetadata2 = null;
                if (f != d2) {
                    Log.w("MSImplBase", "duration mismatch for an item. duration from player=" + f + " duration from metadata=" + d2 + ". May be a timing issue?");
                    mediaMetadata2 = null;
                }
            }
            if (mediaMetadata2 == null) {
                return false;
            }
            mediaItem.a(mediaMetadata2);
            return true;
        }

        @Override // androidx.media2.common.MediaItem.b
        public final void a(MediaItem mediaItem, MediaMetadata mediaMetadata) {
            n a2 = a();
            if (a2 != null && !a(a2.B(), mediaItem, mediaMetadata)) {
                a(mediaItem);
            }
        }

        @Override // androidx.media2.common.SessionPlayer.a
        public final void onAudioAttributesChanged(SessionPlayer sessionPlayer, AudioAttributesCompat audioAttributesCompat) {
            MediaController.PlaybackInfo playbackInfo;
            n a2 = a();
            if (a2 != null && sessionPlayer != null && a2.B() == sessionPlayer) {
                MediaController.PlaybackInfo a3 = a2.a(sessionPlayer, audioAttributesCompat);
                synchronized (a2.f4823b) {
                    playbackInfo = a2.g;
                    a2.g = a3;
                }
                if (!androidx.core.e.a.a(a3, playbackInfo)) {
                    a2.a(a3);
                    if (!(sessionPlayer instanceof u)) {
                        int a4 = n.a(playbackInfo == null ? null : playbackInfo.e);
                        int a5 = n.a(a3.e);
                        if (a4 != a5) {
                            a2.f.a(a5);
                        }
                    }
                }
            }
        }

        @Override // androidx.media2.common.SessionPlayer.a
        public final void onBufferingStateChanged(final SessionPlayer sessionPlayer, final MediaItem mediaItem, final int i) {
            a(sessionPlayer);
            a(sessionPlayer, new e() { // from class: androidx.media2.session.n.f.8
                @Override // androidx.media2.session.n.e
                public final void a(MediaSession.a aVar, int i2) throws RemoteException {
                    aVar.a(i2, mediaItem, i, sessionPlayer.g(), SystemClock.elapsedRealtime(), sessionPlayer.e());
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.a
        public final void onCurrentMediaItemChanged(SessionPlayer sessionPlayer, MediaItem mediaItem) {
            n a2 = a();
            if (a2 != null && sessionPlayer != null && a2.B() == sessionPlayer) {
                MediaItem mediaItem2 = this.f4912b;
                if (mediaItem2 != null) {
                    mediaItem2.a(this);
                }
                if (mediaItem != null) {
                    mediaItem.a(a2.f4825d, this);
                }
                this.f4912b = mediaItem;
                a2.y();
                a2.z();
                boolean z = false;
                if (mediaItem != null) {
                    z = a(sessionPlayer, mediaItem, mediaItem.d());
                }
                if (!z) {
                    a(mediaItem);
                }
            }
        }

        @Override // androidx.media2.common.SessionPlayer.a
        public final void onPlaybackCompleted(SessionPlayer sessionPlayer) {
            a(sessionPlayer, new e() { // from class: androidx.media2.session.n.f.15
                @Override // androidx.media2.session.n.e
                public final void a(MediaSession.a aVar, int i) throws RemoteException {
                    aVar.a(i);
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.a
        public final void onPlaybackSpeedChanged(final SessionPlayer sessionPlayer, final float f) {
            a(sessionPlayer, new e() { // from class: androidx.media2.session.n.f.9
                @Override // androidx.media2.session.n.e
                public final void a(MediaSession.a aVar, int i) throws RemoteException {
                    aVar.a(i, SystemClock.elapsedRealtime(), sessionPlayer.e(), f);
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.a
        public final void onPlayerStateChanged(final SessionPlayer sessionPlayer, final int i) {
            n a2 = a();
            if (a2 != null && sessionPlayer != null && a2.B() == sessionPlayer) {
                a2.y();
                a2.z();
                a(sessionPlayer);
                a2.a(new e() { // from class: androidx.media2.session.n.f.1
                    @Override // androidx.media2.session.n.e
                    public final void a(MediaSession.a aVar, int i2) throws RemoteException {
                        aVar.a(i2, SystemClock.elapsedRealtime(), sessionPlayer.e(), i);
                    }
                });
            }
        }

        @Override // androidx.media2.common.SessionPlayer.a
        public final void onPlaylistChanged(SessionPlayer sessionPlayer, final List<MediaItem> list, final MediaMetadata mediaMetadata) {
            final n a2 = a();
            if (!(a2 == null || sessionPlayer == null || a2.B() != sessionPlayer)) {
                if (this.f4913c != null) {
                    for (int i = 0; i < this.f4913c.size(); i++) {
                        this.f4913c.get(i).a(this.f4914d);
                    }
                }
                if (list != null) {
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        list.get(i2).a(a2.f4825d, this.f4914d);
                    }
                }
                this.f4913c = list;
                a(sessionPlayer, new e() { // from class: androidx.media2.session.n.f.11
                    @Override // androidx.media2.session.n.e
                    public final void a(MediaSession.a aVar, int i3) throws RemoteException {
                        aVar.a(i3, list, mediaMetadata, a2.n(), a2.o(), a2.p());
                    }
                });
            }
        }

        @Override // androidx.media2.common.SessionPlayer.a
        public final void onPlaylistMetadataChanged(SessionPlayer sessionPlayer, final MediaMetadata mediaMetadata) {
            a(sessionPlayer, new e() { // from class: androidx.media2.session.n.f.12
                @Override // androidx.media2.session.n.e
                public final void a(MediaSession.a aVar, int i) throws RemoteException {
                    aVar.a(i, mediaMetadata);
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.a
        public final void onRepeatModeChanged(SessionPlayer sessionPlayer, final int i) {
            final n a2 = a();
            a(sessionPlayer, new e() { // from class: androidx.media2.session.n.f.13
                @Override // androidx.media2.session.n.e
                public final void a(MediaSession.a aVar, int i2) throws RemoteException {
                    aVar.b(i2, i, a2.n(), a2.o(), a2.p());
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.a
        public final void onSeekCompleted(final SessionPlayer sessionPlayer, final long j) {
            a(sessionPlayer, new e() { // from class: androidx.media2.session.n.f.10
                @Override // androidx.media2.session.n.e
                public final void a(MediaSession.a aVar, int i) throws RemoteException {
                    aVar.a(i, SystemClock.elapsedRealtime(), sessionPlayer.e(), j);
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.a
        public final void onShuffleModeChanged(SessionPlayer sessionPlayer, final int i) {
            final n a2 = a();
            a(sessionPlayer, new e() { // from class: androidx.media2.session.n.f.14
                @Override // androidx.media2.session.n.e
                public final void a(MediaSession.a aVar, int i2) throws RemoteException {
                    aVar.a(i2, i, a2.n(), a2.o(), a2.p());
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.a
        public final void onSubtitleData(SessionPlayer sessionPlayer, final MediaItem mediaItem, final SessionPlayer.TrackInfo trackInfo, final SubtitleData subtitleData) {
            a(sessionPlayer, new e() { // from class: androidx.media2.session.n.f.6
                @Override // androidx.media2.session.n.e
                public final void a(MediaSession.a aVar, int i) throws RemoteException {
                    aVar.a(i, mediaItem, trackInfo, subtitleData);
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.a
        public final void onTrackDeselected(SessionPlayer sessionPlayer, final SessionPlayer.TrackInfo trackInfo) {
            a(sessionPlayer, new e() { // from class: androidx.media2.session.n.f.5
                @Override // androidx.media2.session.n.e
                public final void a(MediaSession.a aVar, int i) throws RemoteException {
                    aVar.b(i, s.a(trackInfo));
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.a
        public final void onTrackSelected(SessionPlayer sessionPlayer, final SessionPlayer.TrackInfo trackInfo) {
            a(sessionPlayer, new e() { // from class: androidx.media2.session.n.f.4
                @Override // androidx.media2.session.n.e
                public final void a(MediaSession.a aVar, int i) throws RemoteException {
                    aVar.a(i, s.a(trackInfo));
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.a
        public final void onTracksChanged(SessionPlayer sessionPlayer, final List<SessionPlayer.TrackInfo> list) {
            final n a2 = a();
            a(sessionPlayer, new e() { // from class: androidx.media2.session.n.f.3
                @Override // androidx.media2.session.n.e
                public final void a(MediaSession.a aVar, int i) throws RemoteException {
                    aVar.a(i, s.a(list), s.a(a2.a(1)), s.a(a2.a(2)), s.a(a2.a(4)), s.a(a2.a(5)));
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.a
        public final void onVideoSizeChanged(SessionPlayer sessionPlayer, final VideoSize videoSize) {
            a(sessionPlayer, new e() { // from class: androidx.media2.session.n.f.2
                @Override // androidx.media2.session.n.e
                public final void a(MediaSession.a aVar, int i) throws RemoteException {
                    aVar.a(i, s.a(videoSize));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(MediaSession mediaSession, Context context, String str, SessionPlayer sessionPlayer, PendingIntent pendingIntent, Executor executor, MediaSession.d dVar, Bundle bundle) {
        ComponentName componentName;
        boolean z;
        SessionPlayer sessionPlayer2;
        Object obj = new Object();
        this.f4823b = obj;
        this.n = context;
        this.w = mediaSession;
        HandlerThread handlerThread = new HandlerThread("MediaSession_Thread");
        this.o = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        this.p = handler;
        r rVar = new r(this);
        this.q = rVar;
        this.x = pendingIntent;
        this.e = dVar;
        this.f4825d = executor;
        this.u = (AudioManager) context.getSystemService("audio");
        f fVar = new f(this);
        this.v = fVar;
        this.s = str;
        Uri build = new Uri.Builder().scheme(n.class.getName()).appendPath(str).appendPath(String.valueOf(SystemClock.elapsedRealtime())).build();
        this.f4824c = build;
        SessionToken sessionToken = new SessionToken(new SessionTokenImplBase(Process.myUid(), 0, context.getPackageName(), rVar, bundle));
        this.t = sessionToken;
        String join = TextUtils.join(".", new String[]{"androidx.media2.session.id", str});
        synchronized (j) {
            if (!k) {
                ComponentName a2 = a("androidx.media2.session.MediaLibraryService");
                l = a2;
                if (a2 == null) {
                    l = a("androidx.media2.session.MediaSessionService");
                }
                k = true;
            }
            componentName = l;
        }
        if (componentName == null) {
            Intent intent = new Intent("android.intent.action.MEDIA_BUTTON", build);
            intent.setPackage(context.getPackageName());
            this.y = PendingIntent.getBroadcast(context, 0, intent, 0);
            componentName = new ComponentName(context, context.getClass());
            b bVar = new b();
            this.z = bVar;
            IntentFilter intentFilter = new IntentFilter("android.intent.action.MEDIA_BUTTON");
            intentFilter.addDataScheme(build.getScheme());
            context.registerReceiver(bVar, intentFilter);
        } else {
            Intent intent2 = new Intent("android.intent.action.MEDIA_BUTTON", build);
            intent2.setComponent(componentName);
            if (Build.VERSION.SDK_INT >= 26) {
                this.y = PendingIntent.getForegroundService(context, 0, intent2, 0);
            } else {
                this.y = PendingIntent.getService(context, 0, intent2, 0);
            }
            this.z = null;
        }
        MediaSessionCompat mediaSessionCompat = new MediaSessionCompat(context, join, componentName, this.y, sessionToken.c(), sessionToken);
        this.f = mediaSessionCompat;
        o oVar = new o(this, handler);
        this.r = oVar;
        mediaSessionCompat.f447a.a(pendingIntent);
        mediaSessionCompat.f447a.a(4);
        MediaController.PlaybackInfo a3 = a(sessionPlayer, (AudioAttributesCompat) null);
        boolean z2 = sessionPlayer instanceof u;
        androidx.media.f fVar2 = null;
        if (z2) {
            final u uVar = (u) sessionPlayer;
            fVar2 = new androidx.media.f(uVar.z(), uVar.y(), uVar.x()) { // from class: androidx.media2.session.n.43
            };
        }
        synchronized (obj) {
            z = !a3.equals(this.g);
            sessionPlayer2 = this.i;
            this.i = sessionPlayer;
            this.g = a3;
            this.h = fVar2;
        }
        if (sessionPlayer2 != sessionPlayer) {
            if (sessionPlayer2 != null) {
                sessionPlayer2.a(fVar);
            }
            sessionPlayer.a(executor, fVar);
        }
        if (sessionPlayer2 == null) {
            mediaSessionCompat.a(I());
        } else {
            if (sessionPlayer != sessionPlayer2) {
                final int d2 = d();
                executor.execute(new Runnable() { // from class: androidx.media2.session.n.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        n.this.z();
                    }
                });
                List<MediaItem> n = sessionPlayer2.n();
                final List<MediaItem> v = v();
                if (!androidx.core.e.a.a(n, v)) {
                    a(new e() { // from class: androidx.media2.session.n.34
                        @Override // androidx.media2.session.n.e
                        public final void a(MediaSession.a aVar, int i) throws RemoteException {
                            aVar.a(i, v, n.this.l(), n.this.n(), n.this.o(), n.this.p());
                        }
                    });
                } else {
                    MediaMetadata o = sessionPlayer2.o();
                    final MediaMetadata l2 = l();
                    if (!androidx.core.e.a.a(o, l2)) {
                        a(new e() { // from class: androidx.media2.session.n.35
                            @Override // androidx.media2.session.n.e
                            public final void a(MediaSession.a aVar, int i) throws RemoteException {
                                aVar.a(i, l2);
                            }
                        });
                    }
                }
                MediaItem r = sessionPlayer2.r();
                final MediaItem u = u();
                if (!androidx.core.e.a.a(r, u)) {
                    a(new e() { // from class: androidx.media2.session.n.36
                        @Override // androidx.media2.session.n.e
                        public final void a(MediaSession.a aVar, int i) throws RemoteException {
                            aVar.a(i, u, n.this.n(), n.this.o(), n.this.p());
                        }
                    });
                }
                final int s = s();
                if (sessionPlayer2.p() != s) {
                    a(new e() { // from class: androidx.media2.session.n.37
                        @Override // androidx.media2.session.n.e
                        public final void a(MediaSession.a aVar, int i) throws RemoteException {
                            aVar.b(i, s, n.this.n(), n.this.o(), n.this.p());
                        }
                    });
                }
                final int t = t();
                if (sessionPlayer2.q() != t) {
                    a(new e() { // from class: androidx.media2.session.n.38
                        @Override // androidx.media2.session.n.e
                        public final void a(MediaSession.a aVar, int i) throws RemoteException {
                            aVar.a(i, t, n.this.n(), n.this.o(), n.this.p());
                        }
                    });
                }
                final long elapsedRealtime = SystemClock.elapsedRealtime();
                final long e2 = e();
                final int d3 = d();
                a(new e() { // from class: androidx.media2.session.n.39
                    @Override // androidx.media2.session.n.e
                    public final void a(MediaSession.a aVar, int i) throws RemoteException {
                        aVar.a(i, elapsedRealtime, e2, d3);
                    }
                });
                final MediaItem u2 = u();
                if (u2 != null) {
                    final int g = g();
                    final long f2 = f();
                    a(new e() { // from class: androidx.media2.session.n.40
                        @Override // androidx.media2.session.n.e
                        public final void a(MediaSession.a aVar, int i) throws RemoteException {
                            aVar.a(i, u2, g, f2, SystemClock.elapsedRealtime(), n.this.e());
                        }
                    });
                }
                final float h = h();
                if (h != sessionPlayer2.i()) {
                    a(new e() { // from class: androidx.media2.session.n.41
                        @Override // androidx.media2.session.n.e
                        public final void a(MediaSession.a aVar, int i) throws RemoteException {
                            aVar.a(i, elapsedRealtime, e2, h);
                        }
                    });
                }
            }
            if (z) {
                a(a3);
            }
        }
        if (!z2) {
            mediaSessionCompat.a(a(sessionPlayer.k()));
        } else if (fVar2 != null) {
            mediaSessionCompat.f447a.a(fVar2);
        } else {
            throw new IllegalArgumentException("volumeProvider may not be null!");
        }
        mediaSessionCompat.a(oVar, handler);
        mediaSessionCompat.a();
    }

    static int a(AudioAttributesCompat audioAttributesCompat) {
        int i;
        if (audioAttributesCompat == null) {
            i = 3;
        } else {
            i = audioAttributesCompat.b();
            if (i == Integer.MIN_VALUE) {
                i = 3;
            }
        }
        return i;
    }

    private ComponentName a(String str) {
        PackageManager packageManager = this.n.getPackageManager();
        Intent intent = new Intent(str);
        intent.setPackage(this.n.getPackageName());
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (queryIntentServices == null || queryIntentServices.isEmpty()) {
            return null;
        }
        ResolveInfo resolveInfo = queryIntentServices.get(0);
        return new ComponentName(resolveInfo.serviceInfo.packageName, resolveInfo.serviceInfo.name);
    }

    private com.google.common.util.concurrent.a<SessionPlayer.b> a(c<com.google.common.util.concurrent.a<SessionPlayer.b>> cVar) {
        androidx.c.a.b a2 = androidx.c.a.b.a();
        a2.a((androidx.c.a.b) new SessionPlayer.b(-2, null));
        return (com.google.common.util.concurrent.a) a((c<c<com.google.common.util.concurrent.a<SessionPlayer.b>>>) cVar, (c<com.google.common.util.concurrent.a<SessionPlayer.b>>) a2);
    }

    private <T> T a(c<T> cVar, T t) {
        SessionPlayer sessionPlayer;
        synchronized (this.f4823b) {
            sessionPlayer = this.i;
        }
        try {
            if (!H()) {
                T a2 = cVar.a(sessionPlayer);
                if (a2 != null) {
                    return a2;
                }
            } else if (f4822a) {
                new IllegalStateException();
            }
        } catch (Exception e2) {
        }
        return t;
    }

    private MediaItem u() {
        SessionPlayer sessionPlayer;
        synchronized (this.f4823b) {
            sessionPlayer = this.i;
        }
        if (sessionPlayer != null) {
            return sessionPlayer.r();
        }
        return null;
    }

    private List<MediaItem> v() {
        SessionPlayer sessionPlayer;
        synchronized (this.f4823b) {
            sessionPlayer = this.i;
        }
        if (sessionPlayer != null) {
            return sessionPlayer.n();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaBrowserServiceCompat A() {
        MediaBrowserServiceCompat mediaBrowserServiceCompat;
        synchronized (this.f4823b) {
            mediaBrowserServiceCompat = this.B;
        }
        return mediaBrowserServiceCompat;
    }

    @Override // androidx.media2.session.MediaSession.c
    public final SessionPlayer B() {
        SessionPlayer sessionPlayer;
        synchronized (this.f4823b) {
            sessionPlayer = this.i;
        }
        return sessionPlayer;
    }

    @Override // androidx.media2.session.MediaSession.c
    public final String C() {
        return this.s;
    }

    @Override // androidx.media2.session.MediaSession.c
    public final SessionToken D() {
        return this.t;
    }

    @Override // androidx.media2.session.MediaSession.c
    public final MediaSessionCompat E() {
        return this.f;
    }

    @Override // androidx.media2.session.MediaSession.c
    public final Context F() {
        return this.n;
    }

    @Override // androidx.media2.session.MediaSession.c
    public final Executor G() {
        return this.f4825d;
    }

    @Override // androidx.media2.session.MediaSession.c
    public final boolean H() {
        boolean z;
        synchronized (this.f4823b) {
            z = this.A;
        }
        return z;
    }

    @Override // androidx.media2.session.MediaSession.c
    public final PlaybackStateCompat I() {
        int a2 = s.a(d(), g());
        long a3 = s.a(n());
        PlaybackStateCompat.a a4 = new PlaybackStateCompat.a().a(a2, e(), h(), SystemClock.elapsedRealtime()).a();
        a4.f475b = a3;
        a4.f474a = f();
        return a4.b();
    }

    @Override // androidx.media2.session.MediaSession.c
    public final MediaController.PlaybackInfo J() {
        MediaController.PlaybackInfo playbackInfo;
        synchronized (this.f4823b) {
            playbackInfo = this.g;
        }
        return playbackInfo;
    }

    @Override // androidx.media2.session.MediaSession.c
    public final PendingIntent K() {
        return this.x;
    }

    @Override // androidx.media2.session.k.b
    public final SessionPlayer.TrackInfo a(final int i) {
        return (SessionPlayer.TrackInfo) a((c<c<SessionPlayer.TrackInfo>>) new c<SessionPlayer.TrackInfo>() { // from class: androidx.media2.session.n.33
            @Override // androidx.media2.session.n.c
            public final /* synthetic */ SessionPlayer.TrackInfo a(SessionPlayer sessionPlayer) throws Exception {
                return s.a(sessionPlayer.e(i));
            }
        }, (c<SessionPlayer.TrackInfo>) null);
    }

    final MediaController.PlaybackInfo a(SessionPlayer sessionPlayer, AudioAttributesCompat audioAttributesCompat) {
        if (audioAttributesCompat == null) {
            audioAttributesCompat = sessionPlayer.k();
        }
        if (!(sessionPlayer instanceof u)) {
            int a2 = a(audioAttributesCompat);
            int i = 2;
            if (Build.VERSION.SDK_INT >= 21) {
                i = 2;
                if (this.u.isVolumeFixed()) {
                    i = 0;
                }
            }
            return MediaController.PlaybackInfo.a(1, audioAttributesCompat, i, this.u.getStreamMaxVolume(a2), this.u.getStreamVolume(a2));
        }
        u uVar = (u) sessionPlayer;
        return MediaController.PlaybackInfo.a(2, audioAttributesCompat, uVar.z(), uVar.y(), uVar.x());
    }

    @Override // androidx.media2.session.k.a
    public final com.google.common.util.concurrent.a<SessionPlayer.b> a() {
        return a(new c<com.google.common.util.concurrent.a<SessionPlayer.b>>() { // from class: androidx.media2.session.n.46
            @Override // androidx.media2.session.n.c
            public final /* synthetic */ com.google.common.util.concurrent.a<SessionPlayer.b> a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.c();
            }
        });
    }

    @Override // androidx.media2.session.k.a
    public final com.google.common.util.concurrent.a<SessionPlayer.b> a(final float f2) {
        return a(new c<com.google.common.util.concurrent.a<SessionPlayer.b>>() { // from class: androidx.media2.session.n.8
            @Override // androidx.media2.session.n.c
            public final /* bridge */ /* synthetic */ com.google.common.util.concurrent.a<SessionPlayer.b> a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.a(f2);
            }
        });
    }

    @Override // androidx.media2.session.k.c
    public final com.google.common.util.concurrent.a<SessionPlayer.b> a(final int i, final int i2) {
        if (i >= 0 && i2 >= 0) {
            return a(new c<com.google.common.util.concurrent.a<SessionPlayer.b>>() { // from class: androidx.media2.session.n.18
                @Override // androidx.media2.session.n.c
                public final /* bridge */ /* synthetic */ com.google.common.util.concurrent.a<SessionPlayer.b> a(SessionPlayer sessionPlayer) throws Exception {
                    return sessionPlayer.a(i, i2);
                }
            });
        }
        throw new IllegalArgumentException("indices shouldn't be negative");
    }

    @Override // androidx.media2.session.k.c
    public final com.google.common.util.concurrent.a<SessionPlayer.b> a(final int i, final MediaItem mediaItem) {
        if (i >= 0) {
            Objects.requireNonNull(mediaItem, "item shouldn't be null");
            return a(new c<com.google.common.util.concurrent.a<SessionPlayer.b>>() { // from class: androidx.media2.session.n.16
                @Override // androidx.media2.session.n.c
                public final /* bridge */ /* synthetic */ com.google.common.util.concurrent.a<SessionPlayer.b> a(SessionPlayer sessionPlayer) throws Exception {
                    return sessionPlayer.a(i, mediaItem);
                }
            });
        }
        throw new IllegalArgumentException("index shouldn't be negative");
    }

    @Override // androidx.media2.session.k.a
    public final com.google.common.util.concurrent.a<SessionPlayer.b> a(final long j2) {
        return a(new c<com.google.common.util.concurrent.a<SessionPlayer.b>>() { // from class: androidx.media2.session.n.2
            @Override // androidx.media2.session.n.c
            public final /* bridge */ /* synthetic */ com.google.common.util.concurrent.a<SessionPlayer.b> a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.a(j2);
            }
        });
    }

    @Override // androidx.media2.session.k.b
    public final com.google.common.util.concurrent.a<SessionPlayer.b> a(final Surface surface) {
        return a(new c<com.google.common.util.concurrent.a<SessionPlayer.b>>() { // from class: androidx.media2.session.n.29
            @Override // androidx.media2.session.n.c
            public final /* bridge */ /* synthetic */ com.google.common.util.concurrent.a<SessionPlayer.b> a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.a(surface);
            }
        });
    }

    @Override // androidx.media2.session.k.c
    public final com.google.common.util.concurrent.a<SessionPlayer.b> a(final MediaMetadata mediaMetadata) {
        return a(new c<com.google.common.util.concurrent.a<SessionPlayer.b>>() { // from class: androidx.media2.session.n.23
            @Override // androidx.media2.session.n.c
            public final /* bridge */ /* synthetic */ com.google.common.util.concurrent.a<SessionPlayer.b> a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.a(mediaMetadata);
            }
        });
    }

    @Override // androidx.media2.session.k.b
    public final com.google.common.util.concurrent.a<SessionPlayer.b> a(final SessionPlayer.TrackInfo trackInfo) {
        return a(new c<com.google.common.util.concurrent.a<SessionPlayer.b>>() { // from class: androidx.media2.session.n.31
            @Override // androidx.media2.session.n.c
            public final /* bridge */ /* synthetic */ com.google.common.util.concurrent.a<SessionPlayer.b> a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.a(trackInfo);
            }
        });
    }

    @Override // androidx.media2.session.k.c
    public final com.google.common.util.concurrent.a<SessionPlayer.b> a(final List<MediaItem> list, final MediaMetadata mediaMetadata) {
        return a(new c<com.google.common.util.concurrent.a<SessionPlayer.b>>() { // from class: androidx.media2.session.n.10
            @Override // androidx.media2.session.n.c
            public final /* bridge */ /* synthetic */ com.google.common.util.concurrent.a<SessionPlayer.b> a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.a(list, mediaMetadata);
            }
        });
    }

    final void a(final MediaController.PlaybackInfo playbackInfo) {
        a(new e() { // from class: androidx.media2.session.n.42
            @Override // androidx.media2.session.n.e
            public final void a(MediaSession.a aVar, int i) throws RemoteException {
                aVar.a(i, playbackInfo);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(e eVar) {
        v c2;
        int i;
        List<MediaSession.b> a2 = this.q.f5006c.a();
        for (int i2 = 0; i2 < a2.size(); i2++) {
            MediaSession.b bVar = a2.get(i2);
            try {
                c2 = this.q.f5006c.c(bVar);
            } catch (DeadObjectException e2) {
                if (f4822a) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(bVar.toString());
                    sb.append(" is gone");
                }
                this.q.f5006c.a(bVar);
            } catch (RemoteException e3) {
                Log.w("MSImplBase", "Exception in " + bVar.toString(), e3);
            }
            if (c2 != null) {
                i = c2.a();
            } else if (!b(bVar)) {
                if (f4822a) {
                    new StringBuilder("Skipping dispatching task to disconnected controller, controller=").append(bVar);
                }
            } else {
                i = 0;
            }
            eVar.a(bVar.f4536c, i);
        }
        try {
            eVar.a(this.r.k, 0);
        } catch (RemoteException e4) {
            Log.e("MSImplBase", "Exception in using media1 API", e4);
        }
    }

    final boolean a(SessionPlayer sessionPlayer) {
        return (H() || sessionPlayer.d() == 0 || sessionPlayer.d() == 3) ? false : true;
    }

    @Override // androidx.media2.session.k.a
    public final com.google.common.util.concurrent.a<SessionPlayer.b> b() {
        return a(new c<com.google.common.util.concurrent.a<SessionPlayer.b>>() { // from class: androidx.media2.session.n.44
            @Override // androidx.media2.session.n.c
            public final /* synthetic */ com.google.common.util.concurrent.a<SessionPlayer.b> a(SessionPlayer sessionPlayer) throws Exception {
                if (sessionPlayer.d() != 0) {
                    return sessionPlayer.a();
                }
                com.google.common.util.concurrent.a<SessionPlayer.b> c2 = sessionPlayer.c();
                com.google.common.util.concurrent.a<SessionPlayer.b> a2 = sessionPlayer.a();
                if (c2 == null || a2 == null) {
                    return null;
                }
                return a.a(s.f5098b, c2, a2);
            }
        });
    }

    @Override // androidx.media2.session.k.c
    public final com.google.common.util.concurrent.a<SessionPlayer.b> b(final int i) {
        if (i >= 0) {
            return a(new c<com.google.common.util.concurrent.a<SessionPlayer.b>>() { // from class: androidx.media2.session.n.12
                @Override // androidx.media2.session.n.c
                public final /* synthetic */ com.google.common.util.concurrent.a<SessionPlayer.b> a(SessionPlayer sessionPlayer) throws Exception {
                    return i >= sessionPlayer.n().size() ? SessionPlayer.b.b() : sessionPlayer.b(i);
                }
            });
        }
        throw new IllegalArgumentException("index shouldn't be negative");
    }

    @Override // androidx.media2.session.k.b
    public final com.google.common.util.concurrent.a<SessionPlayer.b> b(final SessionPlayer.TrackInfo trackInfo) {
        return a(new c<com.google.common.util.concurrent.a<SessionPlayer.b>>() { // from class: androidx.media2.session.n.32
            @Override // androidx.media2.session.n.c
            public final /* synthetic */ com.google.common.util.concurrent.a<SessionPlayer.b> a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.b(trackInfo);
            }
        });
    }

    public boolean b(MediaSession.b bVar) {
        if (bVar == null) {
            return false;
        }
        return this.q.f5006c.b(bVar) || this.r.g.b(bVar);
    }

    @Override // androidx.media2.session.k.a
    public final com.google.common.util.concurrent.a<SessionPlayer.b> c() {
        return a(new c<com.google.common.util.concurrent.a<SessionPlayer.b>>() { // from class: androidx.media2.session.n.45
            @Override // androidx.media2.session.n.c
            public final /* synthetic */ com.google.common.util.concurrent.a<SessionPlayer.b> a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.b();
            }
        });
    }

    @Override // androidx.media2.session.k.c
    public final com.google.common.util.concurrent.a<SessionPlayer.b> c(final int i) {
        if (i >= 0) {
            return a(new c<com.google.common.util.concurrent.a<SessionPlayer.b>>() { // from class: androidx.media2.session.n.17
                @Override // androidx.media2.session.n.c
                public final /* synthetic */ com.google.common.util.concurrent.a<SessionPlayer.b> a(SessionPlayer sessionPlayer) throws Exception {
                    return i >= sessionPlayer.n().size() ? SessionPlayer.b.b() : sessionPlayer.a(i);
                }
            });
        }
        throw new IllegalArgumentException("index shouldn't be negative");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f4823b) {
            if (!this.A) {
                this.A = true;
                if (f4822a) {
                    StringBuilder sb = new StringBuilder("Closing session, id=");
                    sb.append(this.s);
                    sb.append(", token=");
                    sb.append(this.t);
                }
                this.i.a(this.v);
                this.f.f447a.a();
                this.y.cancel();
                BroadcastReceiver broadcastReceiver = this.z;
                if (broadcastReceiver != null) {
                    this.n.unregisterReceiver(broadcastReceiver);
                }
                a(new e() { // from class: androidx.media2.session.n.11
                    @Override // androidx.media2.session.n.e
                    public final void a(MediaSession.a aVar, int i) throws RemoteException {
                        aVar.b(i);
                    }
                });
                this.p.removeCallbacksAndMessages(null);
                if (!this.o.isAlive()) {
                    return;
                }
                if (Build.VERSION.SDK_INT >= 18) {
                    this.o.quitSafely();
                } else {
                    this.o.quit();
                }
            }
        }
    }

    @Override // androidx.media2.session.k.a
    public final int d() {
        return ((Integer) a((c<c<Integer>>) new c<Integer>() { // from class: androidx.media2.session.n.3
            @Override // androidx.media2.session.n.c
            public final /* synthetic */ Integer a(SessionPlayer sessionPlayer) throws Exception {
                return Integer.valueOf(sessionPlayer.d());
            }
        }, (c<Integer>) 3)).intValue();
    }

    @Override // androidx.media2.session.k.c
    public final com.google.common.util.concurrent.a<SessionPlayer.b> d(final int i) {
        return a(new c<com.google.common.util.concurrent.a<SessionPlayer.b>>() { // from class: androidx.media2.session.n.25
            @Override // androidx.media2.session.n.c
            public final /* synthetic */ com.google.common.util.concurrent.a<SessionPlayer.b> a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.c(i);
            }
        });
    }

    @Override // androidx.media2.session.k.a
    public final long e() {
        return ((Long) a((c<c<Long>>) new c<Long>() { // from class: androidx.media2.session.n.4
            @Override // androidx.media2.session.n.c
            public final /* synthetic */ Long a(SessionPlayer sessionPlayer) throws Exception {
                if (n.this.a(sessionPlayer)) {
                    return Long.valueOf(sessionPlayer.e());
                }
                return null;
            }
        }, (c<Long>) Long.MIN_VALUE)).longValue();
    }

    @Override // androidx.media2.session.k.c
    public final com.google.common.util.concurrent.a<SessionPlayer.b> e(final int i) {
        return a(new c<com.google.common.util.concurrent.a<SessionPlayer.b>>() { // from class: androidx.media2.session.n.27
            @Override // androidx.media2.session.n.c
            public final /* synthetic */ com.google.common.util.concurrent.a<SessionPlayer.b> a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.d(i);
            }
        });
    }

    @Override // androidx.media2.session.k.a
    public final long f() {
        return ((Long) a((c<c<Long>>) new c<Long>() { // from class: androidx.media2.session.n.5
            @Override // androidx.media2.session.n.c
            public final /* synthetic */ Long a(SessionPlayer sessionPlayer) throws Exception {
                if (n.this.a(sessionPlayer)) {
                    return Long.valueOf(sessionPlayer.g());
                }
                return null;
            }
        }, (c<Long>) Long.MIN_VALUE)).longValue();
    }

    @Override // androidx.media2.session.k.a
    public final int g() {
        return ((Integer) a((c<c<Integer>>) new c<Integer>() { // from class: androidx.media2.session.n.6
            @Override // androidx.media2.session.n.c
            public final /* synthetic */ Integer a(SessionPlayer sessionPlayer) throws Exception {
                return Integer.valueOf(sessionPlayer.h());
            }
        }, (c<Integer>) 0)).intValue();
    }

    @Override // androidx.media2.session.k.a
    public final float h() {
        return ((Float) a((c<c<Float>>) new c<Float>() { // from class: androidx.media2.session.n.7
            @Override // androidx.media2.session.n.c
            public final /* synthetic */ Float a(SessionPlayer sessionPlayer) throws Exception {
                if (n.this.a(sessionPlayer)) {
                    return Float.valueOf(sessionPlayer.i());
                }
                return null;
            }
        }, (c<Float>) Float.valueOf(1.0f))).floatValue();
    }

    @Override // androidx.media2.session.k.b
    public final VideoSize i() {
        return (VideoSize) a((c<c<VideoSize>>) new c<VideoSize>() { // from class: androidx.media2.session.n.28
            @Override // androidx.media2.session.n.c
            public final /* synthetic */ VideoSize a(SessionPlayer sessionPlayer) throws Exception {
                return s.a(sessionPlayer.j());
            }
        }, (c<VideoSize>) new VideoSize(0, 0));
    }

    @Override // androidx.media2.session.k.b
    public final List<SessionPlayer.TrackInfo> j() {
        return (List) a((c<c<List<SessionPlayer.TrackInfo>>>) new c<List<SessionPlayer.TrackInfo>>() { // from class: androidx.media2.session.n.30
            @Override // androidx.media2.session.n.c
            public final /* synthetic */ List<SessionPlayer.TrackInfo> a(SessionPlayer sessionPlayer) throws Exception {
                return s.a(sessionPlayer.w());
            }
        }, (c<List<SessionPlayer.TrackInfo>>) null);
    }

    @Override // androidx.media2.session.k.c
    public final List<MediaItem> k() {
        return (List) a((c<c<List<MediaItem>>>) new c<List<MediaItem>>() { // from class: androidx.media2.session.n.9
            @Override // androidx.media2.session.n.c
            public final /* synthetic */ List<MediaItem> a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.n();
            }
        }, (c<List<MediaItem>>) null);
    }

    @Override // androidx.media2.session.k.c
    public final MediaMetadata l() {
        return (MediaMetadata) a((c<c<MediaMetadata>>) new c<MediaMetadata>() { // from class: androidx.media2.session.n.15
            @Override // androidx.media2.session.n.c
            public final /* synthetic */ MediaMetadata a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.o();
            }
        }, (c<MediaMetadata>) null);
    }

    @Override // androidx.media2.session.k.c
    public final MediaItem m() {
        return (MediaItem) a((c<c<MediaItem>>) new c<MediaItem>() { // from class: androidx.media2.session.n.19
            @Override // androidx.media2.session.n.c
            public final /* synthetic */ MediaItem a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.r();
            }
        }, (c<MediaItem>) null);
    }

    @Override // androidx.media2.session.k.c
    public final int n() {
        return ((Integer) a((c<c<Integer>>) new c<Integer>() { // from class: androidx.media2.session.n.20
            @Override // androidx.media2.session.n.c
            public final /* synthetic */ Integer a(SessionPlayer sessionPlayer) throws Exception {
                return Integer.valueOf(sessionPlayer.s());
            }
        }, (c<Integer>) (-1))).intValue();
    }

    @Override // androidx.media2.session.k.c
    public final int o() {
        return ((Integer) a((c<c<Integer>>) new c<Integer>() { // from class: androidx.media2.session.n.21
            @Override // androidx.media2.session.n.c
            public final /* synthetic */ Integer a(SessionPlayer sessionPlayer) throws Exception {
                return Integer.valueOf(sessionPlayer.t());
            }
        }, (c<Integer>) (-1))).intValue();
    }

    @Override // androidx.media2.session.k.c
    public final int p() {
        return ((Integer) a((c<c<Integer>>) new c<Integer>() { // from class: androidx.media2.session.n.22
            @Override // androidx.media2.session.n.c
            public final /* synthetic */ Integer a(SessionPlayer sessionPlayer) throws Exception {
                return Integer.valueOf(sessionPlayer.u());
            }
        }, (c<Integer>) (-1))).intValue();
    }

    @Override // androidx.media2.session.k.c
    public final com.google.common.util.concurrent.a<SessionPlayer.b> q() {
        return a(new c<com.google.common.util.concurrent.a<SessionPlayer.b>>() { // from class: androidx.media2.session.n.13
            @Override // androidx.media2.session.n.c
            public final /* synthetic */ com.google.common.util.concurrent.a<SessionPlayer.b> a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.l();
            }
        });
    }

    @Override // androidx.media2.session.k.c
    public final com.google.common.util.concurrent.a<SessionPlayer.b> r() {
        return a(new c<com.google.common.util.concurrent.a<SessionPlayer.b>>() { // from class: androidx.media2.session.n.14
            @Override // androidx.media2.session.n.c
            public final /* synthetic */ com.google.common.util.concurrent.a<SessionPlayer.b> a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.m();
            }
        });
    }

    @Override // androidx.media2.session.k.c
    public final int s() {
        return ((Integer) a((c<c<Integer>>) new c<Integer>() { // from class: androidx.media2.session.n.24
            @Override // androidx.media2.session.n.c
            public final /* synthetic */ Integer a(SessionPlayer sessionPlayer) throws Exception {
                return Integer.valueOf(sessionPlayer.p());
            }
        }, (c<Integer>) 0)).intValue();
    }

    @Override // androidx.media2.session.k.c
    public final int t() {
        return ((Integer) a((c<c<Integer>>) new c<Integer>() { // from class: androidx.media2.session.n.26
            @Override // androidx.media2.session.n.c
            public final /* synthetic */ Integer a(SessionPlayer sessionPlayer) throws Exception {
                return Integer.valueOf(sessionPlayer.q());
            }
        }, (c<Integer>) 0)).intValue();
    }

    @Override // androidx.media2.session.MediaSession.c
    public MediaSession.d y() {
        return this.e;
    }

    @Override // androidx.media2.session.MediaSession.c
    public MediaSession z() {
        return this.w;
    }
}

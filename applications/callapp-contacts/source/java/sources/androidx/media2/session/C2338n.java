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
import android.support.p008v4.media.MediaMetadataCompat;
import android.support.p008v4.media.session.MediaSessionCompat;
import android.support.p008v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Surface;
import androidx.core.p036e.C0827a;
import androidx.media.AbstractC1338f;
import androidx.media.AudioAttributesCompat;
import androidx.media.MediaBrowserServiceCompat;
import androidx.media2.common.AbstractC1354a;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.common.VideoSize;
import androidx.media2.session.AbstractC2484u;
import androidx.media2.session.MediaController;
import androidx.media2.session.MediaSession;
import androidx.p024c.p025a.AbstractC0481a;
import androidx.p024c.p025a.C0492b;
import com.google.common.util.concurrent.AbstractFutureC15579a;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: androidx.media2.session.n */
/* loaded from: classes-dex2jar.jar:androidx/media2/session/n.class */
public class C2338n implements MediaSession.AbstractC2210c {

    /* renamed from: k */
    private static boolean f9124k = false;

    /* renamed from: l */
    private static ComponentName f9125l;

    /* renamed from: A */
    private boolean f9127A;

    /* renamed from: B */
    private MediaBrowserServiceCompat f9128B;

    /* renamed from: b */
    final Object f9129b;

    /* renamed from: c */
    final Uri f9130c;

    /* renamed from: d */
    final Executor f9131d;

    /* renamed from: e */
    final MediaSession.AbstractC2211d f9132e;

    /* renamed from: f */
    final MediaSessionCompat f9133f;

    /* renamed from: g */
    MediaController.PlaybackInfo f9134g;

    /* renamed from: h */
    AbstractC1338f f9135h;

    /* renamed from: i */
    SessionPlayer f9136i;

    /* renamed from: n */
    private final Context f9137n;

    /* renamed from: o */
    private final HandlerThread f9138o;

    /* renamed from: p */
    private final Handler f9139p;

    /* renamed from: q */
    private final BinderC2436r f9140q;

    /* renamed from: r */
    private final C2408o f9141r;

    /* renamed from: s */
    private final String f9142s;

    /* renamed from: t */
    private final SessionToken f9143t;

    /* renamed from: u */
    private final AudioManager f9144u;

    /* renamed from: v */
    private final C2392f f9145v;

    /* renamed from: w */
    private final MediaSession f9146w;

    /* renamed from: x */
    private final PendingIntent f9147x;

    /* renamed from: y */
    private final PendingIntent f9148y;

    /* renamed from: z */
    private final BroadcastReceiver f9149z;

    /* renamed from: j */
    private static final Object f9123j = new Object();

    /* renamed from: a */
    static final boolean f9122a = Log.isLoggable("MSImplBase", 3);

    /* renamed from: m */
    private static final SessionResult f9126m = new SessionResult(1);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.session.n$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/n$a.class */
    public static final class C2385a<T extends AbstractC1354a> extends AbstractC0481a<T> {

        /* renamed from: f */
        final AbstractFutureC15579a<T>[] f9229f;

        /* renamed from: g */
        AtomicInteger f9230g = new AtomicInteger(0);

        private C2385a(Executor executor, AbstractFutureC15579a<T>[] abstractFutureC15579aArr) {
            int i = 0;
            this.f9229f = abstractFutureC15579aArr;
            while (true) {
                AbstractFutureC15579a<T>[] abstractFutureC15579aArr2 = this.f9229f;
                if (i < abstractFutureC15579aArr2.length) {
                    final int i2 = i;
                    abstractFutureC15579aArr2[i].mo8638a(new Runnable() { // from class: androidx.media2.session.n.a.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            try {
                                T t = C2385a.this.f9229f[i2].get();
                                int mo41118a = t.mo41118a();
                                if (mo41118a == 0 || mo41118a == 1) {
                                    if (C2385a.this.f9230g.incrementAndGet() != C2385a.this.f9229f.length) {
                                        return;
                                    }
                                    C2385a.this.mo40774a((C2385a) t);
                                    return;
                                }
                                for (int i3 = 0; i3 < C2385a.this.f9229f.length; i3++) {
                                    if (!C2385a.this.f9229f[i3].isCancelled() && !C2385a.this.f9229f[i3].isDone() && i2 != i3) {
                                        C2385a.this.f9229f[i3].cancel(true);
                                    }
                                }
                                C2385a.this.mo40774a((C2385a) t);
                            } catch (Exception e) {
                                for (int i4 = 0; i4 < C2385a.this.f9229f.length; i4++) {
                                    if (!C2385a.this.f9229f[i4].isCancelled() && !C2385a.this.f9229f[i4].isDone() && i2 != i4) {
                                        C2385a.this.f9229f[i4].cancel(true);
                                    }
                                }
                                C2385a.this.mo41314a((Throwable) e);
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
        /* renamed from: a */
        public static <U extends AbstractC1354a> C2385a<U> m40921a(Executor executor, AbstractFutureC15579a<U>... abstractFutureC15579aArr) {
            return new C2385a<>(executor, abstractFutureC15579aArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.session.n$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/n$b.class */
    public final class C2387b extends BroadcastReceiver {
        C2387b() {
            C2338n.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            KeyEvent keyEvent;
            if ("android.intent.action.MEDIA_BUTTON".equals(intent.getAction()) && C0827a.m44414a(intent.getData(), C2338n.this.f9130c) && (keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT")) != null) {
                C2338n.this.f9133f.f106b.m46570a(keyEvent);
            }
        }
    }

    @FunctionalInterface
    /* renamed from: androidx.media2.session.n$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/n$c.class */
    public interface AbstractC2388c<T> {
        /* renamed from: a */
        T mo40919a(SessionPlayer sessionPlayer) throws Exception;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.session.n$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/n$d.class */
    public static final class C2389d implements MediaItem.AbstractC1347b {

        /* renamed from: a */
        private final WeakReference<C2338n> f9234a;

        C2389d(C2338n c2338n) {
            this.f9234a = new WeakReference<>(c2338n);
        }

        @Override // androidx.media2.common.MediaItem.AbstractC1347b
        /* renamed from: a */
        public final void mo40916a(MediaItem mediaItem, MediaMetadata mediaMetadata) {
            final List<MediaItem> mo40937k;
            final C2338n c2338n = this.f9234a.get();
            if (c2338n == null || mediaItem == null || (mo40937k = c2338n.mo40937k()) == null) {
                return;
            }
            for (int i = 0; i < mo40937k.size(); i++) {
                if (mediaItem.equals(mo40937k.get(i))) {
                    c2338n.mo40955a(new AbstractC2391e() { // from class: androidx.media2.session.n.d.1
                        @Override // androidx.media2.session.C2338n.AbstractC2391e
                        /* renamed from: a */
                        public final void mo40912a(MediaSession.AbstractC2208a abstractC2208a, int i2) throws RemoteException {
                            abstractC2208a.mo40815a(i2, mo40937k, c2338n.mo40936l(), c2338n.mo40934n(), c2338n.mo40933o(), c2338n.mo40932p());
                        }
                    });
                    return;
                }
            }
        }
    }

    @FunctionalInterface
    /* renamed from: androidx.media2.session.n$e */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/n$e.class */
    public interface AbstractC2391e {
        /* renamed from: a */
        void mo40912a(MediaSession.AbstractC2208a abstractC2208a, int i) throws RemoteException;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.session.n$f */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/n$f.class */
    public static final class C2392f extends AbstractC2484u.C2485a implements MediaItem.AbstractC1347b {

        /* renamed from: a */
        private final WeakReference<C2338n> f9238a;

        /* renamed from: b */
        private MediaItem f9239b;

        /* renamed from: c */
        private List<MediaItem> f9240c;

        /* renamed from: d */
        private final C2389d f9241d;

        C2392f(C2338n c2338n) {
            this.f9238a = new WeakReference<>(c2338n);
            this.f9241d = new C2389d(c2338n);
        }

        /* renamed from: a */
        private C2338n m40918a() {
            C2338n c2338n = this.f9238a.get();
            if (c2338n == null && C2338n.f9122a) {
                new IllegalStateException();
            }
            return c2338n;
        }

        /* renamed from: a */
        private void m40917a(final MediaItem mediaItem) {
            final C2338n m40918a = m40918a();
            if (m40918a == null) {
                return;
            }
            m40913a(m40918a.mo40980B(), new AbstractC2391e() { // from class: androidx.media2.session.n.f.7
                @Override // androidx.media2.session.C2338n.AbstractC2391e
                /* renamed from: a */
                public final void mo40912a(MediaSession.AbstractC2208a abstractC2208a, int i) throws RemoteException {
                    abstractC2208a.mo40825a(i, mediaItem, m40918a.mo40934n(), m40918a.mo40933o(), m40918a.mo40932p());
                }
            });
        }

        /* renamed from: a */
        private void m40913a(SessionPlayer sessionPlayer, AbstractC2391e abstractC2391e) {
            C2338n m40918a = m40918a();
            if (m40918a == null || sessionPlayer == null || m40918a.mo40980B() != sessionPlayer) {
                return;
            }
            m40918a.mo40955a(abstractC2391e);
        }

        /* renamed from: a */
        private static boolean m40915a(SessionPlayer sessionPlayer) {
            MediaItem mo41335r = sessionPlayer.mo41335r();
            if (mo41335r == null) {
                return false;
            }
            return m40914a(sessionPlayer, mo41335r, mo41335r.m43200d());
        }

        /* renamed from: a */
        private static boolean m40914a(SessionPlayer sessionPlayer, MediaItem mediaItem, MediaMetadata mediaMetadata) {
            MediaMetadata mediaMetadata2;
            long mo41349f = sessionPlayer.mo41349f();
            if (mediaItem != sessionPlayer.mo41335r() || sessionPlayer.mo41353d() == 0 || mo41349f <= 0 || mo41349f == Long.MIN_VALUE) {
                return false;
            }
            if (mediaMetadata == null) {
                mediaMetadata2 = new MediaMetadata.C1348a().m43190a(MediaMetadataCompat.METADATA_KEY_DURATION, mo41349f).m43187a(MediaMetadataCompat.METADATA_KEY_MEDIA_ID, mediaItem.m43199f()).m43190a("androidx.media2.metadata.PLAYABLE", 1L).m43191a();
            } else if (!mediaMetadata.m43197a(MediaMetadataCompat.METADATA_KEY_DURATION)) {
                mediaMetadata2 = new MediaMetadata.C1348a(mediaMetadata).m43190a(MediaMetadataCompat.METADATA_KEY_DURATION, mo41349f).m43190a("androidx.media2.metadata.PLAYABLE", 1L).m43191a();
            } else {
                long m43194d = mediaMetadata.m43194d(MediaMetadataCompat.METADATA_KEY_DURATION);
                mediaMetadata2 = null;
                if (mo41349f != m43194d) {
                    Log.w("MSImplBase", "duration mismatch for an item. duration from player=" + mo41349f + " duration from metadata=" + m43194d + ". May be a timing issue?");
                    mediaMetadata2 = null;
                }
            }
            if (mediaMetadata2 == null) {
                return false;
            }
            mediaItem.m43202a(mediaMetadata2);
            return true;
        }

        @Override // androidx.media2.common.MediaItem.AbstractC1347b
        /* renamed from: a */
        public final void mo40916a(MediaItem mediaItem, MediaMetadata mediaMetadata) {
            C2338n m40918a = m40918a();
            if (m40918a != null && !m40914a(m40918a.mo40980B(), mediaItem, mediaMetadata)) {
                m40917a(mediaItem);
            }
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public final void onAudioAttributesChanged(SessionPlayer sessionPlayer, AudioAttributesCompat audioAttributesCompat) {
            MediaController.PlaybackInfo playbackInfo;
            C2338n m40918a = m40918a();
            if (m40918a == null || sessionPlayer == null || m40918a.mo40980B() != sessionPlayer) {
                return;
            }
            MediaController.PlaybackInfo m40959a = m40918a.m40959a(sessionPlayer, audioAttributesCompat);
            synchronized (m40918a.f9129b) {
                playbackInfo = m40918a.f9134g;
                m40918a.f9134g = m40959a;
            }
            if (C0827a.m44414a(m40959a, playbackInfo)) {
                return;
            }
            m40918a.m40958a(m40959a);
            if (sessionPlayer instanceof AbstractC2484u) {
                return;
            }
            int m40963a = C2338n.m40963a(playbackInfo == null ? null : playbackInfo.f8719e);
            int m40963a2 = C2338n.m40963a(m40959a.f8719e);
            if (m40963a == m40963a2) {
                return;
            }
            m40918a.f9133f.m46535a(m40963a2);
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public final void onBufferingStateChanged(final SessionPlayer sessionPlayer, final MediaItem mediaItem, final int i) {
            m40915a(sessionPlayer);
            m40913a(sessionPlayer, new AbstractC2391e() { // from class: androidx.media2.session.n.f.8
                @Override // androidx.media2.session.C2338n.AbstractC2391e
                /* renamed from: a */
                public final void mo40912a(MediaSession.AbstractC2208a abstractC2208a, int i2) throws RemoteException {
                    abstractC2208a.mo40824a(i2, mediaItem, i, sessionPlayer.mo41347g(), SystemClock.elapsedRealtime(), sessionPlayer.mo41351e());
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public final void onCurrentMediaItemChanged(SessionPlayer sessionPlayer, MediaItem mediaItem) {
            C2338n m40918a = m40918a();
            if (m40918a == null || sessionPlayer == null || m40918a.mo40980B() != sessionPlayer) {
                return;
            }
            MediaItem mediaItem2 = this.f9239b;
            if (mediaItem2 != null) {
                mediaItem2.m43203a(this);
            }
            if (mediaItem != null) {
                mediaItem.m43201a(m40918a.f9131d, this);
            }
            this.f9239b = mediaItem;
            m40918a.mo40925y();
            m40918a.mo40924z();
            boolean z = false;
            if (mediaItem != null) {
                z = m40914a(sessionPlayer, mediaItem, mediaItem.m43200d());
            }
            if (z) {
                return;
            }
            m40917a(mediaItem);
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public final void onPlaybackCompleted(SessionPlayer sessionPlayer) {
            m40913a(sessionPlayer, new AbstractC2391e() { // from class: androidx.media2.session.n.f.15
                @Override // androidx.media2.session.C2338n.AbstractC2391e
                /* renamed from: a */
                public final void mo40912a(MediaSession.AbstractC2208a abstractC2208a, int i) throws RemoteException {
                    abstractC2208a.mo40830a(i);
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public final void onPlaybackSpeedChanged(final SessionPlayer sessionPlayer, final float f) {
            m40913a(sessionPlayer, new AbstractC2391e() { // from class: androidx.media2.session.n.f.9
                @Override // androidx.media2.session.C2338n.AbstractC2391e
                /* renamed from: a */
                public final void mo40912a(MediaSession.AbstractC2208a abstractC2208a, int i) throws RemoteException {
                    abstractC2208a.mo40828a(i, SystemClock.elapsedRealtime(), sessionPlayer.mo41351e(), f);
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public final void onPlayerStateChanged(final SessionPlayer sessionPlayer, final int i) {
            C2338n m40918a = m40918a();
            if (m40918a == null || sessionPlayer == null || m40918a.mo40980B() != sessionPlayer) {
                return;
            }
            m40918a.mo40925y();
            m40918a.mo40924z();
            m40915a(sessionPlayer);
            m40918a.mo40955a(new AbstractC2391e() { // from class: androidx.media2.session.n.f.1
                @Override // androidx.media2.session.C2338n.AbstractC2391e
                /* renamed from: a */
                public final void mo40912a(MediaSession.AbstractC2208a abstractC2208a, int i2) throws RemoteException {
                    abstractC2208a.mo40827a(i2, SystemClock.elapsedRealtime(), sessionPlayer.mo41351e(), i);
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public final void onPlaylistChanged(SessionPlayer sessionPlayer, final List<MediaItem> list, final MediaMetadata mediaMetadata) {
            final C2338n m40918a = m40918a();
            if (m40918a == null || sessionPlayer == null || m40918a.mo40980B() != sessionPlayer) {
                return;
            }
            if (this.f9240c != null) {
                for (int i = 0; i < this.f9240c.size(); i++) {
                    this.f9240c.get(i).m43203a(this.f9241d);
                }
            }
            if (list != null) {
                for (int i2 = 0; i2 < list.size(); i2++) {
                    list.get(i2).m43201a(m40918a.f9131d, this.f9241d);
                }
            }
            this.f9240c = list;
            m40913a(sessionPlayer, new AbstractC2391e() { // from class: androidx.media2.session.n.f.11
                @Override // androidx.media2.session.C2338n.AbstractC2391e
                /* renamed from: a */
                public final void mo40912a(MediaSession.AbstractC2208a abstractC2208a, int i3) throws RemoteException {
                    abstractC2208a.mo40815a(i3, list, mediaMetadata, m40918a.mo40934n(), m40918a.mo40933o(), m40918a.mo40932p());
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public final void onPlaylistMetadataChanged(SessionPlayer sessionPlayer, final MediaMetadata mediaMetadata) {
            m40913a(sessionPlayer, new AbstractC2391e() { // from class: androidx.media2.session.n.f.12
                @Override // androidx.media2.session.C2338n.AbstractC2391e
                /* renamed from: a */
                public final void mo40912a(MediaSession.AbstractC2208a abstractC2208a, int i) throws RemoteException {
                    abstractC2208a.mo40822a(i, mediaMetadata);
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public final void onRepeatModeChanged(SessionPlayer sessionPlayer, final int i) {
            final C2338n m40918a = m40918a();
            m40913a(sessionPlayer, new AbstractC2391e() { // from class: androidx.media2.session.n.f.13
                @Override // androidx.media2.session.C2338n.AbstractC2391e
                /* renamed from: a */
                public final void mo40912a(MediaSession.AbstractC2208a abstractC2208a, int i2) throws RemoteException {
                    abstractC2208a.mo40812b(i2, i, m40918a.mo40934n(), m40918a.mo40933o(), m40918a.mo40932p());
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public final void onSeekCompleted(final SessionPlayer sessionPlayer, final long j) {
            m40913a(sessionPlayer, new AbstractC2391e() { // from class: androidx.media2.session.n.f.10
                @Override // androidx.media2.session.C2338n.AbstractC2391e
                /* renamed from: a */
                public final void mo40912a(MediaSession.AbstractC2208a abstractC2208a, int i) throws RemoteException {
                    abstractC2208a.mo40826a(i, SystemClock.elapsedRealtime(), sessionPlayer.mo41351e(), j);
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public final void onShuffleModeChanged(SessionPlayer sessionPlayer, final int i) {
            final C2338n m40918a = m40918a();
            m40913a(sessionPlayer, new AbstractC2391e() { // from class: androidx.media2.session.n.f.14
                @Override // androidx.media2.session.C2338n.AbstractC2391e
                /* renamed from: a */
                public final void mo40912a(MediaSession.AbstractC2208a abstractC2208a, int i2) throws RemoteException {
                    abstractC2208a.mo40829a(i2, i, m40918a.mo40934n(), m40918a.mo40933o(), m40918a.mo40932p());
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public final void onSubtitleData(SessionPlayer sessionPlayer, final MediaItem mediaItem, final SessionPlayer.TrackInfo trackInfo, final SubtitleData subtitleData) {
            m40913a(sessionPlayer, new AbstractC2391e() { // from class: androidx.media2.session.n.f.6
                @Override // androidx.media2.session.C2338n.AbstractC2391e
                /* renamed from: a */
                public final void mo40912a(MediaSession.AbstractC2208a abstractC2208a, int i) throws RemoteException {
                    abstractC2208a.mo40823a(i, mediaItem, trackInfo, subtitleData);
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public final void onTrackDeselected(SessionPlayer sessionPlayer, final SessionPlayer.TrackInfo trackInfo) {
            m40913a(sessionPlayer, new AbstractC2391e() { // from class: androidx.media2.session.n.f.5
                @Override // androidx.media2.session.C2338n.AbstractC2391e
                /* renamed from: a */
                public final void mo40912a(MediaSession.AbstractC2208a abstractC2208a, int i) throws RemoteException {
                    abstractC2208a.mo40811b(i, C2481s.m40795a(trackInfo));
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public final void onTrackSelected(SessionPlayer sessionPlayer, final SessionPlayer.TrackInfo trackInfo) {
            m40913a(sessionPlayer, new AbstractC2391e() { // from class: androidx.media2.session.n.f.4
                @Override // androidx.media2.session.C2338n.AbstractC2391e
                /* renamed from: a */
                public final void mo40912a(MediaSession.AbstractC2208a abstractC2208a, int i) throws RemoteException {
                    abstractC2208a.mo40821a(i, C2481s.m40795a(trackInfo));
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public final void onTracksChanged(SessionPlayer sessionPlayer, final List<SessionPlayer.TrackInfo> list) {
            final C2338n m40918a = m40918a();
            m40913a(sessionPlayer, new AbstractC2391e() { // from class: androidx.media2.session.n.f.3
                @Override // androidx.media2.session.C2338n.AbstractC2391e
                /* renamed from: a */
                public final void mo40912a(MediaSession.AbstractC2208a abstractC2208a, int i) throws RemoteException {
                    abstractC2208a.mo40814a(i, C2481s.m40791a(list), C2481s.m40795a(m40918a.mo40968a(1)), C2481s.m40795a(m40918a.mo40968a(2)), C2481s.m40795a(m40918a.mo40968a(4)), C2481s.m40795a(m40918a.mo40968a(5)));
                }
            });
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public final void onVideoSizeChanged(SessionPlayer sessionPlayer, final VideoSize videoSize) {
            m40913a(sessionPlayer, new AbstractC2391e() { // from class: androidx.media2.session.n.f.2
                @Override // androidx.media2.session.C2338n.AbstractC2391e
                /* renamed from: a */
                public final void mo40912a(MediaSession.AbstractC2208a abstractC2208a, int i) throws RemoteException {
                    abstractC2208a.mo40819a(i, C2481s.m40794a(videoSize));
                }
            });
        }
    }

    public C2338n(MediaSession mediaSession, Context context, String str, SessionPlayer sessionPlayer, PendingIntent pendingIntent, Executor executor, MediaSession.AbstractC2211d abstractC2211d, Bundle bundle) {
        ComponentName componentName;
        boolean z;
        SessionPlayer sessionPlayer2;
        Object obj = new Object();
        this.f9129b = obj;
        this.f9137n = context;
        this.f9146w = mediaSession;
        HandlerThread handlerThread = new HandlerThread("MediaSession_Thread");
        this.f9138o = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        this.f9139p = handler;
        BinderC2436r binderC2436r = new BinderC2436r(this);
        this.f9140q = binderC2436r;
        this.f9147x = pendingIntent;
        this.f9132e = abstractC2211d;
        this.f9131d = executor;
        this.f9144u = (AudioManager) context.getSystemService("audio");
        C2392f c2392f = new C2392f(this);
        this.f9145v = c2392f;
        this.f9142s = str;
        Uri build = new Uri.Builder().scheme(C2338n.class.getName()).appendPath(str).appendPath(String.valueOf(SystemClock.elapsedRealtime())).build();
        this.f9130c = build;
        SessionToken sessionToken = new SessionToken(new SessionTokenImplBase(Process.myUid(), 0, context.getPackageName(), binderC2436r, bundle));
        this.f9143t = sessionToken;
        String join = TextUtils.join(".", new String[]{"androidx.media2.session.id", str});
        synchronized (f9123j) {
            if (!f9124k) {
                ComponentName m40954a = m40954a("androidx.media2.session.MediaLibraryService");
                f9125l = m40954a;
                if (m40954a == null) {
                    f9125l = m40954a("androidx.media2.session.MediaSessionService");
                }
                f9124k = true;
            }
            componentName = f9125l;
        }
        if (componentName == null) {
            Intent intent = new Intent("android.intent.action.MEDIA_BUTTON", build);
            intent.setPackage(context.getPackageName());
            this.f9148y = PendingIntent.getBroadcast(context, 0, intent, 0);
            componentName = new ComponentName(context, context.getClass());
            C2387b c2387b = new C2387b();
            this.f9149z = c2387b;
            IntentFilter intentFilter = new IntentFilter("android.intent.action.MEDIA_BUTTON");
            intentFilter.addDataScheme(build.getScheme());
            context.registerReceiver(c2387b, intentFilter);
        } else {
            Intent intent2 = new Intent("android.intent.action.MEDIA_BUTTON", build);
            intent2.setComponent(componentName);
            if (Build.VERSION.SDK_INT >= 26) {
                this.f9148y = PendingIntent.getForegroundService(context, 0, intent2, 0);
            } else {
                this.f9148y = PendingIntent.getService(context, 0, intent2, 0);
            }
            this.f9149z = null;
        }
        MediaSessionCompat mediaSessionCompat = new MediaSessionCompat(context, join, componentName, this.f9148y, sessionToken.m41109c(), sessionToken);
        this.f9133f = mediaSessionCompat;
        C2408o c2408o = new C2408o(this, handler);
        this.f9141r = c2408o;
        mediaSessionCompat.f105a.mo46516a(pendingIntent);
        mediaSessionCompat.f105a.mo46520a(4);
        MediaController.PlaybackInfo m40959a = m40959a(sessionPlayer, (AudioAttributesCompat) null);
        boolean z2 = sessionPlayer instanceof AbstractC2484u;
        AbstractC1338f abstractC1338f = null;
        if (z2) {
            final AbstractC2484u abstractC2484u = (AbstractC2484u) sessionPlayer;
            abstractC1338f = new AbstractC1338f(abstractC2484u.m40779z(), abstractC2484u.m40780y(), abstractC2484u.m40781x()) { // from class: androidx.media2.session.n.43
            };
        }
        synchronized (obj) {
            z = !m40959a.equals(this.f9134g);
            sessionPlayer2 = this.f9136i;
            this.f9136i = sessionPlayer;
            this.f9134g = m40959a;
            this.f9135h = abstractC1338f;
        }
        if (sessionPlayer2 != sessionPlayer) {
            if (sessionPlayer2 != null) {
                sessionPlayer2.m43185a(c2392f);
            }
            sessionPlayer.m43184a(executor, c2392f);
        }
        if (sessionPlayer2 == null) {
            mediaSessionCompat.m46532a(mo40973I());
        } else {
            if (sessionPlayer != sessionPlayer2) {
                final int mo40946d = mo40946d();
                executor.execute(new Runnable() { // from class: androidx.media2.session.n.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        C2338n.this.mo40924z();
                    }
                });
                List<MediaItem> mo41339n = sessionPlayer2.mo41339n();
                final List<MediaItem> m40926v = m40926v();
                if (!C0827a.m44414a(mo41339n, m40926v)) {
                    mo40955a(new AbstractC2391e() { // from class: androidx.media2.session.n.34
                        @Override // androidx.media2.session.C2338n.AbstractC2391e
                        /* renamed from: a */
                        public final void mo40912a(MediaSession.AbstractC2208a abstractC2208a, int i) throws RemoteException {
                            abstractC2208a.mo40815a(i, m40926v, C2338n.this.mo40936l(), C2338n.this.mo40934n(), C2338n.this.mo40933o(), C2338n.this.mo40932p());
                        }
                    });
                } else {
                    MediaMetadata mo41338o = sessionPlayer2.mo41338o();
                    final MediaMetadata mo40936l = mo40936l();
                    if (!C0827a.m44414a(mo41338o, mo40936l)) {
                        mo40955a(new AbstractC2391e() { // from class: androidx.media2.session.n.35
                            @Override // androidx.media2.session.C2338n.AbstractC2391e
                            /* renamed from: a */
                            public final void mo40912a(MediaSession.AbstractC2208a abstractC2208a, int i) throws RemoteException {
                                abstractC2208a.mo40822a(i, mo40936l);
                            }
                        });
                    }
                }
                MediaItem mo41335r = sessionPlayer2.mo41335r();
                final MediaItem m40927u = m40927u();
                if (!C0827a.m44414a(mo41335r, m40927u)) {
                    mo40955a(new AbstractC2391e() { // from class: androidx.media2.session.n.36
                        @Override // androidx.media2.session.C2338n.AbstractC2391e
                        /* renamed from: a */
                        public final void mo40912a(MediaSession.AbstractC2208a abstractC2208a, int i) throws RemoteException {
                            abstractC2208a.mo40825a(i, m40927u, C2338n.this.mo40934n(), C2338n.this.mo40933o(), C2338n.this.mo40932p());
                        }
                    });
                }
                final int mo40929s = mo40929s();
                if (sessionPlayer2.mo41337p() != mo40929s) {
                    mo40955a(new AbstractC2391e() { // from class: androidx.media2.session.n.37
                        @Override // androidx.media2.session.C2338n.AbstractC2391e
                        /* renamed from: a */
                        public final void mo40912a(MediaSession.AbstractC2208a abstractC2208a, int i) throws RemoteException {
                            abstractC2208a.mo40812b(i, mo40929s, C2338n.this.mo40934n(), C2338n.this.mo40933o(), C2338n.this.mo40932p());
                        }
                    });
                }
                final int mo40928t = mo40928t();
                if (sessionPlayer2.mo41336q() != mo40928t) {
                    mo40955a(new AbstractC2391e() { // from class: androidx.media2.session.n.38
                        @Override // androidx.media2.session.C2338n.AbstractC2391e
                        /* renamed from: a */
                        public final void mo40912a(MediaSession.AbstractC2208a abstractC2208a, int i) throws RemoteException {
                            abstractC2208a.mo40829a(i, mo40928t, C2338n.this.mo40934n(), C2338n.this.mo40933o(), C2338n.this.mo40932p());
                        }
                    });
                }
                final long elapsedRealtime = SystemClock.elapsedRealtime();
                final long mo40944e = mo40944e();
                final int mo40946d2 = mo40946d();
                mo40955a(new AbstractC2391e() { // from class: androidx.media2.session.n.39
                    @Override // androidx.media2.session.C2338n.AbstractC2391e
                    /* renamed from: a */
                    public final void mo40912a(MediaSession.AbstractC2208a abstractC2208a, int i) throws RemoteException {
                        abstractC2208a.mo40827a(i, elapsedRealtime, mo40944e, mo40946d2);
                    }
                });
                final MediaItem m40927u2 = m40927u();
                if (m40927u2 != null) {
                    final int mo40941g = mo40941g();
                    final long mo40942f = mo40942f();
                    mo40955a(new AbstractC2391e() { // from class: androidx.media2.session.n.40
                        @Override // androidx.media2.session.C2338n.AbstractC2391e
                        /* renamed from: a */
                        public final void mo40912a(MediaSession.AbstractC2208a abstractC2208a, int i) throws RemoteException {
                            abstractC2208a.mo40824a(i, m40927u2, mo40941g, mo40942f, SystemClock.elapsedRealtime(), C2338n.this.mo40944e());
                        }
                    });
                }
                final float mo40940h = mo40940h();
                if (mo40940h != sessionPlayer2.mo41344i()) {
                    mo40955a(new AbstractC2391e() { // from class: androidx.media2.session.n.41
                        @Override // androidx.media2.session.C2338n.AbstractC2391e
                        /* renamed from: a */
                        public final void mo40912a(MediaSession.AbstractC2208a abstractC2208a, int i) throws RemoteException {
                            abstractC2208a.mo40828a(i, elapsedRealtime, mo40944e, mo40940h);
                        }
                    });
                }
            }
            if (z) {
                m40958a(m40959a);
            }
        }
        if (!z2) {
            mediaSessionCompat.m46535a(m40963a(sessionPlayer.mo41342k()));
        } else if (abstractC1338f == null) {
            throw new IllegalArgumentException("volumeProvider may not be null!");
        } else {
            mediaSessionCompat.f105a.mo46508a(abstractC1338f);
        }
        mediaSessionCompat.m46533a(c2408o, handler);
        mediaSessionCompat.m46536a();
    }

    /* renamed from: a */
    static int m40963a(AudioAttributesCompat audioAttributesCompat) {
        int i;
        if (audioAttributesCompat == null) {
            i = 3;
        } else {
            i = audioAttributesCompat.m43266b();
            if (i == Integer.MIN_VALUE) {
                i = 3;
            }
        }
        return i;
    }

    /* renamed from: a */
    private ComponentName m40954a(String str) {
        PackageManager packageManager = this.f9137n.getPackageManager();
        Intent intent = new Intent(str);
        intent.setPackage(this.f9137n.getPackageName());
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (queryIntentServices == null || queryIntentServices.isEmpty()) {
            return null;
        }
        ResolveInfo resolveInfo = queryIntentServices.get(0);
        return new ComponentName(resolveInfo.serviceInfo.packageName, resolveInfo.serviceInfo.name);
    }

    /* renamed from: a */
    private AbstractFutureC15579a<SessionPlayer.C1352b> m40957a(AbstractC2388c<AbstractFutureC15579a<SessionPlayer.C1352b>> abstractC2388c) {
        C0492b m45412a = C0492b.m45412a();
        m45412a.mo40774a((C0492b) new SessionPlayer.C1352b(-2, null));
        return (AbstractFutureC15579a) m40956a((AbstractC2388c<AbstractC2388c<AbstractFutureC15579a<SessionPlayer.C1352b>>>) abstractC2388c, (AbstractC2388c<AbstractFutureC15579a<SessionPlayer.C1352b>>) m45412a);
    }

    /* renamed from: a */
    private <T> T m40956a(AbstractC2388c<T> abstractC2388c, T t) {
        SessionPlayer sessionPlayer;
        synchronized (this.f9129b) {
            sessionPlayer = this.f9136i;
        }
        try {
            if (!mo40974H()) {
                T mo40919a = abstractC2388c.mo40919a(sessionPlayer);
                if (mo40919a != null) {
                    return mo40919a;
                }
            } else if (f9122a) {
                new IllegalStateException();
            }
        } catch (Exception e) {
        }
        return t;
    }

    /* renamed from: u */
    private MediaItem m40927u() {
        SessionPlayer sessionPlayer;
        synchronized (this.f9129b) {
            sessionPlayer = this.f9136i;
        }
        if (sessionPlayer != null) {
            return sessionPlayer.mo41335r();
        }
        return null;
    }

    /* renamed from: v */
    private List<MediaItem> m40926v() {
        SessionPlayer sessionPlayer;
        synchronized (this.f9129b) {
            sessionPlayer = this.f9136i;
        }
        if (sessionPlayer != null) {
            return sessionPlayer.mo41339n();
        }
        return null;
    }

    /* renamed from: A */
    public MediaBrowserServiceCompat mo40981A() {
        MediaBrowserServiceCompat mediaBrowserServiceCompat;
        synchronized (this.f9129b) {
            mediaBrowserServiceCompat = this.f9128B;
        }
        return mediaBrowserServiceCompat;
    }

    @Override // androidx.media2.session.MediaSession.AbstractC2210c
    /* renamed from: B */
    public final SessionPlayer mo40980B() {
        SessionPlayer sessionPlayer;
        synchronized (this.f9129b) {
            sessionPlayer = this.f9136i;
        }
        return sessionPlayer;
    }

    @Override // androidx.media2.session.MediaSession.AbstractC2210c
    /* renamed from: C */
    public final String mo40979C() {
        return this.f9142s;
    }

    @Override // androidx.media2.session.MediaSession.AbstractC2210c
    /* renamed from: D */
    public final SessionToken mo40978D() {
        return this.f9143t;
    }

    @Override // androidx.media2.session.MediaSession.AbstractC2210c
    /* renamed from: E */
    public final MediaSessionCompat mo40977E() {
        return this.f9133f;
    }

    @Override // androidx.media2.session.MediaSession.AbstractC2210c
    /* renamed from: F */
    public final Context mo40976F() {
        return this.f9137n;
    }

    @Override // androidx.media2.session.MediaSession.AbstractC2210c
    /* renamed from: G */
    public final Executor mo40975G() {
        return this.f9131d;
    }

    @Override // androidx.media2.session.MediaSession.AbstractC2210c
    /* renamed from: H */
    public final boolean mo40974H() {
        boolean z;
        synchronized (this.f9129b) {
            z = this.f9127A;
        }
        return z;
    }

    @Override // androidx.media2.session.MediaSession.AbstractC2210c
    /* renamed from: I */
    public final PlaybackStateCompat mo40973I() {
        int m40806a = C2481s.m40806a(mo40946d(), mo40941g());
        long m40807a = C2481s.m40807a(mo40934n());
        PlaybackStateCompat.C0084a m46485a = new PlaybackStateCompat.C0084a().m46484a(m40806a, mo40944e(), mo40940h(), SystemClock.elapsedRealtime()).m46485a();
        m46485a.f174b = m40807a;
        m46485a.f173a = mo40942f();
        return m46485a.m46483b();
    }

    @Override // androidx.media2.session.MediaSession.AbstractC2210c
    /* renamed from: J */
    public final MediaController.PlaybackInfo mo40972J() {
        MediaController.PlaybackInfo playbackInfo;
        synchronized (this.f9129b) {
            playbackInfo = this.f9134g;
        }
        return playbackInfo;
    }

    @Override // androidx.media2.session.MediaSession.AbstractC2210c
    /* renamed from: K */
    public final PendingIntent mo40971K() {
        return this.f9147x;
    }

    @Override // androidx.media2.session.C2322k.AbstractC2324b
    /* renamed from: a */
    public final SessionPlayer.TrackInfo mo40968a(final int i) {
        return (SessionPlayer.TrackInfo) m40956a((AbstractC2388c<AbstractC2388c<SessionPlayer.TrackInfo>>) new AbstractC2388c<SessionPlayer.TrackInfo>() { // from class: androidx.media2.session.n.33
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* synthetic */ SessionPlayer.TrackInfo mo40919a(SessionPlayer sessionPlayer) throws Exception {
                return C2481s.m40795a(sessionPlayer.mo41350e(i));
            }
        }, (AbstractC2388c<SessionPlayer.TrackInfo>) null);
    }

    /* renamed from: a */
    final MediaController.PlaybackInfo m40959a(SessionPlayer sessionPlayer, AudioAttributesCompat audioAttributesCompat) {
        if (audioAttributesCompat == null) {
            audioAttributesCompat = sessionPlayer.mo41342k();
        }
        if (sessionPlayer instanceof AbstractC2484u) {
            AbstractC2484u abstractC2484u = (AbstractC2484u) sessionPlayer;
            return MediaController.PlaybackInfo.m41141a(2, audioAttributesCompat, abstractC2484u.m40779z(), abstractC2484u.m40780y(), abstractC2484u.m40781x());
        }
        int m40963a = m40963a(audioAttributesCompat);
        int i = 2;
        if (Build.VERSION.SDK_INT >= 21) {
            i = 2;
            if (this.f9144u.isVolumeFixed()) {
                i = 0;
            }
        }
        return MediaController.PlaybackInfo.m41141a(1, audioAttributesCompat, i, this.f9144u.getStreamMaxVolume(m40963a), this.f9144u.getStreamVolume(m40963a));
    }

    @Override // androidx.media2.session.C2322k.AbstractC2323a
    /* renamed from: a */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40970a() {
        return m40957a(new AbstractC2388c<AbstractFutureC15579a<SessionPlayer.C1352b>>() { // from class: androidx.media2.session.n.46
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* synthetic */ AbstractFutureC15579a<SessionPlayer.C1352b> mo40919a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.mo41358c();
            }
        });
    }

    @Override // androidx.media2.session.C2322k.AbstractC2323a
    /* renamed from: a */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40969a(final float f) {
        return m40957a(new AbstractC2388c<AbstractFutureC15579a<SessionPlayer.C1352b>>() { // from class: androidx.media2.session.n.8
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ AbstractFutureC15579a<SessionPlayer.C1352b> mo40919a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.mo41387a(f);
            }
        });
    }

    @Override // androidx.media2.session.C2322k.AbstractC2325c
    /* renamed from: a */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40967a(final int i, final int i2) {
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("indices shouldn't be negative");
        }
        return m40957a(new AbstractC2388c<AbstractFutureC15579a<SessionPlayer.C1352b>>() { // from class: androidx.media2.session.n.18
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ AbstractFutureC15579a<SessionPlayer.C1352b> mo40919a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.mo41385a(i, i2);
            }
        });
    }

    @Override // androidx.media2.session.C2322k.AbstractC2325c
    /* renamed from: a */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40966a(final int i, final MediaItem mediaItem) {
        if (i >= 0) {
            Objects.requireNonNull(mediaItem, "item shouldn't be null");
            return m40957a(new AbstractC2388c<AbstractFutureC15579a<SessionPlayer.C1352b>>() { // from class: androidx.media2.session.n.16
                @Override // androidx.media2.session.C2338n.AbstractC2388c
                /* renamed from: a */
                public final /* bridge */ /* synthetic */ AbstractFutureC15579a<SessionPlayer.C1352b> mo40919a(SessionPlayer sessionPlayer) throws Exception {
                    return sessionPlayer.mo41382a(i, mediaItem);
                }
            });
        }
        throw new IllegalArgumentException("index shouldn't be negative");
    }

    @Override // androidx.media2.session.C2322k.AbstractC2323a
    /* renamed from: a */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40965a(final long j) {
        return m40957a(new AbstractC2388c<AbstractFutureC15579a<SessionPlayer.C1352b>>() { // from class: androidx.media2.session.n.2
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ AbstractFutureC15579a<SessionPlayer.C1352b> mo40919a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.mo41381a(j);
            }
        });
    }

    @Override // androidx.media2.session.C2322k.AbstractC2324b
    /* renamed from: a */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40964a(final Surface surface) {
        return m40957a(new AbstractC2388c<AbstractFutureC15579a<SessionPlayer.C1352b>>() { // from class: androidx.media2.session.n.29
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ AbstractFutureC15579a<SessionPlayer.C1352b> mo40919a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.mo41380a(surface);
            }
        });
    }

    @Override // androidx.media2.session.C2322k.AbstractC2325c
    /* renamed from: a */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40962a(final MediaMetadata mediaMetadata) {
        return m40957a(new AbstractC2388c<AbstractFutureC15579a<SessionPlayer.C1352b>>() { // from class: androidx.media2.session.n.23
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ AbstractFutureC15579a<SessionPlayer.C1352b> mo40919a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.mo41375a(mediaMetadata);
            }
        });
    }

    @Override // androidx.media2.session.C2322k.AbstractC2324b
    /* renamed from: a */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40961a(final SessionPlayer.TrackInfo trackInfo) {
        return m40957a(new AbstractC2388c<AbstractFutureC15579a<SessionPlayer.C1352b>>() { // from class: androidx.media2.session.n.31
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ AbstractFutureC15579a<SessionPlayer.C1352b> mo40919a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.mo41374a(trackInfo);
            }
        });
    }

    @Override // androidx.media2.session.C2322k.AbstractC2325c
    /* renamed from: a */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40953a(final List<MediaItem> list, final MediaMetadata mediaMetadata) {
        return m40957a(new AbstractC2388c<AbstractFutureC15579a<SessionPlayer.C1352b>>() { // from class: androidx.media2.session.n.10
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ AbstractFutureC15579a<SessionPlayer.C1352b> mo40919a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.mo41368a(list, mediaMetadata);
            }
        });
    }

    /* renamed from: a */
    final void m40958a(final MediaController.PlaybackInfo playbackInfo) {
        mo40955a(new AbstractC2391e() { // from class: androidx.media2.session.n.42
            @Override // androidx.media2.session.C2338n.AbstractC2391e
            /* renamed from: a */
            public final void mo40912a(MediaSession.AbstractC2208a abstractC2208a, int i) throws RemoteException {
                abstractC2208a.mo40817a(i, playbackInfo);
            }
        });
    }

    /* renamed from: a */
    public void mo40955a(AbstractC2391e abstractC2391e) {
        C2486v m41089c;
        int i;
        List<MediaSession.C2209b> m41097a = this.f9140q.f9345c.m41097a();
        for (int i2 = 0; i2 < m41097a.size(); i2++) {
            MediaSession.C2209b c2209b = m41097a.get(i2);
            try {
                m41089c = this.f9140q.f9345c.m41089c(c2209b);
            } catch (DeadObjectException e) {
                if (f9122a) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(c2209b.toString());
                    sb.append(" is gone");
                }
                this.f9140q.f9345c.m41096a(c2209b);
            } catch (RemoteException e2) {
                Log.w("MSImplBase", "Exception in " + c2209b.toString(), e2);
            }
            if (m41089c != null) {
                i = m41089c.m40778a();
            } else if (!mo40949b(c2209b)) {
                if (f9122a) {
                    new StringBuilder("Skipping dispatching task to disconnected controller, controller=").append(c2209b);
                }
            } else {
                i = 0;
            }
            abstractC2391e.mo40912a(c2209b.f8743c, i);
        }
        try {
            abstractC2391e.mo40912a(this.f9141r.f9290k, 0);
        } catch (RemoteException e3) {
            Log.e("MSImplBase", "Exception in using media1 API", e3);
        }
    }

    /* renamed from: a */
    final boolean m40960a(SessionPlayer sessionPlayer) {
        return (mo40974H() || sessionPlayer.mo41353d() == 0 || sessionPlayer.mo41353d() == 3) ? false : true;
    }

    @Override // androidx.media2.session.C2322k.AbstractC2323a
    /* renamed from: b */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40952b() {
        return m40957a(new AbstractC2388c<AbstractFutureC15579a<SessionPlayer.C1352b>>() { // from class: androidx.media2.session.n.44
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* synthetic */ AbstractFutureC15579a<SessionPlayer.C1352b> mo40919a(SessionPlayer sessionPlayer) throws Exception {
                if (sessionPlayer.mo41353d() != 0) {
                    return sessionPlayer.mo41388a();
                }
                AbstractFutureC15579a<SessionPlayer.C1352b> mo41358c = sessionPlayer.mo41358c();
                AbstractFutureC15579a<SessionPlayer.C1352b> mo41388a = sessionPlayer.mo41388a();
                if (mo41358c != null && mo41388a != null) {
                    return C2385a.m40921a(C2481s.f9444b, mo41358c, mo41388a);
                }
                return null;
            }
        });
    }

    @Override // androidx.media2.session.C2322k.AbstractC2325c
    /* renamed from: b */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40951b(final int i) {
        if (i >= 0) {
            return m40957a(new AbstractC2388c<AbstractFutureC15579a<SessionPlayer.C1352b>>() { // from class: androidx.media2.session.n.12
                @Override // androidx.media2.session.C2338n.AbstractC2388c
                /* renamed from: a */
                public final /* synthetic */ AbstractFutureC15579a<SessionPlayer.C1352b> mo40919a(SessionPlayer sessionPlayer) throws Exception {
                    return i >= sessionPlayer.mo41339n().size() ? SessionPlayer.C1352b.m43178b() : sessionPlayer.mo41364b(i);
                }
            });
        }
        throw new IllegalArgumentException("index shouldn't be negative");
    }

    @Override // androidx.media2.session.C2322k.AbstractC2324b
    /* renamed from: b */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40950b(final SessionPlayer.TrackInfo trackInfo) {
        return m40957a(new AbstractC2388c<AbstractFutureC15579a<SessionPlayer.C1352b>>() { // from class: androidx.media2.session.n.32
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* synthetic */ AbstractFutureC15579a<SessionPlayer.C1352b> mo40919a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.mo41359b(trackInfo);
            }
        });
    }

    /* renamed from: b */
    public boolean mo40949b(MediaSession.C2209b c2209b) {
        if (c2209b == null) {
            return false;
        }
        return this.f9140q.f9345c.m41091b(c2209b) || this.f9141r.f9286g.m41091b(c2209b);
    }

    @Override // androidx.media2.session.C2322k.AbstractC2323a
    /* renamed from: c */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40948c() {
        return m40957a(new AbstractC2388c<AbstractFutureC15579a<SessionPlayer.C1352b>>() { // from class: androidx.media2.session.n.45
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* synthetic */ AbstractFutureC15579a<SessionPlayer.C1352b> mo40919a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.mo41366b();
            }
        });
    }

    @Override // androidx.media2.session.C2322k.AbstractC2325c
    /* renamed from: c */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40947c(final int i) {
        if (i >= 0) {
            return m40957a(new AbstractC2388c<AbstractFutureC15579a<SessionPlayer.C1352b>>() { // from class: androidx.media2.session.n.17
                @Override // androidx.media2.session.C2338n.AbstractC2388c
                /* renamed from: a */
                public final /* synthetic */ AbstractFutureC15579a<SessionPlayer.C1352b> mo40919a(SessionPlayer sessionPlayer) throws Exception {
                    return i >= sessionPlayer.mo41339n().size() ? SessionPlayer.C1352b.m43178b() : sessionPlayer.mo41386a(i);
                }
            });
        }
        throw new IllegalArgumentException("index shouldn't be negative");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f9129b) {
            if (this.f9127A) {
                return;
            }
            this.f9127A = true;
            if (f9122a) {
                StringBuilder sb = new StringBuilder("Closing session, id=");
                sb.append(this.f9142s);
                sb.append(", token=");
                sb.append(this.f9143t);
            }
            this.f9136i.m43185a(this.f9145v);
            this.f9133f.f105a.mo46521a();
            this.f9148y.cancel();
            BroadcastReceiver broadcastReceiver = this.f9149z;
            if (broadcastReceiver != null) {
                this.f9137n.unregisterReceiver(broadcastReceiver);
            }
            mo40955a(new AbstractC2391e() { // from class: androidx.media2.session.n.11
                @Override // androidx.media2.session.C2338n.AbstractC2391e
                /* renamed from: a */
                public final void mo40912a(MediaSession.AbstractC2208a abstractC2208a, int i) throws RemoteException {
                    abstractC2208a.mo40813b(i);
                }
            });
            this.f9139p.removeCallbacksAndMessages(null);
            if (!this.f9138o.isAlive()) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 18) {
                this.f9138o.quitSafely();
            } else {
                this.f9138o.quit();
            }
        }
    }

    @Override // androidx.media2.session.C2322k.AbstractC2323a
    /* renamed from: d */
    public final int mo40946d() {
        return ((Integer) m40956a((AbstractC2388c<AbstractC2388c<Integer>>) new AbstractC2388c<Integer>() { // from class: androidx.media2.session.n.3
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* synthetic */ Integer mo40919a(SessionPlayer sessionPlayer) throws Exception {
                return Integer.valueOf(sessionPlayer.mo41353d());
            }
        }, (AbstractC2388c<Integer>) 3)).intValue();
    }

    @Override // androidx.media2.session.C2322k.AbstractC2325c
    /* renamed from: d */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40945d(final int i) {
        return m40957a(new AbstractC2388c<AbstractFutureC15579a<SessionPlayer.C1352b>>() { // from class: androidx.media2.session.n.25
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* synthetic */ AbstractFutureC15579a<SessionPlayer.C1352b> mo40919a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.mo41356c(i);
            }
        });
    }

    @Override // androidx.media2.session.C2322k.AbstractC2323a
    /* renamed from: e */
    public final long mo40944e() {
        return ((Long) m40956a((AbstractC2388c<AbstractC2388c<Long>>) new AbstractC2388c<Long>() { // from class: androidx.media2.session.n.4
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* synthetic */ Long mo40919a(SessionPlayer sessionPlayer) throws Exception {
                if (C2338n.this.m40960a(sessionPlayer)) {
                    return Long.valueOf(sessionPlayer.mo41351e());
                }
                return null;
            }
        }, (AbstractC2388c<Long>) Long.MIN_VALUE)).longValue();
    }

    @Override // androidx.media2.session.C2322k.AbstractC2325c
    /* renamed from: e */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40943e(final int i) {
        return m40957a(new AbstractC2388c<AbstractFutureC15579a<SessionPlayer.C1352b>>() { // from class: androidx.media2.session.n.27
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* synthetic */ AbstractFutureC15579a<SessionPlayer.C1352b> mo40919a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.mo41352d(i);
            }
        });
    }

    @Override // androidx.media2.session.C2322k.AbstractC2323a
    /* renamed from: f */
    public final long mo40942f() {
        return ((Long) m40956a((AbstractC2388c<AbstractC2388c<Long>>) new AbstractC2388c<Long>() { // from class: androidx.media2.session.n.5
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* synthetic */ Long mo40919a(SessionPlayer sessionPlayer) throws Exception {
                if (C2338n.this.m40960a(sessionPlayer)) {
                    return Long.valueOf(sessionPlayer.mo41347g());
                }
                return null;
            }
        }, (AbstractC2388c<Long>) Long.MIN_VALUE)).longValue();
    }

    @Override // androidx.media2.session.C2322k.AbstractC2323a
    /* renamed from: g */
    public final int mo40941g() {
        return ((Integer) m40956a((AbstractC2388c<AbstractC2388c<Integer>>) new AbstractC2388c<Integer>() { // from class: androidx.media2.session.n.6
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* synthetic */ Integer mo40919a(SessionPlayer sessionPlayer) throws Exception {
                return Integer.valueOf(sessionPlayer.mo41345h());
            }
        }, (AbstractC2388c<Integer>) 0)).intValue();
    }

    @Override // androidx.media2.session.C2322k.AbstractC2323a
    /* renamed from: h */
    public final float mo40940h() {
        return ((Float) m40956a((AbstractC2388c<AbstractC2388c<Float>>) new AbstractC2388c<Float>() { // from class: androidx.media2.session.n.7
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* synthetic */ Float mo40919a(SessionPlayer sessionPlayer) throws Exception {
                if (C2338n.this.m40960a(sessionPlayer)) {
                    return Float.valueOf(sessionPlayer.mo41344i());
                }
                return null;
            }
        }, (AbstractC2388c<Float>) Float.valueOf(1.0f))).floatValue();
    }

    @Override // androidx.media2.session.C2322k.AbstractC2324b
    /* renamed from: i */
    public final VideoSize mo40939i() {
        return (VideoSize) m40956a((AbstractC2388c<AbstractC2388c<VideoSize>>) new AbstractC2388c<VideoSize>() { // from class: androidx.media2.session.n.28
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* synthetic */ VideoSize mo40919a(SessionPlayer sessionPlayer) throws Exception {
                return C2481s.m40794a(sessionPlayer.mo41343j());
            }
        }, (AbstractC2388c<VideoSize>) new VideoSize(0, 0));
    }

    @Override // androidx.media2.session.C2322k.AbstractC2324b
    /* renamed from: j */
    public final List<SessionPlayer.TrackInfo> mo40938j() {
        return (List) m40956a((AbstractC2388c<AbstractC2388c<List<SessionPlayer.TrackInfo>>>) new AbstractC2388c<List<SessionPlayer.TrackInfo>>() { // from class: androidx.media2.session.n.30
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* synthetic */ List<SessionPlayer.TrackInfo> mo40919a(SessionPlayer sessionPlayer) throws Exception {
                return C2481s.m40791a(sessionPlayer.mo41331w());
            }
        }, (AbstractC2388c<List<SessionPlayer.TrackInfo>>) null);
    }

    @Override // androidx.media2.session.C2322k.AbstractC2325c
    /* renamed from: k */
    public final List<MediaItem> mo40937k() {
        return (List) m40956a((AbstractC2388c<AbstractC2388c<List<MediaItem>>>) new AbstractC2388c<List<MediaItem>>() { // from class: androidx.media2.session.n.9
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* synthetic */ List<MediaItem> mo40919a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.mo41339n();
            }
        }, (AbstractC2388c<List<MediaItem>>) null);
    }

    @Override // androidx.media2.session.C2322k.AbstractC2325c
    /* renamed from: l */
    public final MediaMetadata mo40936l() {
        return (MediaMetadata) m40956a((AbstractC2388c<AbstractC2388c<MediaMetadata>>) new AbstractC2388c<MediaMetadata>() { // from class: androidx.media2.session.n.15
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* synthetic */ MediaMetadata mo40919a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.mo41338o();
            }
        }, (AbstractC2388c<MediaMetadata>) null);
    }

    @Override // androidx.media2.session.C2322k.AbstractC2325c
    /* renamed from: m */
    public final MediaItem mo40935m() {
        return (MediaItem) m40956a((AbstractC2388c<AbstractC2388c<MediaItem>>) new AbstractC2388c<MediaItem>() { // from class: androidx.media2.session.n.19
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* synthetic */ MediaItem mo40919a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.mo41335r();
            }
        }, (AbstractC2388c<MediaItem>) null);
    }

    @Override // androidx.media2.session.C2322k.AbstractC2325c
    /* renamed from: n */
    public final int mo40934n() {
        return ((Integer) m40956a((AbstractC2388c<AbstractC2388c<Integer>>) new AbstractC2388c<Integer>() { // from class: androidx.media2.session.n.20
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* synthetic */ Integer mo40919a(SessionPlayer sessionPlayer) throws Exception {
                return Integer.valueOf(sessionPlayer.mo41334s());
            }
        }, (AbstractC2388c<Integer>) (-1))).intValue();
    }

    @Override // androidx.media2.session.C2322k.AbstractC2325c
    /* renamed from: o */
    public final int mo40933o() {
        return ((Integer) m40956a((AbstractC2388c<AbstractC2388c<Integer>>) new AbstractC2388c<Integer>() { // from class: androidx.media2.session.n.21
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* synthetic */ Integer mo40919a(SessionPlayer sessionPlayer) throws Exception {
                return Integer.valueOf(sessionPlayer.mo41333t());
            }
        }, (AbstractC2388c<Integer>) (-1))).intValue();
    }

    @Override // androidx.media2.session.C2322k.AbstractC2325c
    /* renamed from: p */
    public final int mo40932p() {
        return ((Integer) m40956a((AbstractC2388c<AbstractC2388c<Integer>>) new AbstractC2388c<Integer>() { // from class: androidx.media2.session.n.22
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* synthetic */ Integer mo40919a(SessionPlayer sessionPlayer) throws Exception {
                return Integer.valueOf(sessionPlayer.mo41332u());
            }
        }, (AbstractC2388c<Integer>) (-1))).intValue();
    }

    @Override // androidx.media2.session.C2322k.AbstractC2325c
    /* renamed from: q */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40931q() {
        return m40957a(new AbstractC2388c<AbstractFutureC15579a<SessionPlayer.C1352b>>() { // from class: androidx.media2.session.n.13
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* synthetic */ AbstractFutureC15579a<SessionPlayer.C1352b> mo40919a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.mo41341l();
            }
        });
    }

    @Override // androidx.media2.session.C2322k.AbstractC2325c
    /* renamed from: r */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40930r() {
        return m40957a(new AbstractC2388c<AbstractFutureC15579a<SessionPlayer.C1352b>>() { // from class: androidx.media2.session.n.14
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* synthetic */ AbstractFutureC15579a<SessionPlayer.C1352b> mo40919a(SessionPlayer sessionPlayer) throws Exception {
                return sessionPlayer.mo41340m();
            }
        });
    }

    @Override // androidx.media2.session.C2322k.AbstractC2325c
    /* renamed from: s */
    public final int mo40929s() {
        return ((Integer) m40956a((AbstractC2388c<AbstractC2388c<Integer>>) new AbstractC2388c<Integer>() { // from class: androidx.media2.session.n.24
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* synthetic */ Integer mo40919a(SessionPlayer sessionPlayer) throws Exception {
                return Integer.valueOf(sessionPlayer.mo41337p());
            }
        }, (AbstractC2388c<Integer>) 0)).intValue();
    }

    @Override // androidx.media2.session.C2322k.AbstractC2325c
    /* renamed from: t */
    public final int mo40928t() {
        return ((Integer) m40956a((AbstractC2388c<AbstractC2388c<Integer>>) new AbstractC2388c<Integer>() { // from class: androidx.media2.session.n.26
            @Override // androidx.media2.session.C2338n.AbstractC2388c
            /* renamed from: a */
            public final /* synthetic */ Integer mo40919a(SessionPlayer sessionPlayer) throws Exception {
                return Integer.valueOf(sessionPlayer.mo41336q());
            }
        }, (AbstractC2388c<Integer>) 0)).intValue();
    }

    @Override // androidx.media2.session.MediaSession.AbstractC2210c
    /* renamed from: y */
    public MediaSession.AbstractC2211d mo40925y() {
        return this.f9132e;
    }

    @Override // androidx.media2.session.MediaSession.AbstractC2210c
    /* renamed from: z */
    public MediaSession mo40924z() {
        return this.f9146w;
    }
}

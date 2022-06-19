package androidx.media2.player;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import android.util.Pair;
import android.view.Surface;
import androidx.core.p036e.C0827a;
import androidx.core.p036e.C0833d;
import androidx.media.AudioAttributesCompat;
import androidx.media2.common.FileMediaItem;
import androidx.media2.common.MediaItem;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.exoplayer.external.AbstractC1357a;
import androidx.media2.exoplayer.external.AbstractC1369ae;
import androidx.media2.exoplayer.external.C1368ad;
import androidx.media2.exoplayer.external.C1378aj;
import androidx.media2.exoplayer.external.C1379ak;
import androidx.media2.exoplayer.external.C1645h;
import androidx.media2.exoplayer.external.audio.DefaultAudioSink;
import androidx.media2.exoplayer.external.p062a.C1360a;
import androidx.media2.exoplayer.external.source.C1771h;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.trackselection.AbstractC1938d;
import androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector;
import androidx.media2.player.C2172e;
import androidx.media2.player.C2195n;
import androidx.media2.player.MediaPlayer2;
import androidx.p024c.p025a.C0492b;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import io.bidmachine.protobuf.EventTypeExtended;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* renamed from: androidx.media2.player.c */
/* loaded from: classes-dex2jar.jar:androidx/media2/player/c.class */
public final class C2132c extends MediaPlayer2 implements C2172e.AbstractC2177c {

    /* renamed from: a */
    final C2172e f8464a;

    /* renamed from: d */
    AbstractRunnableC2169b f8467d;

    /* renamed from: f */
    private final Handler f8469f;

    /* renamed from: g */
    private Pair<Executor, MediaPlayer2.AbstractC2124c> f8470g;

    /* renamed from: h */
    private Pair<Executor, MediaPlayer2.AbstractC2122a> f8471h;

    /* renamed from: i */
    private HandlerThread f8472i;

    /* renamed from: b */
    final ArrayDeque<AbstractRunnableC2169b> f8465b = new ArrayDeque<>();

    /* renamed from: c */
    final Object f8466c = new Object();

    /* renamed from: e */
    final Object f8468e = new Object();

    /* renamed from: androidx.media2.player.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/c$a.class */
    public interface AbstractC2168a {
        void notify(MediaPlayer2.AbstractC2124c abstractC2124c);
    }

    /* renamed from: androidx.media2.player.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/c$b.class */
    public abstract class AbstractRunnableC2169b implements Runnable {

        /* renamed from: d */
        final int f8539d;

        /* renamed from: e */
        final boolean f8540e;

        /* renamed from: f */
        MediaItem f8541f;

        /* renamed from: g */
        boolean f8542g;

        AbstractRunnableC2169b(int i, boolean z) {
            C2132c.this = r4;
            this.f8539d = i;
            this.f8540e = z;
        }

        /* renamed from: a */
        abstract void mo41260a() throws IOException, MediaPlayer2.NoDrmSchemeException;

        /* renamed from: a */
        final void m41259a(final int i) {
            if (this.f8539d >= 1000) {
                return;
            }
            C2132c.this.m41288a(new AbstractC2168a() { // from class: androidx.media2.player.c.b.1
                @Override // androidx.media2.player.C2132c.AbstractC2168a
                public final void notify(MediaPlayer2.AbstractC2124c abstractC2124c) {
                    abstractC2124c.mo41303c(AbstractRunnableC2169b.this.f8541f, AbstractRunnableC2169b.this.f8539d, i);
                }
            });
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            int i;
            boolean z2;
            if (this.f8539d == 14) {
                synchronized (C2132c.this.f8466c) {
                    AbstractRunnableC2169b peekFirst = C2132c.this.f8465b.peekFirst();
                    z2 = peekFirst != null && peekFirst.f8539d == 14;
                }
                z = z2;
            } else {
                z = false;
            }
            if (!z) {
                try {
                } catch (IOException e) {
                    i = 4;
                } catch (IllegalArgumentException e2) {
                    i = 2;
                } catch (IllegalStateException e3) {
                } catch (SecurityException e4) {
                    i = 3;
                } catch (Exception e5) {
                    i = Integer.MIN_VALUE;
                }
                if (this.f8539d == 1000 || !C2132c.this.f8464a.m41245f()) {
                    mo41260a();
                    i = 0;
                } else {
                    i = 1;
                }
            } else {
                i = 5;
            }
            this.f8541f = C2132c.this.f8464a.f8556j.m41203b();
            if (!this.f8540e || i != 0 || z) {
                m41259a(i);
                synchronized (C2132c.this.f8466c) {
                    C2132c.this.f8467d = null;
                    C2132c.this.m41296a();
                }
            }
            synchronized (this) {
                this.f8542g = true;
                notifyAll();
            }
        }
    }

    public C2132c(Context context) {
        HandlerThread handlerThread = new HandlerThread("ExoMediaPlayer2Thread");
        this.f8472i = handlerThread;
        handlerThread.start();
        C2172e c2172e = new C2172e(context.getApplicationContext(), this, this.f8472i.getLooper());
        this.f8464a = c2172e;
        this.f8469f = new Handler(c2172e.f8548b);
        m41283a((Callable) new Callable<Void>() { // from class: androidx.media2.player.c.29
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Void call() throws Exception {
                C2132c.this.f8464a.m41246e();
                return null;
            }
        });
    }

    /* renamed from: a */
    private static <T> T m41291a(C0492b<T> c0492b) {
        boolean z;
        T t;
        boolean z2 = false;
        while (true) {
            try {
                try {
                    z = z2;
                    t = c0492b.get();
                    break;
                } catch (InterruptedException e) {
                    z2 = true;
                }
            } catch (ExecutionException e2) {
                Throwable cause = e2.getCause();
                Log.e("ExoPlayerMediaPlayer2", "Internal player error", new RuntimeException(cause));
                throw new IllegalStateException(cause);
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return t;
    }

    /* renamed from: a */
    private Object m41287a(AbstractRunnableC2169b abstractRunnableC2169b) {
        synchronized (this.f8466c) {
            this.f8465b.add(abstractRunnableC2169b);
            m41296a();
        }
        return abstractRunnableC2169b;
    }

    /* renamed from: a */
    private <T> T m41283a(final Callable<T> callable) {
        final C0492b m45412a = C0492b.m45412a();
        synchronized (this.f8468e) {
            C0833d.m44410a(this.f8472i);
            C0833d.m44406b(this.f8469f.post(new Runnable() { // from class: androidx.media2.player.c.30
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        m45412a.mo40774a((C0492b) callable.call());
                    } catch (Throwable th) {
                        m45412a.mo41314a(th);
                    }
                }
            }));
        }
        return (T) m41291a((C0492b<Object>) m45412a);
    }

    /* renamed from: a */
    public /* synthetic */ void m41284a(List list, MediaPlayer2.AbstractC2124c abstractC2124c) {
        abstractC2124c.mo41305a(list);
    }

    /* renamed from: b */
    private void m41277b(final MediaItem mediaItem, final int i, final int i2) {
        m41288a(new AbstractC2168a() { // from class: androidx.media2.player.c.28
            @Override // androidx.media2.player.C2132c.AbstractC2168a
            public final void notify(MediaPlayer2.AbstractC2124c abstractC2124c) {
                abstractC2124c.mo41304b(mediaItem, i, i2);
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: a */
    public final SessionPlayer.TrackInfo mo41294a(final int i) {
        return (SessionPlayer.TrackInfo) m41283a((Callable<Object>) new Callable<SessionPlayer.TrackInfo>() { // from class: androidx.media2.player.c.17
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ SessionPlayer.TrackInfo call() throws Exception {
                C2172e c2172e = C2132c.this.f8464a;
                return c2172e.f8555i.m41166a(i);
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: a */
    public final Object mo41295a(final float f) {
        return m41287a(new AbstractRunnableC2169b(26, false) { // from class: androidx.media2.player.c.14
            @Override // androidx.media2.player.C2132c.AbstractRunnableC2169b
            /* renamed from: a */
            final void mo41260a() {
                C2172e c2172e = C2132c.this.f8464a;
                c2172e.f8552f.m43124a(f);
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: a */
    public final Object mo41293a(final long j, final int i) {
        return m41287a(new AbstractRunnableC2169b(14, true) { // from class: androidx.media2.player.c.35
            @Override // androidx.media2.player.C2132c.AbstractRunnableC2169b
            /* renamed from: a */
            final void mo41260a() {
                C2172e c2172e = C2132c.this.f8464a;
                long j2 = j;
                int i2 = i;
                C1379ak c1379ak = c2172e.f8552f;
                C1378aj m41258a = C2171d.m41258a(i2);
                c1379ak.m43105q();
                C1645h c1645h = c1379ak.f5168c;
                C1378aj c1378aj = m41258a;
                if (m41258a == null) {
                    c1378aj = C1378aj.f5157e;
                }
                if (!c1645h.f6529l.equals(c1378aj)) {
                    c1645h.f6529l = c1378aj;
                    c1645h.f6521d.f7835a.mo41488a(5, c1378aj).sendToTarget();
                }
                c2172e.f8552f.m43165a(j2);
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: a */
    public final Object mo41292a(final Surface surface) {
        return m41287a(new AbstractRunnableC2169b(27, false) { // from class: androidx.media2.player.c.13
            @Override // androidx.media2.player.C2132c.AbstractRunnableC2169b
            /* renamed from: a */
            final void mo41260a() {
                C2172e c2172e = C2132c.this.f8464a;
                c2172e.f8552f.m43122a(surface);
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: a */
    public final Object mo41290a(final AudioAttributesCompat audioAttributesCompat) {
        return m41287a(new AbstractRunnableC2169b(16, false) { // from class: androidx.media2.player.c.6
            @Override // androidx.media2.player.C2132c.AbstractRunnableC2169b
            /* renamed from: a */
            final void mo41260a() {
                C2172e c2172e = C2132c.this.f8464a;
                AudioAttributesCompat audioAttributesCompat2 = audioAttributesCompat;
                c2172e.f8557k = true;
                c2172e.f8552f.m43116a(C2171d.m41256a(audioAttributesCompat2));
                if (c2172e.f8558l != 0) {
                    Handler handler = c2172e.f8553g;
                    final DefaultAudioSink defaultAudioSink = c2172e.f8554h;
                    final int i = c2172e.f8558l;
                    handler.post(new Runnable() { // from class: androidx.media2.player.e.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DefaultAudioSink defaultAudioSink2 = defaultAudioSink;
                            int i2 = i;
                            if (defaultAudioSink2.f5246c != i2) {
                                defaultAudioSink2.f5246c = i2;
                                defaultAudioSink2.mo43050i();
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: a */
    public final Object mo41289a(final MediaItem mediaItem) {
        return m41287a(new AbstractRunnableC2169b(19, false) { // from class: androidx.media2.player.c.24
            @Override // androidx.media2.player.C2132c.AbstractRunnableC2169b
            /* renamed from: a */
            final void mo41260a() {
                C2172e c2172e = C2132c.this.f8464a;
                MediaItem mediaItem2 = mediaItem;
                C2172e.C2179e c2179e = c2172e.f8556j;
                MediaItem mediaItem3 = (MediaItem) C0833d.m44410a(mediaItem2);
                c2179e.m41208a();
                c2179e.f8579c.m42258h();
                c2179e.m41205a(Collections.singletonList(mediaItem3));
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: a */
    public final Object mo41286a(final C2187j c2187j) {
        return m41287a(new AbstractRunnableC2169b(24, false) { // from class: androidx.media2.player.c.9
            @Override // androidx.media2.player.C2132c.AbstractRunnableC2169b
            /* renamed from: a */
            final void mo41260a() {
                C2172e c2172e = C2132c.this.f8464a;
                c2172e.f8565s = c2187j;
                C1379ak c1379ak = c2172e.f8552f;
                C1368ad m41252a = C2171d.m41252a(c2172e.f8565s);
                c1379ak.m43105q();
                C1645h c1645h = c1379ak.f5168c;
                C1368ad c1368ad = m41252a;
                if (m41252a == null) {
                    c1368ad = C1368ad.f5135a;
                }
                if (!c1645h.f6528k.equals(c1368ad)) {
                    c1645h.f6527j++;
                    c1645h.f6528k = c1368ad;
                    c1645h.f6521d.f7835a.mo41488a(4, c1368ad).sendToTarget();
                    c1645h.m42500a(new AbstractC1357a.AbstractC1359b(c1368ad) { // from class: androidx.media2.exoplayer.external.k

                        /* renamed from: a */
                        private final C1368ad f6560a;

                        {
                            this.f6560a = c1368ad;
                        }

                        @Override // androidx.media2.exoplayer.external.AbstractC1357a.AbstractC1359b
                        /* renamed from: a */
                        public final void mo42034a(AbstractC1369ae.AbstractC1371b abstractC1371b) {
                            abstractC1371b.mo43097a();
                        }
                    });
                }
                if (c2172e.m41249b() == 1004) {
                    c2172e.f8547a.mo41222a(c2172e.f8556j.m41203b(), c2172e.m41247d());
                }
            }
        });
    }

    /* renamed from: a */
    final void m41296a() {
        if (this.f8467d != null || this.f8465b.isEmpty()) {
            return;
        }
        AbstractRunnableC2169b removeFirst = this.f8465b.removeFirst();
        this.f8467d = removeFirst;
        this.f8469f.post(removeFirst);
    }

    @Override // androidx.media2.player.C2172e.AbstractC2177c
    /* renamed from: a */
    public final void mo41225a(MediaItem mediaItem, int i) {
        m41277b(mediaItem, 704, i);
    }

    @Override // androidx.media2.player.C2172e.AbstractC2177c
    /* renamed from: a */
    public final void mo41224a(final MediaItem mediaItem, final int i, final int i2) {
        m41288a(new AbstractC2168a() { // from class: androidx.media2.player.c.22
            @Override // androidx.media2.player.C2132c.AbstractC2168a
            public final void notify(MediaPlayer2.AbstractC2124c abstractC2124c) {
                abstractC2124c.mo41309a(mediaItem, i, i2);
            }
        });
    }

    @Override // androidx.media2.player.C2172e.AbstractC2177c
    /* renamed from: a */
    public final void mo41223a(final MediaItem mediaItem, final SessionPlayer.TrackInfo trackInfo, final SubtitleData subtitleData) {
        m41288a(new AbstractC2168a() { // from class: androidx.media2.player.c.23
            @Override // androidx.media2.player.C2132c.AbstractC2168a
            public final void notify(MediaPlayer2.AbstractC2124c abstractC2124c) {
                abstractC2124c.mo41308a(mediaItem, trackInfo, subtitleData);
            }
        });
    }

    @Override // androidx.media2.player.C2172e.AbstractC2177c
    /* renamed from: a */
    public final void mo41222a(final MediaItem mediaItem, final C2186i c2186i) {
        m41288a(new AbstractC2168a() { // from class: androidx.media2.player.c.26
            @Override // androidx.media2.player.C2132c.AbstractC2168a
            public final void notify(MediaPlayer2.AbstractC2124c abstractC2124c) {
                abstractC2124c.mo41307a(mediaItem, c2186i);
            }
        });
    }

    @Override // androidx.media2.player.C2172e.AbstractC2177c
    /* renamed from: a */
    public final void mo41221a(final MediaItem mediaItem, final C2194m c2194m) {
        m41288a(new AbstractC2168a() { // from class: androidx.media2.player.c.25
            @Override // androidx.media2.player.C2132c.AbstractC2168a
            public final void notify(MediaPlayer2.AbstractC2124c abstractC2124c) {
                abstractC2124c.mo41306a(mediaItem, c2194m);
            }
        });
    }

    /* renamed from: a */
    final void m41288a(final AbstractC2168a abstractC2168a) {
        Pair<Executor, MediaPlayer2.AbstractC2124c> pair;
        synchronized (this.f8468e) {
            pair = this.f8470g;
        }
        if (pair != null) {
            Executor executor = (Executor) pair.first;
            final MediaPlayer2.AbstractC2124c abstractC2124c = (MediaPlayer2.AbstractC2124c) pair.second;
            try {
                executor.execute(new Runnable() { // from class: androidx.media2.player.c.8
                    @Override // java.lang.Runnable
                    public final void run() {
                        abstractC2168a.notify(abstractC2124c);
                    }
                });
            } catch (RejectedExecutionException e) {
                Log.w("ExoPlayerMediaPlayer2", "The given executor is shutting down. Ignoring the player event.");
            }
        }
    }

    @Override // androidx.media2.player.C2172e.AbstractC2177c
    /* renamed from: a */
    public final void mo41220a(final List<SessionPlayer.TrackInfo> list) {
        m41288a(new AbstractC2168a() { // from class: androidx.media2.player._$$Lambda$c$_dJ51sqCDyVnA3yqIkFCHyo63UQ
            @Override // androidx.media2.player.C2132c.AbstractC2168a
            public final void notify(MediaPlayer2.AbstractC2124c abstractC2124c) {
                C2132c.this.m41284a(list, abstractC2124c);
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: a */
    public final void mo41282a(Executor executor, MediaPlayer2.AbstractC2122a abstractC2122a) {
        C0833d.m44410a(executor);
        C0833d.m44410a(abstractC2122a);
        synchronized (this.f8468e) {
            this.f8471h = Pair.create(executor, abstractC2122a);
        }
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: a */
    public final void mo41281a(Executor executor, MediaPlayer2.AbstractC2124c abstractC2124c) {
        C0833d.m44410a(executor);
        C0833d.m44410a(abstractC2124c);
        synchronized (this.f8468e) {
            this.f8470g = Pair.create(executor, abstractC2124c);
        }
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: a */
    public final boolean mo41285a(Object obj) {
        boolean remove;
        synchronized (this.f8466c) {
            remove = this.f8465b.remove(obj);
        }
        return remove;
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: b */
    public final MediaItem mo41280b() {
        return (MediaItem) m41283a((Callable<Object>) new Callable<MediaItem>() { // from class: androidx.media2.player.c.31
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ MediaItem call() throws Exception {
                return C2132c.this.f8464a.f8556j.m41203b();
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: b */
    public final Object mo41279b(final int i) {
        return m41287a(new AbstractRunnableC2169b(15, false) { // from class: androidx.media2.player.c.18
            @Override // androidx.media2.player.C2132c.AbstractRunnableC2169b
            /* renamed from: a */
            final void mo41260a() {
                C2172e c2172e = C2132c.this.f8464a;
                int i2 = i;
                C2195n c2195n = c2172e.f8555i;
                C0833d.m44407a(c2195n.f8648f.get(i2) == null, "Video track selection is not supported");
                C2195n.C2197b c2197b = c2195n.f8647e.get(i2);
                if (c2197b != null) {
                    c2195n.f8652j = c2197b;
                    TrackGroupArray trackGroupArray = ((AbstractC1938d.C1939a) C0833d.m44410a(c2195n.f8646d.f7808a)).f7812d[1];
                    int i3 = trackGroupArray.get(c2197b.f8660d).length;
                    int[] iArr = new int[i3];
                    for (int i4 = 0; i4 < i3; i4++) {
                        iArr[i4] = i4;
                    }
                    c2195n.f8646d.m41861a(c2195n.f8646d.m41873a().m41850a(1, trackGroupArray, new DefaultTrackSelector.SelectionOverride(c2197b.f8660d, iArr)).m41851a());
                    return;
                }
                C2195n.C2197b c2197b2 = c2195n.f8649g.get(i2);
                if (c2197b2 != null) {
                    c2195n.f8654l = c2197b2;
                    c2195n.f8646d.m41861a(c2195n.f8646d.m41873a().m41848b(false).m41850a(3, ((AbstractC1938d.C1939a) C0833d.m44410a(c2195n.f8646d.f7808a)).f7812d[3], new DefaultTrackSelector.SelectionOverride(c2197b2.f8660d, 0)).m41851a());
                    return;
                }
                C2195n.C2196a c2196a = c2195n.f8650h.get(i2);
                C0833d.m44408a(c2196a != null);
                if (c2195n.f8656n != c2196a.f8660d) {
                    c2195n.f8645c.m41172z();
                    c2195n.f8656n = c2196a.f8660d;
                    c2195n.f8646d.m41861a(c2195n.f8646d.m41873a().m41850a(2, ((AbstractC1938d.C1939a) C0833d.m44410a(c2195n.f8646d.f7808a)).f7812d[2], new DefaultTrackSelector.SelectionOverride(c2195n.f8656n, 0)).m41851a());
                }
                if (c2196a.f8658b != -1) {
                    c2195n.f8645c.m41181a(c2196a.f8657a, c2196a.f8658b);
                }
                c2195n.f8655m = c2196a;
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: b */
    public final Object mo41278b(final MediaItem mediaItem) {
        return m41287a(new AbstractRunnableC2169b(22, false) { // from class: androidx.media2.player.c.5
            @Override // androidx.media2.player.C2132c.AbstractRunnableC2169b
            /* renamed from: a */
            final void mo41260a() {
                C2172e c2172e = C2132c.this.f8464a;
                MediaItem mediaItem2 = mediaItem;
                if (!(c2172e.f8556j.f8579c.m42257i() == 0)) {
                    c2172e.f8556j.m41205a(Collections.singletonList(mediaItem2));
                    return;
                }
                if (mediaItem2 instanceof FileMediaItem) {
                    FileMediaItem fileMediaItem = (FileMediaItem) mediaItem2;
                    fileMediaItem.m43206a();
                    fileMediaItem.m43205b();
                }
                throw new IllegalStateException();
            }
        });
    }

    @Override // androidx.media2.player.C2172e.AbstractC2177c
    /* renamed from: b */
    public final void mo41219b(MediaItem mediaItem, int i) {
        m41277b(mediaItem, EventTypeExtended.EVENT_TYPE_EXTENDED_ALL_HB_NETWORKS_PREPARED_VALUE, i);
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: c */
    public final Object mo41276c() {
        return m41287a(new AbstractRunnableC2169b(6, true) { // from class: androidx.media2.player.c.32
            @Override // androidx.media2.player.C2132c.AbstractRunnableC2169b
            /* renamed from: a */
            final void mo41260a() {
                C2172e c2172e = C2132c.this.f8464a;
                C0833d.m44406b(!c2172e.f8559m);
                C2172e.C2179e c2179e = c2172e.f8556j;
                C1379ak c1379ak = c2179e.f8578b;
                C1771h c1771h = c2179e.f8579c;
                c1379ak.m43105q();
                if (c1379ak.f5186u != null) {
                    c1379ak.f5186u.mo42069a(c1379ak.f5176k);
                    C1360a c1360a = c1379ak.f5176k;
                    for (C1360a.C1361a c1361a : new ArrayList(c1360a.f5080b.f5087a)) {
                        c1360a.mo42058b(c1361a.f5086c, c1361a.f5084a);
                    }
                }
                c1379ak.f5186u = c1771h;
                c1771h.mo42074a(c1379ak.f5169d, c1379ak.f5176k);
                c1379ak.m43112a(c1379ak.m43108n(), c1379ak.f5177l.m43015a(c1379ak.m43108n()));
                c1379ak.f5168c.m42495a(c1771h, true, true);
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: c */
    public final Object mo41275c(final int i) {
        return m41287a(new AbstractRunnableC2169b(2, false) { // from class: androidx.media2.player.c.19
            @Override // androidx.media2.player.C2132c.AbstractRunnableC2169b
            /* renamed from: a */
            final void mo41260a() {
                C2172e c2172e = C2132c.this.f8464a;
                int i2 = i;
                C2195n c2195n = c2172e.f8555i;
                C0833d.m44407a(c2195n.f8648f.get(i2) == null, "Video track deselection is not supported");
                C0833d.m44407a(c2195n.f8647e.get(i2) == null, "Audio track deselection is not supported");
                if (c2195n.f8649g.get(i2) != null) {
                    c2195n.f8654l = null;
                    c2195n.f8646d.m41860a(c2195n.f8646d.m41873a().m41848b(true));
                    return;
                }
                boolean z = false;
                if (c2195n.f8655m != null) {
                    z = false;
                    if (c2195n.f8655m.f8661e.f5048a == i2) {
                        z = true;
                    }
                }
                C0833d.m44408a(z);
                c2195n.f8645c.m41172z();
                c2195n.f8655m = null;
            }
        });
    }

    @Override // androidx.media2.player.C2172e.AbstractC2177c
    /* renamed from: c */
    public final void mo41218c(MediaItem mediaItem) {
        m41277b(mediaItem, 100, 0);
        synchronized (this.f8466c) {
            AbstractRunnableC2169b abstractRunnableC2169b = this.f8467d;
            if (abstractRunnableC2169b != null && abstractRunnableC2169b.f8539d == 6 && C0827a.m44414a(this.f8467d.f8541f, mediaItem) && this.f8467d.f8540e) {
                this.f8467d.m41259a(0);
                this.f8467d = null;
                m41296a();
            }
        }
    }

    @Override // androidx.media2.player.C2172e.AbstractC2177c
    /* renamed from: c */
    public final void mo41217c(final MediaItem mediaItem, final int i) {
        synchronized (this.f8466c) {
            AbstractRunnableC2169b abstractRunnableC2169b = this.f8467d;
            if (abstractRunnableC2169b != null && abstractRunnableC2169b.f8540e) {
                this.f8467d.m41259a(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
                this.f8467d = null;
                m41296a();
            }
        }
        m41288a(new AbstractC2168a() { // from class: androidx.media2.player.c.27
            @Override // androidx.media2.player.C2132c.AbstractC2168a
            public final void notify(MediaPlayer2.AbstractC2124c abstractC2124c) {
                abstractC2124c.mo41310a(mediaItem, i);
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: d */
    public final Object mo41274d() {
        return m41287a(new AbstractRunnableC2169b(5, false) { // from class: androidx.media2.player.c.33
            @Override // androidx.media2.player.C2132c.AbstractRunnableC2169b
            /* renamed from: a */
            final void mo41260a() {
                C2172e c2172e = C2132c.this.f8464a;
                c2172e.f8560n = false;
                if (c2172e.f8552f.m43110l() == 4) {
                    c2172e.f8552f.m43165a(0L);
                }
                c2172e.f8552f.m43113a(true);
            }
        });
    }

    @Override // androidx.media2.player.C2172e.AbstractC2177c
    /* renamed from: d */
    public final void mo41216d(MediaItem mediaItem) {
        m41277b(mediaItem, 701, 0);
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: e */
    public final Object mo41273e() {
        return m41287a(new AbstractRunnableC2169b(4, false) { // from class: androidx.media2.player.c.34
            @Override // androidx.media2.player.C2132c.AbstractRunnableC2169b
            /* renamed from: a */
            final void mo41260a() {
                C2172e c2172e = C2132c.this.f8464a;
                c2172e.f8560n = false;
                c2172e.f8552f.m43113a(false);
            }
        });
    }

    @Override // androidx.media2.player.C2172e.AbstractC2177c
    /* renamed from: e */
    public final void mo41215e(MediaItem mediaItem) {
        m41277b(mediaItem, 702, 0);
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: f */
    public final long mo41272f() {
        return ((Long) m41283a((Callable<Object>) new Callable<Long>() { // from class: androidx.media2.player.c.1
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Long call() throws Exception {
                return Long.valueOf(C2132c.this.f8464a.m41251a());
            }
        })).longValue();
    }

    @Override // androidx.media2.player.C2172e.AbstractC2177c
    /* renamed from: f */
    public final void mo41214f(MediaItem mediaItem) {
        m41277b(mediaItem, 3, 0);
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: g */
    public final long mo41271g() {
        return ((Long) m41283a((Callable<Object>) new Callable<Long>() { // from class: androidx.media2.player.c.2
            /* JADX WARN: Type inference failed for: r0v8, types: [long] */
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Long call() throws Exception {
                C2172e c2172e = C2132c.this.f8464a;
                C0833d.m44406b(c2172e.m41249b() != 1001);
                ?? mo42488d = c2172e.f8552f.mo42488d();
                char c = mo42488d;
                if (mo42488d == -9223372036854775807L) {
                    c = 65535;
                }
                return Long.valueOf(c);
            }
        })).longValue();
    }

    @Override // androidx.media2.player.C2172e.AbstractC2177c
    /* renamed from: g */
    public final void mo41213g(MediaItem mediaItem) {
        m41277b(mediaItem, 2, 0);
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: h */
    public final long mo41270h() {
        return ((Long) m41283a((Callable<Object>) new Callable<Long>() { // from class: androidx.media2.player.c.3
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Long call() throws Exception {
                C2172e c2172e = C2132c.this.f8464a;
                C0833d.m44406b(c2172e.m41249b() != 1001);
                return Long.valueOf(c2172e.f8552f.mo42486f());
            }
        })).longValue();
    }

    @Override // androidx.media2.player.C2172e.AbstractC2177c
    /* renamed from: h */
    public final void mo41212h(MediaItem mediaItem) {
        m41277b(mediaItem, 5, 0);
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: i */
    public final Object mo41269i() {
        return m41287a(new AbstractRunnableC2169b(29, false) { // from class: androidx.media2.player.c.4
            @Override // androidx.media2.player.C2132c.AbstractRunnableC2169b
            /* renamed from: a */
            final void mo41260a() {
                C2172e.C2179e c2179e = C2132c.this.f8464a.f8556j;
                c2179e.m41206a(c2179e.f8580d.removeFirst());
                c2179e.f8579c.m42259g();
            }
        });
    }

    @Override // androidx.media2.player.C2172e.AbstractC2177c
    /* renamed from: i */
    public final void mo41211i(MediaItem mediaItem) {
        m41277b(mediaItem, 7, 0);
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: j */
    public final AudioAttributesCompat mo41268j() {
        return (AudioAttributesCompat) m41283a((Callable<Object>) new Callable<AudioAttributesCompat>() { // from class: androidx.media2.player.c.7
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ AudioAttributesCompat call() throws Exception {
                C2172e c2172e = C2132c.this.f8464a;
                if (c2172e.f8557k) {
                    return C2171d.m41253a(c2172e.f8552f.f5184s);
                }
                return null;
            }
        });
    }

    @Override // androidx.media2.player.C2172e.AbstractC2177c
    /* renamed from: j */
    public final void mo41210j(MediaItem mediaItem) {
        m41277b(mediaItem, 6, 0);
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: k */
    public final C2187j mo41267k() {
        return (C2187j) m41283a((Callable<Object>) new Callable<C2187j>() { // from class: androidx.media2.player.c.10
            @Override // java.util.concurrent.Callable
            public final /* bridge */ /* synthetic */ C2187j call() throws Exception {
                return C2132c.this.f8464a.f8565s;
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: l */
    public final int mo41266l() {
        return ((Integer) m41283a((Callable<Object>) new Callable<Integer>() { // from class: androidx.media2.player.c.11
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Integer call() throws Exception {
                return Integer.valueOf(C2132c.this.f8464a.f8563q);
            }
        })).intValue();
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: m */
    public final int mo41265m() {
        return ((Integer) m41283a((Callable<Object>) new Callable<Integer>() { // from class: androidx.media2.player.c.12
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Integer call() throws Exception {
                return Integer.valueOf(C2132c.this.f8464a.f8564r);
            }
        })).intValue();
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: n */
    public final float mo41264n() {
        return ((Float) m41283a((Callable<Object>) new Callable<Float>() { // from class: androidx.media2.player.c.15
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Float call() throws Exception {
                return Float.valueOf(C2132c.this.f8464a.f8552f.f5185t);
            }
        })).floatValue();
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: o */
    public final List<SessionPlayer.TrackInfo> mo41263o() {
        return (List) m41283a((Callable<Object>) new Callable<List<SessionPlayer.TrackInfo>>() { // from class: androidx.media2.player.c.16
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ List<SessionPlayer.TrackInfo> call() throws Exception {
                return C2132c.this.f8464a.f8555i.m41165b();
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: p */
    public final void mo41262p() {
        AbstractRunnableC2169b abstractRunnableC2169b;
        synchronized (this.f8466c) {
            this.f8465b.clear();
        }
        synchronized (this.f8466c) {
            abstractRunnableC2169b = this.f8467d;
        }
        if (abstractRunnableC2169b != null) {
            synchronized (abstractRunnableC2169b) {
                while (!abstractRunnableC2169b.f8542g) {
                    try {
                        abstractRunnableC2169b.wait();
                    } catch (InterruptedException e) {
                    }
                }
            }
        }
        m41283a((Callable) new Callable<Void>() { // from class: androidx.media2.player.c.20
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Void call() throws Exception {
                C2132c.this.f8464a.m41246e();
                return null;
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: q */
    public final void mo41261q() {
        synchronized (this.f8468e) {
            this.f8470g = null;
        }
        synchronized (this.f8468e) {
            HandlerThread handlerThread = this.f8472i;
            if (handlerThread == null) {
                return;
            }
            this.f8472i = null;
            final C0492b m45412a = C0492b.m45412a();
            this.f8469f.post(new Runnable() { // from class: androidx.media2.player.c.21
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        C2172e c2172e = C2132c.this.f8464a;
                        if (c2172e.f8552f != null) {
                            c2172e.f8549c.removeCallbacks(c2172e.f8551e);
                            c2172e.f8552f.m43106p();
                            c2172e.f8552f = null;
                            c2172e.f8556j.m41208a();
                            c2172e.f8557k = false;
                        }
                        m45412a.mo40774a((C0492b) null);
                    } catch (Throwable th) {
                        m45412a.mo41314a(th);
                    }
                }
            });
            m41291a(m45412a);
            handlerThread.quit();
        }
    }

    @Override // androidx.media2.player.C2172e.AbstractC2177c
    /* renamed from: r */
    public final void mo41209r() {
        synchronized (this.f8466c) {
            AbstractRunnableC2169b abstractRunnableC2169b = this.f8467d;
            if (abstractRunnableC2169b != null && abstractRunnableC2169b.f8539d == 14 && this.f8467d.f8540e) {
                this.f8467d.m41259a(0);
                this.f8467d = null;
                m41296a();
            }
        }
    }
}

package androidx.media2.player;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import android.util.Pair;
import android.view.Surface;
import androidx.core.e.d;
import androidx.media.AudioAttributesCompat;
import androidx.media2.common.FileMediaItem;
import androidx.media2.common.MediaItem;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.exoplayer.external.a;
import androidx.media2.exoplayer.external.a.a;
import androidx.media2.exoplayer.external.ad;
import androidx.media2.exoplayer.external.ae;
import androidx.media2.exoplayer.external.aj;
import androidx.media2.exoplayer.external.ak;
import androidx.media2.exoplayer.external.audio.DefaultAudioSink;
import androidx.media2.exoplayer.external.h;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector;
import androidx.media2.exoplayer.external.trackselection.d;
import androidx.media2.player.MediaPlayer2;
import androidx.media2.player.e;
import androidx.media2.player.n;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/media2/player/c.class */
public final class c extends MediaPlayer2 implements e.c {

    /* renamed from: a  reason: collision with root package name */
    final e f4350a;

    /* renamed from: d  reason: collision with root package name */
    b f4353d;
    private final Handler f;
    private Pair<Executor, MediaPlayer2.c> g;
    private Pair<Executor, MediaPlayer2.a> h;
    private HandlerThread i;

    /* renamed from: b  reason: collision with root package name */
    final ArrayDeque<b> f4351b = new ArrayDeque<>();

    /* renamed from: c  reason: collision with root package name */
    final Object f4352c = new Object();
    final Object e = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/c$a.class */
    public interface a {
        void notify(MediaPlayer2.c cVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/c$b.class */
    public abstract class b implements Runnable {

        /* renamed from: d  reason: collision with root package name */
        final int f4420d;
        final boolean e;
        MediaItem f;
        boolean g;

        b(int i, boolean z) {
            this.f4420d = i;
            this.e = z;
        }

        abstract void a() throws IOException, MediaPlayer2.NoDrmSchemeException;

        final void a(final int i) {
            if (this.f4420d < 1000) {
                c.this.a(new a() { // from class: androidx.media2.player.c.b.1
                    @Override // androidx.media2.player.c.a
                    public final void notify(MediaPlayer2.c cVar) {
                        cVar.c(b.this.f, b.this.f4420d, i);
                    }
                });
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            int i = 0;
            if (this.f4420d == 14) {
                synchronized (c.this.f4352c) {
                    b peekFirst = c.this.f4351b.peekFirst();
                    z = peekFirst != null && peekFirst.f4420d == 14;
                }
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
                    i = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
                }
                if (this.f4420d == 1000 || !c.this.f4350a.f()) {
                    a();
                } else {
                    i = 1;
                }
            } else {
                i = 5;
            }
            this.f = c.this.f4350a.j.b();
            if (!this.e || i != 0 || z) {
                a(i);
                synchronized (c.this.f4352c) {
                    c.this.f4353d = null;
                    c.this.a();
                }
            }
            synchronized (this) {
                this.g = true;
                notifyAll();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context) {
        HandlerThread handlerThread = new HandlerThread("ExoMediaPlayer2Thread");
        this.i = handlerThread;
        handlerThread.start();
        e eVar = new e(context.getApplicationContext(), this, this.i.getLooper());
        this.f4350a = eVar;
        this.f = new Handler(eVar.f4425b);
        a((Callable) new Callable<Void>() { // from class: androidx.media2.player.c.29
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Void call() throws Exception {
                c.this.f4350a.e();
                return null;
            }
        });
    }

    private static <T> T a(androidx.c.a.b<T> bVar) {
        T t;
        boolean z = false;
        while (true) {
            try {
                try {
                    t = bVar.get();
                    break;
                } catch (InterruptedException e) {
                    z = true;
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

    private Object a(b bVar) {
        synchronized (this.f4352c) {
            this.f4351b.add(bVar);
            a();
        }
        return bVar;
    }

    private <T> T a(final Callable<T> callable) {
        final androidx.c.a.b a2 = androidx.c.a.b.a();
        synchronized (this.e) {
            d.a(this.i);
            d.b(this.f.post(new Runnable() { // from class: androidx.media2.player.c.30
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        a2.a((androidx.c.a.b) callable.call());
                    } catch (Throwable th) {
                        a2.a(th);
                    }
                }
            }));
        }
        return (T) a((androidx.c.a.b<Object>) a2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list, MediaPlayer2.c cVar) {
        cVar.a(list);
    }

    private void b(final MediaItem mediaItem, final int i, final int i2) {
        a(new a() { // from class: androidx.media2.player.c.28
            @Override // androidx.media2.player.c.a
            public final void notify(MediaPlayer2.c cVar) {
                cVar.b(mediaItem, i, i2);
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public final SessionPlayer.TrackInfo a(final int i) {
        return (SessionPlayer.TrackInfo) a((Callable<Object>) new Callable<SessionPlayer.TrackInfo>() { // from class: androidx.media2.player.c.17
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ SessionPlayer.TrackInfo call() throws Exception {
                e eVar = c.this.f4350a;
                return eVar.i.a(i);
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public final Object a(final float f) {
        return a(new b(26, false) { // from class: androidx.media2.player.c.14
            @Override // androidx.media2.player.c.b
            final void a() {
                e eVar = c.this.f4350a;
                eVar.f.a(f);
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public final Object a(final long j, final int i) {
        return a(new b(14, true) { // from class: androidx.media2.player.c.35
            @Override // androidx.media2.player.c.b
            final void a() {
                e eVar = c.this.f4350a;
                long j2 = j;
                int i2 = i;
                ak akVar = eVar.f;
                aj a2 = d.a(i2);
                akVar.q();
                h hVar = akVar.f2822c;
                aj ajVar = a2;
                if (a2 == null) {
                    ajVar = aj.e;
                }
                if (!hVar.l.equals(ajVar)) {
                    hVar.l = ajVar;
                    hVar.f3404d.f3992a.a(5, ajVar).sendToTarget();
                }
                eVar.f.a(j2);
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public final Object a(final Surface surface) {
        return a(new b(27, false) { // from class: androidx.media2.player.c.13
            @Override // androidx.media2.player.c.b
            final void a() {
                e eVar = c.this.f4350a;
                eVar.f.a(surface);
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public final Object a(final AudioAttributesCompat audioAttributesCompat) {
        return a(new b(16, false) { // from class: androidx.media2.player.c.6
            @Override // androidx.media2.player.c.b
            final void a() {
                e eVar = c.this.f4350a;
                AudioAttributesCompat audioAttributesCompat2 = audioAttributesCompat;
                eVar.k = true;
                eVar.f.a(d.a(audioAttributesCompat2));
                if (eVar.l != 0) {
                    Handler handler = eVar.g;
                    final DefaultAudioSink defaultAudioSink = eVar.h;
                    final int i = eVar.l;
                    handler.post(new Runnable() { // from class: androidx.media2.player.e.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DefaultAudioSink defaultAudioSink2 = defaultAudioSink;
                            int i2 = i;
                            if (defaultAudioSink2.f2843c != i2) {
                                defaultAudioSink2.f2843c = i2;
                                defaultAudioSink2.i();
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public final Object a(final MediaItem mediaItem) {
        return a(new b(19, false) { // from class: androidx.media2.player.c.24
            @Override // androidx.media2.player.c.b
            final void a() {
                e eVar = c.this.f4350a;
                MediaItem mediaItem2 = mediaItem;
                e.C0096e eVar2 = eVar.j;
                MediaItem mediaItem3 = (MediaItem) d.a(mediaItem2);
                eVar2.a();
                eVar2.f4438c.h();
                eVar2.a(Collections.singletonList(mediaItem3));
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public final Object a(final j jVar) {
        return a(new b(24, false) { // from class: androidx.media2.player.c.9
            @Override // androidx.media2.player.c.b
            final void a() {
                e eVar = c.this.f4350a;
                eVar.s = jVar;
                ak akVar = eVar.f;
                ad a2 = d.a(eVar.s);
                akVar.q();
                h hVar = akVar.f2822c;
                final ad adVar = a2;
                if (a2 == null) {
                    adVar = ad.f2809a;
                }
                if (!hVar.k.equals(adVar)) {
                    hVar.j++;
                    hVar.k = adVar;
                    hVar.f3404d.f3992a.a(4, adVar).sendToTarget();
                    hVar.a(new a.b(adVar) { // from class: androidx.media2.exoplayer.external.k

                        /* renamed from: a  reason: collision with root package name */
                        private final ad f3413a;

                        {
                            this.f3413a = adVar;
                        }

                        @Override // androidx.media2.exoplayer.external.a.b
                        public final void a(ae.b bVar) {
                            bVar.a();
                        }
                    });
                }
                if (eVar.b() == 1004) {
                    eVar.f4424a.a(eVar.j.b(), eVar.d());
                }
            }
        });
    }

    final void a() {
        if (this.f4353d == null && !this.f4351b.isEmpty()) {
            b removeFirst = this.f4351b.removeFirst();
            this.f4353d = removeFirst;
            this.f.post(removeFirst);
        }
    }

    @Override // androidx.media2.player.e.c
    public final void a(MediaItem mediaItem, int i) {
        b(mediaItem, 704, i);
    }

    @Override // androidx.media2.player.e.c
    public final void a(final MediaItem mediaItem, final int i, final int i2) {
        a(new a() { // from class: androidx.media2.player.c.22
            @Override // androidx.media2.player.c.a
            public final void notify(MediaPlayer2.c cVar) {
                cVar.a(mediaItem, i, i2);
            }
        });
    }

    @Override // androidx.media2.player.e.c
    public final void a(final MediaItem mediaItem, final SessionPlayer.TrackInfo trackInfo, final SubtitleData subtitleData) {
        a(new a() { // from class: androidx.media2.player.c.23
            @Override // androidx.media2.player.c.a
            public final void notify(MediaPlayer2.c cVar) {
                cVar.a(mediaItem, trackInfo, subtitleData);
            }
        });
    }

    @Override // androidx.media2.player.e.c
    public final void a(final MediaItem mediaItem, final i iVar) {
        a(new a() { // from class: androidx.media2.player.c.26
            @Override // androidx.media2.player.c.a
            public final void notify(MediaPlayer2.c cVar) {
                cVar.a(mediaItem, iVar);
            }
        });
    }

    @Override // androidx.media2.player.e.c
    public final void a(final MediaItem mediaItem, final m mVar) {
        a(new a() { // from class: androidx.media2.player.c.25
            @Override // androidx.media2.player.c.a
            public final void notify(MediaPlayer2.c cVar) {
                cVar.a(mediaItem, mVar);
            }
        });
    }

    final void a(final a aVar) {
        Pair<Executor, MediaPlayer2.c> pair;
        synchronized (this.e) {
            pair = this.g;
        }
        if (pair != null) {
            Executor executor = (Executor) pair.first;
            final MediaPlayer2.c cVar = (MediaPlayer2.c) pair.second;
            try {
                executor.execute(new Runnable() { // from class: androidx.media2.player.c.8
                    @Override // java.lang.Runnable
                    public final void run() {
                        aVar.notify(cVar);
                    }
                });
            } catch (RejectedExecutionException e) {
                Log.w("ExoPlayerMediaPlayer2", "The given executor is shutting down. Ignoring the player event.");
            }
        }
    }

    @Override // androidx.media2.player.e.c
    public final void a(final List<SessionPlayer.TrackInfo> list) {
        a(new a() { // from class: androidx.media2.player._$$Lambda$c$_dJ51sqCDyVnA3yqIkFCHyo63UQ
            @Override // androidx.media2.player.c.a
            public final void notify(MediaPlayer2.c cVar) {
                c.this.a(list, cVar);
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public final void a(Executor executor, MediaPlayer2.a aVar) {
        d.a(executor);
        d.a(aVar);
        synchronized (this.e) {
            this.h = Pair.create(executor, aVar);
        }
    }

    @Override // androidx.media2.player.MediaPlayer2
    public final void a(Executor executor, MediaPlayer2.c cVar) {
        d.a(executor);
        d.a(cVar);
        synchronized (this.e) {
            this.g = Pair.create(executor, cVar);
        }
    }

    @Override // androidx.media2.player.MediaPlayer2
    public final boolean a(Object obj) {
        boolean remove;
        synchronized (this.f4352c) {
            remove = this.f4351b.remove(obj);
        }
        return remove;
    }

    @Override // androidx.media2.player.MediaPlayer2
    public final MediaItem b() {
        return (MediaItem) a((Callable<Object>) new Callable<MediaItem>() { // from class: androidx.media2.player.c.31
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ MediaItem call() throws Exception {
                return c.this.f4350a.j.b();
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public final Object b(final int i) {
        return a(new b(15, false) { // from class: androidx.media2.player.c.18
            @Override // androidx.media2.player.c.b
            final void a() {
                e eVar = c.this.f4350a;
                int i2 = i;
                n nVar = eVar.i;
                d.a(nVar.f.get(i2) == null, "Video track selection is not supported");
                n.b bVar = nVar.e.get(i2);
                if (bVar != null) {
                    nVar.j = bVar;
                    TrackGroupArray trackGroupArray = ((d.a) androidx.core.e.d.a(nVar.f4483d.f3974a)).f3978d[1];
                    int i3 = trackGroupArray.get(bVar.f4487d).length;
                    int[] iArr = new int[i3];
                    for (int i4 = 0; i4 < i3; i4++) {
                        iArr[i4] = i4;
                    }
                    nVar.f4483d.a(nVar.f4483d.a().a(1, trackGroupArray, new DefaultTrackSelector.SelectionOverride(bVar.f4487d, iArr)).a());
                    return;
                }
                n.b bVar2 = nVar.g.get(i2);
                if (bVar2 != null) {
                    nVar.l = bVar2;
                    nVar.f4483d.a(nVar.f4483d.a().b(false).a(3, ((d.a) androidx.core.e.d.a(nVar.f4483d.f3974a)).f3978d[3], new DefaultTrackSelector.SelectionOverride(bVar2.f4487d, 0)).a());
                    return;
                }
                n.a aVar = nVar.h.get(i2);
                androidx.core.e.d.a(aVar != null);
                if (nVar.n != aVar.f4487d) {
                    nVar.f4482c.z();
                    nVar.n = aVar.f4487d;
                    nVar.f4483d.a(nVar.f4483d.a().a(2, ((d.a) androidx.core.e.d.a(nVar.f4483d.f3974a)).f3978d[2], new DefaultTrackSelector.SelectionOverride(nVar.n, 0)).a());
                }
                if (aVar.f4485b != -1) {
                    nVar.f4482c.a(aVar.f4484a, aVar.f4485b);
                }
                nVar.m = aVar;
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public final Object b(final MediaItem mediaItem) {
        return a(new b(22, false) { // from class: androidx.media2.player.c.5
            @Override // androidx.media2.player.c.b
            final void a() {
                e eVar = c.this.f4350a;
                MediaItem mediaItem2 = mediaItem;
                if (eVar.j.f4438c.i() == 0) {
                    if (mediaItem2 instanceof FileMediaItem) {
                        FileMediaItem fileMediaItem = (FileMediaItem) mediaItem2;
                        fileMediaItem.a();
                        fileMediaItem.b();
                    }
                    throw new IllegalStateException();
                }
                eVar.j.a(Collections.singletonList(mediaItem2));
            }
        });
    }

    @Override // androidx.media2.player.e.c
    public final void b(MediaItem mediaItem, int i) {
        b(mediaItem, EventTypeExtended.EVENT_TYPE_EXTENDED_ALL_HB_NETWORKS_PREPARED_VALUE, i);
    }

    @Override // androidx.media2.player.MediaPlayer2
    public final Object c() {
        return a(new b(6, true) { // from class: androidx.media2.player.c.32
            @Override // androidx.media2.player.c.b
            final void a() {
                e eVar = c.this.f4350a;
                androidx.core.e.d.b(!eVar.m);
                e.C0096e eVar2 = eVar.j;
                ak akVar = eVar2.f4437b;
                androidx.media2.exoplayer.external.source.h hVar = eVar2.f4438c;
                akVar.q();
                if (akVar.u != null) {
                    akVar.u.a(akVar.k);
                    androidx.media2.exoplayer.external.a.a aVar = akVar.k;
                    for (a.C0075a aVar2 : new ArrayList(aVar.f2783b.f2789a)) {
                        aVar.b(aVar2.f2788c, aVar2.f2786a);
                    }
                }
                akVar.u = hVar;
                hVar.a(akVar.f2823d, akVar.k);
                akVar.a(akVar.n(), akVar.l.a(akVar.n()));
                akVar.f2822c.a(hVar, true, true);
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public final Object c(final int i) {
        return a(new b(2, false) { // from class: androidx.media2.player.c.19
            @Override // androidx.media2.player.c.b
            final void a() {
                e eVar = c.this.f4350a;
                int i2 = i;
                n nVar = eVar.i;
                androidx.core.e.d.a(nVar.f.get(i2) == null, "Video track deselection is not supported");
                androidx.core.e.d.a(nVar.e.get(i2) == null, "Audio track deselection is not supported");
                if (nVar.g.get(i2) != null) {
                    nVar.l = null;
                    nVar.f4483d.a(nVar.f4483d.a().b(true));
                    return;
                }
                boolean z = false;
                if (nVar.m != null) {
                    z = false;
                    if (nVar.m.e.f2754a == i2) {
                        z = true;
                    }
                }
                androidx.core.e.d.a(z);
                nVar.f4482c.z();
                nVar.m = null;
            }
        });
    }

    @Override // androidx.media2.player.e.c
    public final void c(MediaItem mediaItem) {
        b(mediaItem, 100, 0);
        synchronized (this.f4352c) {
            b bVar = this.f4353d;
            if (bVar != null && bVar.f4420d == 6 && androidx.core.e.a.a(this.f4353d.f, mediaItem) && this.f4353d.e) {
                this.f4353d.a(0);
                this.f4353d = null;
                a();
            }
        }
    }

    @Override // androidx.media2.player.e.c
    public final void c(final MediaItem mediaItem, final int i) {
        synchronized (this.f4352c) {
            b bVar = this.f4353d;
            if (bVar != null && bVar.e) {
                this.f4353d.a(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
                this.f4353d = null;
                a();
            }
        }
        a(new a() { // from class: androidx.media2.player.c.27
            @Override // androidx.media2.player.c.a
            public final void notify(MediaPlayer2.c cVar) {
                cVar.a(mediaItem, i);
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public final Object d() {
        return a(new b(5, false) { // from class: androidx.media2.player.c.33
            @Override // androidx.media2.player.c.b
            final void a() {
                e eVar = c.this.f4350a;
                eVar.n = false;
                if (eVar.f.l() == 4) {
                    eVar.f.a(0L);
                }
                eVar.f.a(true);
            }
        });
    }

    @Override // androidx.media2.player.e.c
    public final void d(MediaItem mediaItem) {
        b(mediaItem, 701, 0);
    }

    @Override // androidx.media2.player.MediaPlayer2
    public final Object e() {
        return a(new b(4, false) { // from class: androidx.media2.player.c.34
            @Override // androidx.media2.player.c.b
            final void a() {
                e eVar = c.this.f4350a;
                eVar.n = false;
                eVar.f.a(false);
            }
        });
    }

    @Override // androidx.media2.player.e.c
    public final void e(MediaItem mediaItem) {
        b(mediaItem, 702, 0);
    }

    @Override // androidx.media2.player.MediaPlayer2
    public final long f() {
        return ((Long) a((Callable<Object>) new Callable<Long>() { // from class: androidx.media2.player.c.1
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Long call() throws Exception {
                return Long.valueOf(c.this.f4350a.a());
            }
        })).longValue();
    }

    @Override // androidx.media2.player.e.c
    public final void f(MediaItem mediaItem) {
        b(mediaItem, 3, 0);
    }

    @Override // androidx.media2.player.MediaPlayer2
    public final long g() {
        return ((Long) a((Callable<Object>) new Callable<Long>() { // from class: androidx.media2.player.c.2
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v8, types: [long] */
            /* JADX WARN: Type inference failed for: r10v0 */
            /* JADX WARN: Type inference failed for: r10v2 */
            /* JADX WARN: Unknown variable types count: 1 */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final /* synthetic */ java.lang.Long call() throws java.lang.Exception {
                /*
                    r5 = this;
                    r0 = r5
                    androidx.media2.player.c r0 = androidx.media2.player.c.this
                    androidx.media2.player.e r0 = r0.f4350a
                    r6 = r0
                    r0 = r6
                    int r0 = r0.b()
                    r1 = 1001(0x3e9, float:1.403E-42)
                    if (r0 == r1) goto L_0x0017
                    r0 = 1
                    r7 = r0
                    goto L_0x0019
                L_0x0017:
                    r0 = 0
                    r7 = r0
                L_0x0019:
                    r0 = r7
                    androidx.core.e.d.b(r0)
                    r0 = r6
                    androidx.media2.exoplayer.external.ak r0 = r0.f
                    long r0 = r0.d()
                    r8 = r0
                    r0 = r8
                    r10 = r0
                    r0 = r8
                    r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
                    int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                    if (r0 != 0) goto L_0x0035
                    r0 = -1
                    r10 = r0
                L_0x0035:
                    r0 = r10
                    java.lang.Long r0 = java.lang.Long.valueOf(r0)
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.media2.player.c.AnonymousClass2.call():java.lang.Object");
            }
        })).longValue();
    }

    @Override // androidx.media2.player.e.c
    public final void g(MediaItem mediaItem) {
        b(mediaItem, 2, 0);
    }

    @Override // androidx.media2.player.MediaPlayer2
    public final long h() {
        return ((Long) a((Callable<Object>) new Callable<Long>() { // from class: androidx.media2.player.c.3
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Long call() throws Exception {
                e eVar = c.this.f4350a;
                androidx.core.e.d.b(eVar.b() != 1001);
                return Long.valueOf(eVar.f.f());
            }
        })).longValue();
    }

    @Override // androidx.media2.player.e.c
    public final void h(MediaItem mediaItem) {
        b(mediaItem, 5, 0);
    }

    @Override // androidx.media2.player.MediaPlayer2
    public final Object i() {
        return a(new b(29, false) { // from class: androidx.media2.player.c.4
            @Override // androidx.media2.player.c.b
            final void a() {
                e.C0096e eVar = c.this.f4350a.j;
                eVar.a(eVar.f4439d.removeFirst());
                eVar.f4438c.g();
            }
        });
    }

    @Override // androidx.media2.player.e.c
    public final void i(MediaItem mediaItem) {
        b(mediaItem, 7, 0);
    }

    @Override // androidx.media2.player.MediaPlayer2
    public final AudioAttributesCompat j() {
        return (AudioAttributesCompat) a((Callable<Object>) new Callable<AudioAttributesCompat>() { // from class: androidx.media2.player.c.7
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ AudioAttributesCompat call() throws Exception {
                e eVar = c.this.f4350a;
                if (eVar.k) {
                    return d.a(eVar.f.s);
                }
                return null;
            }
        });
    }

    @Override // androidx.media2.player.e.c
    public final void j(MediaItem mediaItem) {
        b(mediaItem, 6, 0);
    }

    @Override // androidx.media2.player.MediaPlayer2
    public final j k() {
        return (j) a((Callable<Object>) new Callable<j>() { // from class: androidx.media2.player.c.10
            @Override // java.util.concurrent.Callable
            public final /* bridge */ /* synthetic */ j call() throws Exception {
                return c.this.f4350a.s;
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public final int l() {
        return ((Integer) a((Callable<Object>) new Callable<Integer>() { // from class: androidx.media2.player.c.11
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Integer call() throws Exception {
                return Integer.valueOf(c.this.f4350a.q);
            }
        })).intValue();
    }

    @Override // androidx.media2.player.MediaPlayer2
    public final int m() {
        return ((Integer) a((Callable<Object>) new Callable<Integer>() { // from class: androidx.media2.player.c.12
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Integer call() throws Exception {
                return Integer.valueOf(c.this.f4350a.r);
            }
        })).intValue();
    }

    @Override // androidx.media2.player.MediaPlayer2
    public final float n() {
        return ((Float) a((Callable<Object>) new Callable<Float>() { // from class: androidx.media2.player.c.15
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Float call() throws Exception {
                return Float.valueOf(c.this.f4350a.f.t);
            }
        })).floatValue();
    }

    @Override // androidx.media2.player.MediaPlayer2
    public final List<SessionPlayer.TrackInfo> o() {
        return (List) a((Callable<Object>) new Callable<List<SessionPlayer.TrackInfo>>() { // from class: androidx.media2.player.c.16
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ List<SessionPlayer.TrackInfo> call() throws Exception {
                return c.this.f4350a.i.b();
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public final void p() {
        b bVar;
        synchronized (this.f4352c) {
            this.f4351b.clear();
        }
        synchronized (this.f4352c) {
            bVar = this.f4353d;
        }
        if (bVar != null) {
            synchronized (bVar) {
                while (!bVar.g) {
                    try {
                        bVar.wait();
                    } catch (InterruptedException e) {
                    }
                }
            }
        }
        a((Callable) new Callable<Void>() { // from class: androidx.media2.player.c.20
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Void call() throws Exception {
                c.this.f4350a.e();
                return null;
            }
        });
    }

    @Override // androidx.media2.player.MediaPlayer2
    public final void q() {
        synchronized (this.e) {
            this.g = null;
        }
        synchronized (this.e) {
            HandlerThread handlerThread = this.i;
            if (handlerThread != null) {
                this.i = null;
                final androidx.c.a.b a2 = androidx.c.a.b.a();
                this.f.post(new Runnable() { // from class: androidx.media2.player.c.21
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            e eVar = c.this.f4350a;
                            if (eVar.f != null) {
                                eVar.f4426c.removeCallbacks(eVar.e);
                                eVar.f.p();
                                eVar.f = null;
                                eVar.j.a();
                                eVar.k = false;
                            }
                            a2.a((androidx.c.a.b) null);
                        } catch (Throwable th) {
                            a2.a(th);
                        }
                    }
                });
                a(a2);
                handlerThread.quit();
            }
        }
    }

    @Override // androidx.media2.player.e.c
    public final void r() {
        synchronized (this.f4352c) {
            b bVar = this.f4353d;
            if (bVar != null && bVar.f4420d == 14 && this.f4353d.e) {
                this.f4353d.a(0);
                this.f4353d = null;
                a();
            }
        }
    }
}

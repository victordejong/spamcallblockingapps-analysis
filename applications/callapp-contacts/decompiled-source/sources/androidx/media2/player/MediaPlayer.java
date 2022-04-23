package androidx.media2.player;

import android.content.Context;
import android.media.MediaFormat;
import android.util.Log;
import android.view.Surface;
import androidx.media.AudioAttributesCompat;
import androidx.media2.common.FileMediaItem;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.common.VideoSize;
import androidx.media2.player.MediaPlayer;
import androidx.media2.player.MediaPlayer2;
import androidx.media2.player.j;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.bidmachine.protobuf.EventTypeExtended;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer.class */
public final class MediaPlayer extends SessionPlayer {

    /* renamed from: a  reason: collision with root package name */
    static final androidx.media2.player.j f4262a = new j.a().a(1.0f).b().a().c();

    /* renamed from: b  reason: collision with root package name */
    static androidx.b.a<Integer, Integer> f4263b;

    /* renamed from: c  reason: collision with root package name */
    static androidx.b.a<Integer, Integer> f4264c;

    /* renamed from: d  reason: collision with root package name */
    static androidx.b.a<Integer, Integer> f4265d;
    static androidx.b.a<Integer, Integer> e;
    static androidx.b.a<Integer, Integer> f;
    MediaPlayer2 g;
    ExecutorService h;
    public final androidx.media2.player.a k;
    MediaMetadata o;
    int p;
    int q;
    MediaItem s;
    MediaItem t;
    private boolean x;
    private boolean y;
    final ArrayDeque<g> i = new ArrayDeque<>();
    final ArrayDeque<h<? extends SessionPlayer.b>> j = new ArrayDeque<>();
    private final Object u = new Object();
    private Map<MediaItem, Integer> w = new HashMap();
    final Object l = new Object();
    c m = new c();
    ArrayList<MediaItem> n = new ArrayList<>();
    private int v = 0;
    int r = -2;

    /* renamed from: androidx.media2.player.MediaPlayer$33  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$33.class */
    final class AnonymousClass33 extends h<SessionPlayer.b> {
        final /* synthetic */ MediaItem f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass33(Executor executor, MediaItem mediaItem) {
            super(executor);
            this.f = mediaItem;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(SessionPlayer.a aVar) {
            aVar.onPlaylistChanged(MediaPlayer.this, null, null);
        }

        @Override // androidx.media2.player.MediaPlayer.h
        final List<androidx.c.a.b<SessionPlayer.b>> a() {
            ArrayList arrayList = new ArrayList();
            synchronized (MediaPlayer.this.l) {
                MediaPlayer.this.m.a();
                MediaPlayer.this.o = null;
                MediaPlayer.this.n.clear();
                MediaPlayer.this.s = this.f;
                MediaPlayer.this.t = null;
                MediaPlayer.this.r = -1;
            }
            MediaPlayer.this.a(new j() { // from class: androidx.media2.player._$$Lambda$MediaPlayer$33$dH_Su3DtYYch4vWqp22TEBZNwf8
                @Override // androidx.media2.player.MediaPlayer.j
                public final void callCallback(SessionPlayer.a aVar) {
                    MediaPlayer.AnonymousClass33.this.a(aVar);
                }
            });
            arrayList.addAll(MediaPlayer.this.a(this.f, (MediaItem) null));
            return arrayList;
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$34  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$34.class */
    final class AnonymousClass34 extends h<SessionPlayer.b> {
        final /* synthetic */ MediaMetadata f;
        final /* synthetic */ List g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass34(Executor executor, MediaMetadata mediaMetadata, List list) {
            super(executor);
            this.f = mediaMetadata;
            this.g = list;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(List list, MediaMetadata mediaMetadata, SessionPlayer.a aVar) {
            aVar.onPlaylistChanged(MediaPlayer.this, list, mediaMetadata);
        }

        @Override // androidx.media2.player.MediaPlayer.h
        final List<androidx.c.a.b<SessionPlayer.b>> a() {
            MediaItem mediaItem;
            MediaItem mediaItem2;
            synchronized (MediaPlayer.this.l) {
                MediaPlayer.this.o = this.f;
                c cVar = MediaPlayer.this.m;
                List<MediaItem> list = this.g;
                for (MediaItem mediaItem3 : list) {
                    if (mediaItem3 instanceof FileMediaItem) {
                        ((FileMediaItem) mediaItem3).a();
                    }
                }
                cVar.a();
                cVar.f4306a.addAll(list);
                MediaPlayer.this.z();
                MediaPlayer.this.r = 0;
                MediaPlayer.this.A();
                mediaItem = MediaPlayer.this.s;
                mediaItem2 = MediaPlayer.this.t;
            }
            MediaPlayer mediaPlayer = MediaPlayer.this;
            final List list2 = this.g;
            final MediaMetadata mediaMetadata = this.f;
            mediaPlayer.a(new j() { // from class: androidx.media2.player._$$Lambda$MediaPlayer$34$Bdj3KYNYbh1MQtX_AUHHvjO8Bxg
                @Override // androidx.media2.player.MediaPlayer.j
                public final void callCallback(SessionPlayer.a aVar) {
                    MediaPlayer.AnonymousClass34.this.a(list2, mediaMetadata, aVar);
                }
            });
            return mediaItem != null ? MediaPlayer.this.a(mediaItem, mediaItem2) : MediaPlayer.this.c(0, null);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$NoDrmSchemeException.class */
    public static class NoDrmSchemeException extends Exception {
        public NoDrmSchemeException(String str) {
            super(str);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$TrackInfo.class */
    public static final class TrackInfo extends SessionPlayer.TrackInfo {
        TrackInfo(SessionPlayer.TrackInfo trackInfo) {
            super(trackInfo.f2754a, trackInfo.f2755b, trackInfo.a(), trackInfo.f2755b == 1 ? false : true);
        }

        @Override // androidx.media2.common.SessionPlayer.TrackInfo
        public final MediaFormat a() {
            if (this.f2755b == 4) {
                return super.a();
            }
            return null;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final MediaPlayer2.b f4305a;

        a(MediaPlayer2.b bVar) {
            this.f4305a = bVar;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$b.class */
    public static final class b extends SessionPlayer.b {
        public b(int i, MediaItem mediaItem) {
            super(i, mediaItem);
        }

        @Override // androidx.media2.common.SessionPlayer.b, androidx.media2.common.a
        public final int a() {
            return super.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        ArrayList<MediaItem> f4306a = new ArrayList<>();

        c() {
        }

        final MediaItem a(int i) {
            MediaItem remove = this.f4306a.remove(i);
            if (remove instanceof FileMediaItem) {
                ((FileMediaItem) remove).b();
            }
            return remove;
        }

        final void a() {
            Iterator<MediaItem> it2 = this.f4306a.iterator();
            while (it2.hasNext()) {
                MediaItem next = it2.next();
                if (next instanceof FileMediaItem) {
                    ((FileMediaItem) next).b();
                }
            }
            this.f4306a.clear();
        }

        final void a(int i, MediaItem mediaItem) {
            if (mediaItem instanceof FileMediaItem) {
                ((FileMediaItem) mediaItem).a();
            }
            this.f4306a.add(i, mediaItem);
        }

        final boolean a(Object obj) {
            return this.f4306a.contains(obj);
        }

        final int b(Object obj) {
            return this.f4306a.indexOf(obj);
        }

        final MediaItem b(int i) {
            return this.f4306a.get(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$d.class */
    public interface d {
        void a(i iVar);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$e.class */
    final class e extends MediaPlayer2.c {
        e() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(List list, SessionPlayer.a aVar) {
            aVar.onTracksChanged(MediaPlayer.this, list);
        }

        @Override // androidx.media2.player.MediaPlayer2.c
        public final void a(final MediaItem mediaItem, final int i) {
            MediaPlayer.this.f(3);
            MediaPlayer.this.a(mediaItem, 0);
            MediaPlayer.this.a(new d() { // from class: androidx.media2.player.MediaPlayer.e.3
                @Override // androidx.media2.player.MediaPlayer.d
                public final void a(i iVar) {
                    iVar.onError(MediaPlayer.this, mediaItem, i, r7);
                }
            });
        }

        @Override // androidx.media2.player.MediaPlayer2.c
        public final void a(MediaItem mediaItem, int i, int i2) {
            MediaItem r = MediaPlayer.this.r();
            if (r != null && r == mediaItem) {
                final VideoSize videoSize = new VideoSize(i, i2);
                MediaPlayer.this.a(new j() { // from class: androidx.media2.player.MediaPlayer.e.1
                    @Override // androidx.media2.player.MediaPlayer.j
                    public final void callCallback(SessionPlayer.a aVar) {
                        aVar.onVideoSizeChanged(MediaPlayer.this, videoSize);
                    }
                });
            }
        }

        @Override // androidx.media2.player.MediaPlayer2.c
        public final void a(final MediaItem mediaItem, final SessionPlayer.TrackInfo trackInfo, final SubtitleData subtitleData) {
            MediaPlayer.this.a(new j() { // from class: androidx.media2.player.MediaPlayer.e.9
                @Override // androidx.media2.player.MediaPlayer.j
                public final void callCallback(SessionPlayer.a aVar) {
                    aVar.onSubtitleData(MediaPlayer.this, mediaItem, trackInfo, subtitleData);
                }
            });
        }

        @Override // androidx.media2.player.MediaPlayer2.c
        public final void a(final MediaItem mediaItem, final androidx.media2.player.i iVar) {
            MediaPlayer.this.a(new d() { // from class: androidx.media2.player.MediaPlayer.e.8
                @Override // androidx.media2.player.MediaPlayer.d
                public final void a(i iVar2) {
                    iVar2.onMediaTimeDiscontinuity(MediaPlayer.this, mediaItem, iVar);
                }
            });
        }

        @Override // androidx.media2.player.MediaPlayer2.c
        public final void a(final MediaItem mediaItem, final m mVar) {
            MediaPlayer.this.a(new d() { // from class: androidx.media2.player.MediaPlayer.e.2
                @Override // androidx.media2.player.MediaPlayer.d
                public final void a(i iVar) {
                    iVar.onTimedMetaDataAvailable(MediaPlayer.this, mediaItem, mVar);
                }
            });
        }

        @Override // androidx.media2.player.MediaPlayer2.c
        public final void a(final List<SessionPlayer.TrackInfo> list) {
            MediaPlayer.this.a(new j() { // from class: androidx.media2.player._$$Lambda$MediaPlayer$e$xYyo39nrW1hJ_7VlmsMJPeFoFz4
                @Override // androidx.media2.player.MediaPlayer.j
                public final void callCallback(SessionPlayer.a aVar) {
                    MediaPlayer.e.this.a(list, aVar);
                }
            });
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0026, code lost:
            if (r10 != 702) goto L_0x0149;
         */
        @Override // androidx.media2.player.MediaPlayer2.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void b(final androidx.media2.common.MediaItem r9, int r10, final int r11) {
            /*
                Method dump skipped, instructions count: 384
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.player.MediaPlayer.e.b(androidx.media2.common.MediaItem, int, int):void");
        }

        @Override // androidx.media2.player.MediaPlayer2.c
        public final void c(final MediaItem mediaItem, int i, int i2) {
            final g pollFirst;
            final MediaPlayer mediaPlayer = MediaPlayer.this;
            synchronized (mediaPlayer.i) {
                pollFirst = mediaPlayer.i.pollFirst();
            }
            if (pollFirst == null) {
                StringBuilder sb = new StringBuilder("No matching call type for ");
                sb.append(i);
                sb.append(". Possibly because of reset().");
                return;
            }
            if (i != pollFirst.f4332a) {
                Log.w("MediaPlayer", "Call type does not match. expected:" + pollFirst.f4332a + " actual:" + i);
                i2 = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            }
            if (i2 == 0) {
                if (i != 2) {
                    if (i != 19) {
                        if (i == 24) {
                            final float floatValue = mediaPlayer.g.k().c().floatValue();
                            mediaPlayer.a(new j() { // from class: androidx.media2.player.MediaPlayer.25
                                @Override // androidx.media2.player.MediaPlayer.j
                                public final void callCallback(SessionPlayer.a aVar) {
                                    aVar.onPlaybackSpeedChanged(MediaPlayer.this, floatValue);
                                }
                            });
                        } else if (i != 29) {
                            if (i != 4) {
                                if (i != 5) {
                                    if (i != 6) {
                                        switch (i) {
                                            case 14:
                                                final long e = mediaPlayer.e();
                                                mediaPlayer.a(new j() { // from class: androidx.media2.player.MediaPlayer.23
                                                    @Override // androidx.media2.player.MediaPlayer.j
                                                    public final void callCallback(SessionPlayer.a aVar) {
                                                        aVar.onSeekCompleted(MediaPlayer.this, e);
                                                    }
                                                });
                                                break;
                                            case 15:
                                                mediaPlayer.a(new j() { // from class: androidx.media2.player.MediaPlayer.27
                                                    @Override // androidx.media2.player.MediaPlayer.j
                                                    public final void callCallback(SessionPlayer.a aVar) {
                                                        aVar.onTrackSelected(MediaPlayer.this, pollFirst.f4334c);
                                                    }
                                                });
                                                break;
                                            case 16:
                                                final AudioAttributesCompat j = mediaPlayer.g.j();
                                                mediaPlayer.a(new j() { // from class: androidx.media2.player.MediaPlayer.26
                                                    @Override // androidx.media2.player.MediaPlayer.j
                                                    public final void callCallback(SessionPlayer.a aVar) {
                                                        aVar.onAudioAttributesChanged(MediaPlayer.this, j);
                                                    }
                                                });
                                                break;
                                        }
                                    }
                                } else {
                                    mediaPlayer.f(2);
                                }
                            }
                            mediaPlayer.f(1);
                        }
                    }
                    mediaPlayer.a(new j() { // from class: androidx.media2.player.MediaPlayer.24
                        @Override // androidx.media2.player.MediaPlayer.j
                        public final void callCallback(SessionPlayer.a aVar) {
                            aVar.onCurrentMediaItemChanged(MediaPlayer.this, mediaItem);
                        }
                    });
                } else {
                    mediaPlayer.a(new j() { // from class: androidx.media2.player.MediaPlayer.29
                        @Override // androidx.media2.player.MediaPlayer.j
                        public final void callCallback(SessionPlayer.a aVar) {
                            aVar.onTrackDeselected(MediaPlayer.this, pollFirst.f4334c);
                        }
                    });
                }
            }
            if (i != 1001) {
                pollFirst.a(new SessionPlayer.b(Integer.valueOf(MediaPlayer.f4263b.containsKey(Integer.valueOf(i2)) ? MediaPlayer.f4263b.get(Integer.valueOf(i2)).intValue() : -1).intValue(), mediaItem));
            } else {
                pollFirst.a(new b(Integer.valueOf(MediaPlayer.f.containsKey(Integer.valueOf(i2)) ? MediaPlayer.f.get(Integer.valueOf(i2)).intValue() : -1003).intValue(), mediaItem));
            }
            mediaPlayer.B();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$f.class */
    final class f extends MediaPlayer2.a {
        f() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$g.class */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        final int f4332a;

        /* renamed from: b  reason: collision with root package name */
        final androidx.c.a.b<? extends SessionPlayer.b> f4333b;

        /* renamed from: c  reason: collision with root package name */
        final SessionPlayer.TrackInfo f4334c;

        g(int i, androidx.c.a.b<? extends SessionPlayer.b> bVar) {
            this(i, bVar, null);
        }

        g(int i, androidx.c.a.b<? extends SessionPlayer.b> bVar, SessionPlayer.TrackInfo trackInfo) {
            this.f4332a = i;
            this.f4333b = bVar;
            this.f4334c = trackInfo;
        }

        final <V extends SessionPlayer.b> void a(V v) {
            this.f4333b.a((androidx.c.a.b<? extends SessionPlayer.b>) v);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$h.class */
    public static abstract class h<V extends SessionPlayer.b> extends androidx.c.a.a<V> {
        final boolean i;
        boolean j;
        List<androidx.c.a.b<V>> k;

        h(Executor executor) {
            this(executor, false);
        }

        h(Executor executor, boolean z) {
            this.j = false;
            this.i = z;
            a(new Runnable() { // from class: androidx.media2.player.MediaPlayer.h.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (h.this.isCancelled() && h.this.j) {
                        h.this.c();
                    }
                }
            }, executor);
        }

        private void d() {
            V v = null;
            for (int i = 0; i < this.k.size(); i++) {
                androidx.c.a.b<V> bVar = this.k.get(i);
                if (bVar.isDone() || bVar.isCancelled()) {
                    try {
                        v = bVar.get();
                        int a2 = v.a();
                        if (a2 != 0 && a2 != 1) {
                            c();
                            super.a((h<V>) v);
                            return;
                        }
                    } catch (Exception e) {
                        c();
                        a((Throwable) e);
                        return;
                    }
                } else {
                    return;
                }
            }
            try {
                super.a((h<V>) v);
            } catch (Exception e2) {
                a((Throwable) e2);
            }
        }

        abstract List<androidx.c.a.b<V>> a();

        @Override // androidx.c.a.a
        public final /* bridge */ /* synthetic */ boolean a(Object obj) {
            return super.a((h<V>) ((SessionPlayer.b) obj));
        }

        @Override // androidx.c.a.a
        public final boolean a(Throwable th) {
            return super.a(th);
        }

        public final boolean b() {
            if (!this.j && !isCancelled()) {
                this.j = true;
                this.k = a();
            }
            if (!isCancelled() && !isDone()) {
                d();
            }
            return isCancelled() || isDone();
        }

        final void c() {
            List<androidx.c.a.b<V>> list = this.k;
            if (list != null) {
                for (androidx.c.a.b<V> bVar : list) {
                    if (!bVar.isCancelled() && !bVar.isDone()) {
                        bVar.cancel(true);
                    }
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$i.class */
    public static abstract class i extends SessionPlayer.a {
        public void onDrmInfo(MediaPlayer mediaPlayer, MediaItem mediaItem, a aVar) {
        }

        public void onError(MediaPlayer mediaPlayer, MediaItem mediaItem, int i, int i2) {
        }

        public void onInfo(MediaPlayer mediaPlayer, MediaItem mediaItem, int i, int i2) {
        }

        public void onMediaTimeDiscontinuity(MediaPlayer mediaPlayer, MediaItem mediaItem, androidx.media2.player.i iVar) {
        }

        public void onTimedMetaDataAvailable(MediaPlayer mediaPlayer, MediaItem mediaItem, m mVar) {
        }

        @Override // androidx.media2.common.SessionPlayer.a
        public void onVideoSizeChanged(SessionPlayer sessionPlayer, VideoSize videoSize) {
            if (sessionPlayer instanceof MediaPlayer) {
                onVideoSizeChanged((MediaPlayer) sessionPlayer, sessionPlayer.r(), new VideoSize(videoSize));
                return;
            }
            throw new IllegalArgumentException("player must be MediaPlayer");
        }

        @Deprecated
        public void onVideoSizeChanged(MediaPlayer mediaPlayer, MediaItem mediaItem, VideoSize videoSize) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$j.class */
    public interface j {
        void callCallback(SessionPlayer.a aVar);
    }

    static {
        androidx.b.a<Integer, Integer> aVar = new androidx.b.a<>();
        f4263b = aVar;
        aVar.put(0, 0);
        f4263b.put(Integer.valueOf((int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW), -1);
        f4263b.put(1, -2);
        f4263b.put(2, -3);
        f4263b.put(3, -4);
        f4263b.put(4, -5);
        f4263b.put(5, 1);
        androidx.b.a<Integer, Integer> aVar2 = new androidx.b.a<>();
        f4264c = aVar2;
        aVar2.put(1, 1);
        f4264c.put(-1004, -1004);
        f4264c.put(-1007, -1007);
        f4264c.put(-1010, -1010);
        f4264c.put(-110, -110);
        androidx.b.a<Integer, Integer> aVar3 = new androidx.b.a<>();
        f4265d = aVar3;
        aVar3.put(3, 3);
        f4265d.put(700, 700);
        f4265d.put(704, 704);
        f4265d.put(800, 800);
        androidx.b.a<Integer, Integer> aVar4 = f4265d;
        Integer valueOf = Integer.valueOf((int) EventTypeExtended.EVENT_TYPE_EXTENDED_BURL_VALUE);
        aVar4.put(valueOf, valueOf);
        androidx.b.a<Integer, Integer> aVar5 = f4265d;
        Integer valueOf2 = Integer.valueOf((int) EventTypeExtended.EVENT_TYPE_EXTENDED_NURL_VALUE);
        aVar5.put(valueOf2, valueOf2);
        f4265d.put(Integer.valueOf((int) EventTypeExtended.EVENT_TYPE_EXTENDED_CUSTOM_VALUE), Integer.valueOf((int) EventTypeExtended.EVENT_TYPE_EXTENDED_CUSTOM_VALUE));
        f4265d.put(Integer.valueOf((int) EventTypeExtended.EVENT_TYPE_EXTENDED_CUSTOM_LOSS_VALUE), Integer.valueOf((int) EventTypeExtended.EVENT_TYPE_EXTENDED_CUSTOM_LOSS_VALUE));
        androidx.b.a<Integer, Integer> aVar6 = new androidx.b.a<>();
        e = aVar6;
        aVar6.put(0, 0);
        e.put(1, 1);
        e.put(2, 2);
        e.put(3, 3);
        androidx.b.a<Integer, Integer> aVar7 = new androidx.b.a<>();
        f = aVar7;
        aVar7.put(0, 0);
        f.put(1, -1001);
        f.put(2, -1003);
        f.put(3, -1003);
        f.put(4, -1004);
        f.put(5, -1005);
    }

    public MediaPlayer(Context context) {
        Objects.requireNonNull(context, "context shouldn't be null");
        this.g = new androidx.media2.player.c(context);
        ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(1);
        this.h = newFixedThreadPool;
        this.g.a(newFixedThreadPool, new e());
        this.g.a(this.h, new f());
        this.k = new androidx.media2.player.a(context, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: C */
    public VideoSize j() {
        synchronized (this.u) {
            if (!this.x) {
                return new VideoSize(this.g.l(), this.g.m());
            }
            return new VideoSize(0, 0);
        }
    }

    private static androidx.c.a.b<SessionPlayer.b> D() {
        androidx.c.a.b<SessionPlayer.b> a2 = androidx.c.a.b.a();
        a2.a((androidx.c.a.b<SessionPlayer.b>) new SessionPlayer.b(-2, null));
        return a2;
    }

    private void a(final g gVar, final androidx.c.a.b<? extends SessionPlayer.b> bVar, final Object obj) {
        bVar.a(new Runnable() { // from class: androidx.media2.player.MediaPlayer.1
            @Override // java.lang.Runnable
            public final void run() {
                if (bVar.isCancelled()) {
                    synchronized (MediaPlayer.this.i) {
                        if (MediaPlayer.this.g.a(obj)) {
                            MediaPlayer.this.i.remove(gVar);
                        }
                    }
                }
            }
        }, this.h);
    }

    static int b(int i2, int i3) {
        if (i2 < 0) {
            return 0;
        }
        return i2 > i3 ? i3 : i2;
    }

    private androidx.c.a.b<SessionPlayer.b> c(MediaItem mediaItem) {
        androidx.c.a.b<SessionPlayer.b> a2 = androidx.c.a.b.a();
        synchronized (this.i) {
            a(19, a2, this.g.a(mediaItem));
        }
        synchronized (this.l) {
            this.y = true;
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public TrackInfo e(int i2) {
        synchronized (this.u) {
            if (this.x) {
                return null;
            }
            SessionPlayer.TrackInfo a2 = this.g.a(i2);
            if (a2 == null) {
                return null;
            }
            return new TrackInfo(a2);
        }
    }

    final androidx.core.e.b<MediaItem, MediaItem> A() {
        MediaItem mediaItem;
        MediaItem mediaItem2;
        int i2 = this.r;
        if (i2 >= 0) {
            if (!androidx.core.e.a.a(this.s, this.n.get(i2))) {
                mediaItem = this.n.get(this.r);
                this.s = mediaItem;
            } else {
                mediaItem = null;
            }
            int i3 = this.r + 1;
            int i4 = i3;
            if (i3 >= this.n.size()) {
                int i5 = this.p;
                i4 = (i5 == 2 || i5 == 3) ? 0 : -1;
            }
            if (i4 == -1) {
                this.t = null;
            } else if (!androidx.core.e.a.a(this.t, this.n.get(i4))) {
                mediaItem2 = this.n.get(i4);
                this.t = mediaItem2;
                if (mediaItem == null || mediaItem2 != null) {
                    return new androidx.core.e.b<>(mediaItem, mediaItem2);
                }
                return null;
            }
            mediaItem2 = null;
            if (mediaItem == null) {
            }
            return new androidx.core.e.b<>(mediaItem, mediaItem2);
        } else if (this.s == null && this.t == null) {
            return null;
        } else {
            this.s = null;
            this.t = null;
            return new androidx.core.e.b<>(null, null);
        }
    }

    final void B() {
        synchronized (this.j) {
            Iterator<h<? extends SessionPlayer.b>> it2 = this.j.iterator();
            while (it2.hasNext()) {
                h<? extends SessionPlayer.b> next = it2.next();
                if (!next.isCancelled() && !next.b()) {
                    break;
                }
                this.j.removeFirst();
            }
            while (it2.hasNext()) {
                h<? extends SessionPlayer.b> next2 = it2.next();
                if (!next2.i) {
                    break;
                }
                next2.b();
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public final com.google.common.util.concurrent.a<SessionPlayer.b> a() {
        synchronized (this.u) {
            if (this.x) {
                return D();
            }
            h<SessionPlayer.b> hVar = new h<SessionPlayer.b>(this.h) { // from class: androidx.media2.player.MediaPlayer.11
                @Override // androidx.media2.player.MediaPlayer.h
                final List<androidx.c.a.b<SessionPlayer.b>> a() {
                    androidx.c.a.b<SessionPlayer.b> bVar;
                    ArrayList arrayList = new ArrayList();
                    if (MediaPlayer.this.k.f4336a.a()) {
                        if (MediaPlayer.this.g.j() == null) {
                            arrayList.add(MediaPlayer.this.c(BitmapDescriptorFactory.HUE_RED));
                        }
                        bVar = new androidx.c.a.b<>();
                        synchronized (MediaPlayer.this.i) {
                            MediaPlayer.this.a(5, bVar, MediaPlayer.this.g.d());
                        }
                    } else {
                        bVar = MediaPlayer.this.b(-1, (MediaItem) null);
                    }
                    arrayList.add(bVar);
                    return arrayList;
                }
            };
            a(hVar);
            return hVar;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public final com.google.common.util.concurrent.a<SessionPlayer.b> a(final float f2) {
        synchronized (this.u) {
            if (this.x) {
                return D();
            }
            h<SessionPlayer.b> hVar = new h<SessionPlayer.b>(this.h) { // from class: androidx.media2.player.MediaPlayer.31
                @Override // androidx.media2.player.MediaPlayer.h
                final List<androidx.c.a.b<SessionPlayer.b>> a() {
                    if (f2 <= BitmapDescriptorFactory.HUE_RED) {
                        return MediaPlayer.this.c(-3, null);
                    }
                    ArrayList arrayList = new ArrayList();
                    androidx.c.a.b<? extends SessionPlayer.b> bVar = new androidx.c.a.b<>();
                    synchronized (MediaPlayer.this.i) {
                        MediaPlayer.this.a(24, bVar, MediaPlayer.this.g.a(new j.a(MediaPlayer.this.g.k()).a(f2).c()));
                    }
                    arrayList.add(bVar);
                    return arrayList;
                }
            };
            a(hVar);
            return hVar;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public final com.google.common.util.concurrent.a<SessionPlayer.b> a(final int i2) {
        if (i2 >= 0) {
            synchronized (this.u) {
                if (this.x) {
                    return D();
                }
                h<SessionPlayer.b> hVar = new h<SessionPlayer.b>(this.h) { // from class: androidx.media2.player.MediaPlayer.3
                    @Override // androidx.media2.player.MediaPlayer.h
                    final List<androidx.c.a.b<SessionPlayer.b>> a() {
                        synchronized (MediaPlayer.this.l) {
                            if (i2 >= MediaPlayer.this.m.f4306a.size()) {
                                return MediaPlayer.this.c(-3, null);
                            }
                            int indexOf = MediaPlayer.this.n.indexOf(MediaPlayer.this.m.a(i2));
                            MediaPlayer.this.n.remove(indexOf);
                            if (indexOf < MediaPlayer.this.r) {
                                MediaPlayer.this.r--;
                            }
                            androidx.core.e.b<MediaItem, MediaItem> A = MediaPlayer.this.A();
                            MediaItem mediaItem = MediaPlayer.this.s;
                            MediaItem mediaItem2 = MediaPlayer.this.t;
                            final List<MediaItem> n = MediaPlayer.this.n();
                            final MediaMetadata o = MediaPlayer.this.o();
                            MediaPlayer.this.a(new j() { // from class: androidx.media2.player.MediaPlayer.3.1
                                @Override // androidx.media2.player.MediaPlayer.j
                                public final void callCallback(SessionPlayer.a aVar) {
                                    aVar.onPlaylistChanged(MediaPlayer.this, n, o);
                                }
                            });
                            ArrayList arrayList = new ArrayList();
                            if (A == null) {
                                arrayList.add(MediaPlayer.this.b(0, (MediaItem) null));
                            } else if (A.f1889a != null) {
                                arrayList.addAll(MediaPlayer.this.a(mediaItem, mediaItem2));
                            } else if (A.f1890b != null) {
                                arrayList.add(MediaPlayer.this.b(mediaItem2));
                            }
                            return arrayList;
                        }
                    }
                };
                a(hVar);
                return hVar;
            }
        }
        throw new IllegalArgumentException("index shouldn't be negative");
    }

    @Override // androidx.media2.common.SessionPlayer
    public final com.google.common.util.concurrent.a<SessionPlayer.b> a(final int i2, final int i3) {
        if (i2 < 0 || i3 < 0) {
            throw new IllegalArgumentException("indices shouldn't be negative");
        }
        synchronized (this.u) {
            if (this.x) {
                return D();
            }
            h<SessionPlayer.b> hVar = new h<SessionPlayer.b>(this.h) { // from class: androidx.media2.player.MediaPlayer.4
                @Override // androidx.media2.player.MediaPlayer.h
                final List<androidx.c.a.b<SessionPlayer.b>> a() {
                    synchronized (MediaPlayer.this.l) {
                        if (i2 < MediaPlayer.this.m.f4306a.size() && i3 < MediaPlayer.this.m.f4306a.size()) {
                            MediaItem a2 = MediaPlayer.this.m.a(i2);
                            MediaPlayer.this.m.a(i3, a2);
                            if (MediaPlayer.this.q == 0) {
                                MediaPlayer.this.n.remove(i2);
                                MediaPlayer.this.n.add(i3, a2);
                                if (a2 == MediaPlayer.this.s) {
                                    MediaPlayer.this.r = i3;
                                }
                            }
                            androidx.core.e.b<MediaItem, MediaItem> A = MediaPlayer.this.A();
                            MediaItem mediaItem = MediaPlayer.this.s;
                            MediaItem mediaItem2 = MediaPlayer.this.t;
                            final List<MediaItem> n = MediaPlayer.this.n();
                            final MediaMetadata o = MediaPlayer.this.o();
                            MediaPlayer.this.a(new j() { // from class: androidx.media2.player.MediaPlayer.4.1
                                @Override // androidx.media2.player.MediaPlayer.j
                                public final void callCallback(SessionPlayer.a aVar) {
                                    aVar.onPlaylistChanged(MediaPlayer.this, n, o);
                                }
                            });
                            ArrayList arrayList = new ArrayList();
                            if (A == null) {
                                arrayList.add(MediaPlayer.this.b(0, (MediaItem) null));
                            } else if (A.f1889a != null) {
                                arrayList.addAll(MediaPlayer.this.a(mediaItem, mediaItem2));
                            } else if (A.f1890b != null) {
                                arrayList.add(MediaPlayer.this.b(mediaItem2));
                            }
                            return arrayList;
                        }
                        return MediaPlayer.this.c(-3, null);
                    }
                }
            };
            a(hVar);
            return hVar;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public final com.google.common.util.concurrent.a<SessionPlayer.b> a(final int i2, final MediaItem mediaItem) {
        Objects.requireNonNull(mediaItem, "item shouldn't be null");
        if ((mediaItem instanceof FileMediaItem) && ((FileMediaItem) mediaItem).c()) {
            throw new IllegalArgumentException("File descriptor is closed. ".concat(String.valueOf(mediaItem)));
        } else if (i2 >= 0) {
            synchronized (this.u) {
                if (this.x) {
                    return D();
                }
                h<SessionPlayer.b> hVar = new h<SessionPlayer.b>(this.h) { // from class: androidx.media2.player.MediaPlayer.2
                    @Override // androidx.media2.player.MediaPlayer.h
                    final List<androidx.c.a.b<SessionPlayer.b>> a() {
                        synchronized (MediaPlayer.this.l) {
                            if (MediaPlayer.this.m.a(mediaItem)) {
                                return MediaPlayer.this.c(-3, mediaItem);
                            }
                            int b2 = MediaPlayer.b(i2, MediaPlayer.this.m.f4306a.size());
                            MediaPlayer.this.m.a(b2, mediaItem);
                            if (MediaPlayer.this.q == 0) {
                                MediaPlayer.this.n.add(b2, mediaItem);
                            } else {
                                b2 = (int) (Math.random() * (MediaPlayer.this.n.size() + 1));
                                MediaPlayer.this.n.add(b2, mediaItem);
                            }
                            if (b2 <= MediaPlayer.this.r) {
                                MediaPlayer.this.r++;
                            }
                            androidx.core.e.b<MediaItem, MediaItem> A = MediaPlayer.this.A();
                            final List<MediaItem> n = MediaPlayer.this.n();
                            final MediaMetadata o = MediaPlayer.this.o();
                            MediaPlayer.this.a(new j() { // from class: androidx.media2.player.MediaPlayer.2.1
                                @Override // androidx.media2.player.MediaPlayer.j
                                public final void callCallback(SessionPlayer.a aVar) {
                                    aVar.onPlaylistChanged(MediaPlayer.this, n, o);
                                }
                            });
                            if (A == null || A.f1890b == null) {
                                return MediaPlayer.this.c(0, null);
                            }
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(MediaPlayer.this.b(A.f1890b));
                            return arrayList;
                        }
                    }
                };
                a(hVar);
                return hVar;
            }
        } else {
            throw new IllegalArgumentException("index shouldn't be negative");
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public final com.google.common.util.concurrent.a<SessionPlayer.b> a(final long j2) {
        synchronized (this.u) {
            if (this.x) {
                return D();
            }
            h<SessionPlayer.b> hVar = new h<SessionPlayer.b>(this.h, true) { // from class: androidx.media2.player.MediaPlayer.30
                @Override // androidx.media2.player.MediaPlayer.h
                final List<androidx.c.a.b<SessionPlayer.b>> a() {
                    ArrayList arrayList = new ArrayList();
                    androidx.c.a.b<? extends SessionPlayer.b> bVar = new androidx.c.a.b<>();
                    synchronized (MediaPlayer.this.i) {
                        MediaPlayer.this.a(14, bVar, MediaPlayer.this.g.a(j2, 0));
                    }
                    arrayList.add(bVar);
                    return arrayList;
                }
            };
            a(hVar);
            return hVar;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public final com.google.common.util.concurrent.a<SessionPlayer.b> a(final Surface surface) {
        synchronized (this.u) {
            if (this.x) {
                return D();
            }
            h<SessionPlayer.b> hVar = new h<SessionPlayer.b>(this.h) { // from class: androidx.media2.player.MediaPlayer.12
                @Override // androidx.media2.player.MediaPlayer.h
                final List<androidx.c.a.b<SessionPlayer.b>> a() {
                    ArrayList arrayList = new ArrayList();
                    androidx.c.a.b<? extends SessionPlayer.b> bVar = new androidx.c.a.b<>();
                    synchronized (MediaPlayer.this.i) {
                        MediaPlayer.this.a(27, bVar, MediaPlayer.this.g.a(surface));
                    }
                    arrayList.add(bVar);
                    return arrayList;
                }
            };
            a(hVar);
            return hVar;
        }
    }

    public final com.google.common.util.concurrent.a<SessionPlayer.b> a(final AudioAttributesCompat audioAttributesCompat) {
        Objects.requireNonNull(audioAttributesCompat, "attr shouldn't be null");
        synchronized (this.u) {
            if (this.x) {
                return D();
            }
            h<SessionPlayer.b> hVar = new h<SessionPlayer.b>(this.h) { // from class: androidx.media2.player.MediaPlayer.32
                @Override // androidx.media2.player.MediaPlayer.h
                final List<androidx.c.a.b<SessionPlayer.b>> a() {
                    ArrayList arrayList = new ArrayList();
                    androidx.c.a.b<? extends SessionPlayer.b> bVar = new androidx.c.a.b<>();
                    synchronized (MediaPlayer.this.i) {
                        MediaPlayer.this.a(16, bVar, MediaPlayer.this.g.a(audioAttributesCompat));
                    }
                    arrayList.add(bVar);
                    return arrayList;
                }
            };
            a(hVar);
            return hVar;
        }
    }

    public final com.google.common.util.concurrent.a<SessionPlayer.b> a(MediaItem mediaItem) {
        Objects.requireNonNull(mediaItem, "item shouldn't be null");
        if (!(mediaItem instanceof FileMediaItem) || !((FileMediaItem) mediaItem).c()) {
            synchronized (this.u) {
                if (this.x) {
                    return D();
                }
                AnonymousClass33 r0 = new AnonymousClass33(this.h, mediaItem);
                a(r0);
                return r0;
            }
        }
        throw new IllegalArgumentException("File descriptor is closed. ".concat(String.valueOf(mediaItem)));
    }

    @Override // androidx.media2.common.SessionPlayer
    public final com.google.common.util.concurrent.a<SessionPlayer.b> a(final MediaMetadata mediaMetadata) {
        synchronized (this.u) {
            if (this.x) {
                return D();
            }
            h<SessionPlayer.b> hVar = new h<SessionPlayer.b>(this.h) { // from class: androidx.media2.player.MediaPlayer.8
                @Override // androidx.media2.player.MediaPlayer.h
                final List<androidx.c.a.b<SessionPlayer.b>> a() {
                    synchronized (MediaPlayer.this.l) {
                        MediaPlayer.this.o = mediaMetadata;
                    }
                    MediaPlayer.this.a(new j() { // from class: androidx.media2.player.MediaPlayer.8.1
                        @Override // androidx.media2.player.MediaPlayer.j
                        public final void callCallback(SessionPlayer.a aVar) {
                            aVar.onPlaylistMetadataChanged(MediaPlayer.this, mediaMetadata);
                        }
                    });
                    return MediaPlayer.this.c(0, null);
                }
            };
            a(hVar);
            return hVar;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public final com.google.common.util.concurrent.a<SessionPlayer.b> a(final SessionPlayer.TrackInfo trackInfo) {
        Objects.requireNonNull(trackInfo, "trackInfo shouldn't be null");
        synchronized (this.u) {
            if (this.x) {
                return D();
            }
            h<SessionPlayer.b> hVar = new h<SessionPlayer.b>(this.h) { // from class: androidx.media2.player.MediaPlayer.16
                @Override // androidx.media2.player.MediaPlayer.h
                final List<androidx.c.a.b<SessionPlayer.b>> a() {
                    ArrayList arrayList = new ArrayList();
                    androidx.c.a.b<? extends SessionPlayer.b> bVar = new androidx.c.a.b<>();
                    synchronized (MediaPlayer.this.i) {
                        MediaPlayer.this.a(15, bVar, trackInfo, MediaPlayer.this.g.b(trackInfo.f2754a));
                    }
                    arrayList.add(bVar);
                    return arrayList;
                }
            };
            a(hVar);
            return hVar;
        }
    }

    public final com.google.common.util.concurrent.a<SessionPlayer.b> a(final androidx.media2.player.j jVar) {
        Objects.requireNonNull(jVar, "params shouldn't be null");
        synchronized (this.u) {
            if (this.x) {
                return D();
            }
            h<SessionPlayer.b> hVar = new h<SessionPlayer.b>(this.h) { // from class: androidx.media2.player.MediaPlayer.14
                @Override // androidx.media2.player.MediaPlayer.h
                final List<androidx.c.a.b<SessionPlayer.b>> a() {
                    ArrayList arrayList = new ArrayList();
                    androidx.c.a.b<? extends SessionPlayer.b> bVar = new androidx.c.a.b<>();
                    synchronized (MediaPlayer.this.i) {
                        MediaPlayer.this.a(24, bVar, MediaPlayer.this.g.a(jVar));
                    }
                    arrayList.add(bVar);
                    return arrayList;
                }
            };
            a(hVar);
            return hVar;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public final com.google.common.util.concurrent.a<SessionPlayer.b> a(List<MediaItem> list, MediaMetadata mediaMetadata) {
        Objects.requireNonNull(list, "list shouldn't be null");
        if (!list.isEmpty()) {
            synchronized (this.u) {
                if (this.x) {
                    return D();
                }
                String str = null;
                Iterator<MediaItem> it2 = list.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    MediaItem next = it2.next();
                    if (next == null) {
                        str = "list shouldn't contain null item";
                        break;
                    }
                    if ((next instanceof FileMediaItem) && ((FileMediaItem) next).c()) {
                        str = "File descriptor is closed. ".concat(String.valueOf(next));
                        break;
                    }
                }
                if (str != null) {
                    for (MediaItem mediaItem : list) {
                        if (mediaItem instanceof FileMediaItem) {
                            FileMediaItem fileMediaItem = (FileMediaItem) mediaItem;
                            fileMediaItem.a();
                            fileMediaItem.b();
                        }
                    }
                    throw new IllegalArgumentException(str);
                }
                AnonymousClass34 r0 = new AnonymousClass34(this.h, mediaMetadata, list);
                a(r0);
                return r0;
            }
        }
        throw new IllegalArgumentException("list shouldn't be empty");
    }

    final List<androidx.c.a.b<SessionPlayer.b>> a(MediaItem mediaItem, MediaItem mediaItem2) {
        boolean z;
        Objects.requireNonNull(mediaItem, "curItem shouldn't be null");
        synchronized (this.l) {
            z = this.y;
        }
        ArrayList arrayList = new ArrayList();
        if (z) {
            arrayList.add(b(mediaItem));
            arrayList.add(y());
        } else {
            arrayList.add(c(mediaItem));
        }
        if (mediaItem2 != null) {
            arrayList.add(b(mediaItem2));
        }
        return arrayList;
    }

    final void a(int i2, androidx.c.a.b<? extends SessionPlayer.b> bVar, SessionPlayer.TrackInfo trackInfo, Object obj) {
        g gVar = new g(i2, bVar, trackInfo);
        this.i.add(gVar);
        a(gVar, bVar, obj);
    }

    final void a(int i2, androidx.c.a.b<? extends SessionPlayer.b> bVar, Object obj) {
        g gVar = new g(i2, bVar);
        this.i.add(gVar);
        a(gVar, bVar, obj);
    }

    final void a(final MediaItem mediaItem, final int i2) {
        Integer put;
        synchronized (this.u) {
            put = this.w.put(mediaItem, Integer.valueOf(i2));
        }
        if (put == null || put.intValue() != i2) {
            a(new j() { // from class: androidx.media2.player.MediaPlayer.20
                @Override // androidx.media2.player.MediaPlayer.j
                public final void callCallback(SessionPlayer.a aVar) {
                    aVar.onBufferingStateChanged(MediaPlayer.this, mediaItem, i2);
                }
            });
        }
    }

    final void a(final d dVar) {
        synchronized (this.u) {
            if (!this.x) {
                for (androidx.core.e.b<SessionPlayer.a, Executor> bVar : v()) {
                    if (bVar.f1889a instanceof i) {
                        final i iVar = (i) bVar.f1889a;
                        bVar.f1890b.execute(new Runnable() { // from class: androidx.media2.player.MediaPlayer.22
                            @Override // java.lang.Runnable
                            public final void run() {
                                dVar.a(iVar);
                            }
                        });
                    }
                }
            }
        }
    }

    final void a(h<? extends SessionPlayer.b> hVar) {
        synchronized (this.j) {
            this.j.add(hVar);
            B();
        }
    }

    final void a(final j jVar) {
        synchronized (this.u) {
            if (!this.x) {
                for (androidx.core.e.b<SessionPlayer.a, Executor> bVar : v()) {
                    final SessionPlayer.a aVar = bVar.f1889a;
                    bVar.f1890b.execute(new Runnable() { // from class: androidx.media2.player.MediaPlayer.21
                        @Override // java.lang.Runnable
                        public final void run() {
                            jVar.callCallback(aVar);
                        }
                    });
                }
            }
        }
    }

    public final void a(Executor executor, i iVar) {
        super.a(executor, (SessionPlayer.a) iVar);
    }

    final androidx.c.a.b<SessionPlayer.b> b(int i2, MediaItem mediaItem) {
        androidx.c.a.b<SessionPlayer.b> a2 = androidx.c.a.b.a();
        MediaItem mediaItem2 = mediaItem;
        if (mediaItem == null) {
            mediaItem2 = this.g.b();
        }
        a2.a((androidx.c.a.b<SessionPlayer.b>) new SessionPlayer.b(i2, mediaItem2));
        return a2;
    }

    final androidx.c.a.b<SessionPlayer.b> b(MediaItem mediaItem) {
        androidx.c.a.b<SessionPlayer.b> a2 = androidx.c.a.b.a();
        synchronized (this.i) {
            a(22, a2, this.g.b(mediaItem));
        }
        return a2;
    }

    @Override // androidx.media2.common.SessionPlayer
    public final com.google.common.util.concurrent.a<SessionPlayer.b> b() {
        synchronized (this.u) {
            if (this.x) {
                return D();
            }
            h<SessionPlayer.b> hVar = new h<SessionPlayer.b>(this.h) { // from class: androidx.media2.player.MediaPlayer.18
                @Override // androidx.media2.player.MediaPlayer.h
                final List<androidx.c.a.b<SessionPlayer.b>> a() {
                    ArrayList arrayList = new ArrayList();
                    androidx.c.a.b<? extends SessionPlayer.b> bVar = new androidx.c.a.b<>();
                    MediaPlayer.this.k.f4336a.b();
                    synchronized (MediaPlayer.this.i) {
                        MediaPlayer.this.a(4, bVar, MediaPlayer.this.g.e());
                    }
                    arrayList.add(bVar);
                    return arrayList;
                }
            };
            a(hVar);
            return hVar;
        }
    }

    public final com.google.common.util.concurrent.a<SessionPlayer.b> b(final float f2) {
        if (f2 < BitmapDescriptorFactory.HUE_RED || f2 > 1.0f) {
            throw new IllegalArgumentException("volume should be between 0.0 and 1.0");
        }
        synchronized (this.u) {
            if (this.x) {
                return D();
            }
            h<SessionPlayer.b> hVar = new h<SessionPlayer.b>(this.h) { // from class: androidx.media2.player.MediaPlayer.13
                @Override // androidx.media2.player.MediaPlayer.h
                final List<androidx.c.a.b<SessionPlayer.b>> a() {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(MediaPlayer.this.c(f2));
                    return arrayList;
                }
            };
            a(hVar);
            return hVar;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public final com.google.common.util.concurrent.a<SessionPlayer.b> b(final int i2) {
        if (i2 >= 0) {
            synchronized (this.u) {
                if (this.x) {
                    return D();
                }
                h<SessionPlayer.b> hVar = new h<SessionPlayer.b>(this.h) { // from class: androidx.media2.player.MediaPlayer.7
                    @Override // androidx.media2.player.MediaPlayer.h
                    final List<androidx.c.a.b<SessionPlayer.b>> a() {
                        synchronized (MediaPlayer.this.l) {
                            if (i2 >= MediaPlayer.this.m.f4306a.size()) {
                                return MediaPlayer.this.c(-3, null);
                            }
                            MediaPlayer mediaPlayer = MediaPlayer.this;
                            mediaPlayer.r = mediaPlayer.n.indexOf(MediaPlayer.this.m.b(i2));
                            MediaPlayer.this.A();
                            return MediaPlayer.this.a(MediaPlayer.this.s, MediaPlayer.this.t);
                        }
                    }
                };
                a(hVar);
                return hVar;
            }
        }
        throw new IllegalArgumentException("index shouldn't be negative");
    }

    public final com.google.common.util.concurrent.a<SessionPlayer.b> b(final long j2) {
        synchronized (this.u) {
            if (this.x) {
                return D();
            }
            h<SessionPlayer.b> hVar = new h<SessionPlayer.b>(this.h, true) { // from class: androidx.media2.player.MediaPlayer.15
                @Override // androidx.media2.player.MediaPlayer.h
                final List<androidx.c.a.b<SessionPlayer.b>> a() {
                    ArrayList arrayList = new ArrayList();
                    androidx.c.a.b<? extends SessionPlayer.b> bVar = new androidx.c.a.b<>();
                    int intValue = MediaPlayer.e.containsKey(Integer.valueOf(r8)) ? MediaPlayer.e.get(Integer.valueOf(r8)).intValue() : 1;
                    synchronized (MediaPlayer.this.i) {
                        MediaPlayer.this.a(14, bVar, MediaPlayer.this.g.a(j2, intValue));
                    }
                    arrayList.add(bVar);
                    return arrayList;
                }
            };
            a(hVar);
            return hVar;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public final com.google.common.util.concurrent.a<SessionPlayer.b> b(final SessionPlayer.TrackInfo trackInfo) {
        Objects.requireNonNull(trackInfo, "trackInfo shouldn't be null");
        synchronized (this.u) {
            if (this.x) {
                return D();
            }
            h<SessionPlayer.b> hVar = new h<SessionPlayer.b>(this.h) { // from class: androidx.media2.player.MediaPlayer.17
                @Override // androidx.media2.player.MediaPlayer.h
                final List<androidx.c.a.b<SessionPlayer.b>> a() {
                    ArrayList arrayList = new ArrayList();
                    androidx.c.a.b<? extends SessionPlayer.b> bVar = new androidx.c.a.b<>();
                    synchronized (MediaPlayer.this.i) {
                        MediaPlayer.this.a(2, bVar, trackInfo, MediaPlayer.this.g.c(trackInfo.f2754a));
                    }
                    arrayList.add(bVar);
                    return arrayList;
                }
            };
            a(hVar);
            return hVar;
        }
    }

    final androidx.c.a.b<SessionPlayer.b> c(float f2) {
        androidx.c.a.b<SessionPlayer.b> a2 = androidx.c.a.b.a();
        synchronized (this.i) {
            a(26, a2, this.g.a(f2));
        }
        return a2;
    }

    @Override // androidx.media2.common.SessionPlayer
    public final com.google.common.util.concurrent.a<SessionPlayer.b> c() {
        synchronized (this.u) {
            if (this.x) {
                return D();
            }
            h<SessionPlayer.b> hVar = new h<SessionPlayer.b>(this.h) { // from class: androidx.media2.player.MediaPlayer.28
                @Override // androidx.media2.player.MediaPlayer.h
                final List<androidx.c.a.b<SessionPlayer.b>> a() {
                    ArrayList arrayList = new ArrayList();
                    androidx.c.a.b<? extends SessionPlayer.b> bVar = new androidx.c.a.b<>();
                    synchronized (MediaPlayer.this.i) {
                        MediaPlayer.this.a(6, bVar, MediaPlayer.this.g.c());
                    }
                    MediaPlayer mediaPlayer = MediaPlayer.this;
                    mediaPlayer.a(mediaPlayer.g.b(), 2);
                    arrayList.add(bVar);
                    return arrayList;
                }
            };
            a(hVar);
            return hVar;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public final com.google.common.util.concurrent.a<SessionPlayer.b> c(final int i2) {
        synchronized (this.u) {
            if (this.x) {
                return D();
            }
            h<SessionPlayer.b> hVar = new h<SessionPlayer.b>(this.h) { // from class: androidx.media2.player.MediaPlayer.9
                @Override // androidx.media2.player.MediaPlayer.h
                final List<androidx.c.a.b<SessionPlayer.b>> a() {
                    boolean z;
                    int i3 = i2;
                    if (i3 < 0 || i3 > 3) {
                        return MediaPlayer.this.c(-3, null);
                    }
                    synchronized (MediaPlayer.this.l) {
                        int i4 = MediaPlayer.this.p;
                        int i5 = i2;
                        z = i4 != i5;
                        MediaPlayer.this.p = i5;
                    }
                    if (z) {
                        MediaPlayer.this.a(new j() { // from class: androidx.media2.player.MediaPlayer.9.1
                            @Override // androidx.media2.player.MediaPlayer.j
                            public final void callCallback(SessionPlayer.a aVar) {
                                aVar.onRepeatModeChanged(MediaPlayer.this, i2);
                            }
                        });
                    }
                    return MediaPlayer.this.c(0, null);
                }
            };
            a(hVar);
            return hVar;
        }
    }

    final List<androidx.c.a.b<SessionPlayer.b>> c(int i2, MediaItem mediaItem) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(b(i2, mediaItem));
        return arrayList;
    }

    @Override // androidx.media2.common.SessionPlayer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        super.close();
        synchronized (this.u) {
            if (!this.x) {
                this.x = true;
                synchronized (this.i) {
                    Iterator<g> it2 = this.i.iterator();
                    while (it2.hasNext()) {
                        it2.next().f4333b.cancel(true);
                    }
                    this.i.clear();
                }
                synchronized (this.j) {
                    Iterator<h<? extends SessionPlayer.b>> it3 = this.j.iterator();
                    while (it3.hasNext()) {
                        h<? extends SessionPlayer.b> next = it3.next();
                        if (next.j && !next.isDone() && !next.isCancelled()) {
                            next.cancel(true);
                        }
                    }
                    this.j.clear();
                }
                synchronized (this.u) {
                    this.v = 0;
                    this.w.clear();
                }
                synchronized (this.l) {
                    this.m.a();
                    this.n.clear();
                    this.s = null;
                    this.t = null;
                    this.r = -1;
                    this.y = false;
                }
                this.k.f4336a.c();
                this.g.p();
                this.k.f4336a.d();
                this.g.q();
                this.h.shutdown();
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public final int d() {
        int i2;
        synchronized (this.u) {
            i2 = this.v;
        }
        return i2;
    }

    @Override // androidx.media2.common.SessionPlayer
    public final com.google.common.util.concurrent.a<SessionPlayer.b> d(final int i2) {
        synchronized (this.u) {
            if (this.x) {
                return D();
            }
            h<SessionPlayer.b> hVar = new h<SessionPlayer.b>(this.h) { // from class: androidx.media2.player.MediaPlayer.10
                @Override // androidx.media2.player.MediaPlayer.h
                final List<androidx.c.a.b<SessionPlayer.b>> a() {
                    boolean z;
                    int i3 = i2;
                    if (i3 < 0 || i3 > 2) {
                        return MediaPlayer.this.c(-3, null);
                    }
                    synchronized (MediaPlayer.this.l) {
                        int i4 = MediaPlayer.this.q;
                        int i5 = i2;
                        z = i4 != i5;
                        MediaPlayer.this.q = i5;
                        MediaPlayer.this.z();
                    }
                    if (z) {
                        MediaPlayer.this.a(new j() { // from class: androidx.media2.player.MediaPlayer.10.1
                            @Override // androidx.media2.player.MediaPlayer.j
                            public final void callCallback(SessionPlayer.a aVar) {
                                aVar.onShuffleModeChanged(MediaPlayer.this, i2);
                            }
                        });
                    }
                    return MediaPlayer.this.c(0, null);
                }
            };
            a(hVar);
            return hVar;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public final long e() {
        synchronized (this.u) {
            if (this.x) {
                return Long.MIN_VALUE;
            }
            try {
                long f2 = this.g.f();
                if (f2 >= 0) {
                    return f2;
                }
                return Long.MIN_VALUE;
            } catch (IllegalStateException e2) {
                return Long.MIN_VALUE;
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public final long f() {
        synchronized (this.u) {
            if (this.x) {
                return Long.MIN_VALUE;
            }
            try {
                long g2 = this.g.g();
                if (g2 >= 0) {
                    return g2;
                }
                return Long.MIN_VALUE;
            } catch (IllegalStateException e2) {
                return Long.MIN_VALUE;
            }
        }
    }

    final void f(final int i2) {
        boolean z;
        synchronized (this.u) {
            if (this.v != i2) {
                this.v = i2;
                z = true;
            } else {
                z = false;
            }
        }
        if (z) {
            a(new j() { // from class: androidx.media2.player.MediaPlayer.19
                @Override // androidx.media2.player.MediaPlayer.j
                public final void callCallback(SessionPlayer.a aVar) {
                    aVar.onPlayerStateChanged(MediaPlayer.this, i2);
                }
            });
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public final long g() {
        synchronized (this.u) {
            if (this.x) {
                return Long.MIN_VALUE;
            }
            try {
                long h2 = this.g.h();
                if (h2 >= 0) {
                    return h2;
                }
                return Long.MIN_VALUE;
            } catch (IllegalStateException e2) {
                return Long.MIN_VALUE;
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public final int h() {
        Integer num;
        synchronized (this.u) {
            if (this.x) {
                return 0;
            }
            synchronized (this.u) {
                num = this.w.get(this.g.b());
            }
            if (num == null) {
                return 0;
            }
            return num.intValue();
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public final float i() {
        synchronized (this.u) {
            if (this.x) {
                return 1.0f;
            }
            try {
                return this.g.k().c().floatValue();
            } catch (IllegalStateException e2) {
                return 1.0f;
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public final AudioAttributesCompat k() {
        synchronized (this.u) {
            if (this.x) {
                return null;
            }
            try {
                return this.g.j();
            } catch (IllegalStateException e2) {
                return null;
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public final com.google.common.util.concurrent.a<SessionPlayer.b> l() {
        synchronized (this.u) {
            if (this.x) {
                return D();
            }
            h<SessionPlayer.b> hVar = new h<SessionPlayer.b>(this.h) { // from class: androidx.media2.player.MediaPlayer.5
                @Override // androidx.media2.player.MediaPlayer.h
                final List<androidx.c.a.b<SessionPlayer.b>> a() {
                    synchronized (MediaPlayer.this.l) {
                        if (MediaPlayer.this.r < 0) {
                            return MediaPlayer.this.c(-2, null);
                        }
                        int i2 = MediaPlayer.this.r - 1;
                        int i3 = i2;
                        if (i2 < 0) {
                            if (!(MediaPlayer.this.p == 2 || MediaPlayer.this.p == 3)) {
                                return MediaPlayer.this.c(-2, null);
                            }
                            i3 = MediaPlayer.this.n.size() - 1;
                        }
                        MediaPlayer.this.r = i3;
                        MediaPlayer.this.A();
                        return MediaPlayer.this.a(MediaPlayer.this.s, MediaPlayer.this.t);
                    }
                }
            };
            a(hVar);
            return hVar;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public final com.google.common.util.concurrent.a<SessionPlayer.b> m() {
        synchronized (this.u) {
            if (this.x) {
                return D();
            }
            h<SessionPlayer.b> hVar = new h<SessionPlayer.b>(this.h) { // from class: androidx.media2.player.MediaPlayer.6
                @Override // androidx.media2.player.MediaPlayer.h
                final List<androidx.c.a.b<SessionPlayer.b>> a() {
                    synchronized (MediaPlayer.this.l) {
                        if (MediaPlayer.this.r < 0) {
                            return MediaPlayer.this.c(-2, null);
                        }
                        int i2 = MediaPlayer.this.r + 1;
                        int i3 = i2;
                        if (i2 >= MediaPlayer.this.n.size()) {
                            if (!(MediaPlayer.this.p == 2 || MediaPlayer.this.p == 3)) {
                                return MediaPlayer.this.c(-2, null);
                            }
                            i3 = 0;
                        }
                        MediaPlayer.this.r = i3;
                        MediaPlayer.this.A();
                        MediaItem mediaItem = MediaPlayer.this.s;
                        MediaItem mediaItem2 = MediaPlayer.this.t;
                        if (mediaItem != null) {
                            return MediaPlayer.this.a(mediaItem, mediaItem2);
                        }
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(MediaPlayer.this.y());
                        return arrayList;
                    }
                }
            };
            a(hVar);
            return hVar;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public final List<MediaItem> n() {
        synchronized (this.u) {
            ArrayList arrayList = null;
            if (this.x) {
                return null;
            }
            synchronized (this.l) {
                if (!this.m.f4306a.isEmpty()) {
                    arrayList = new ArrayList(this.m.f4306a);
                }
            }
            return arrayList;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public final MediaMetadata o() {
        MediaMetadata mediaMetadata;
        synchronized (this.u) {
            if (this.x) {
                return null;
            }
            synchronized (this.l) {
                mediaMetadata = this.o;
            }
            return mediaMetadata;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public final int p() {
        int i2;
        synchronized (this.u) {
            if (this.x) {
                return 0;
            }
            synchronized (this.l) {
                i2 = this.p;
            }
            return i2;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public final int q() {
        int i2;
        synchronized (this.u) {
            if (this.x) {
                return 0;
            }
            synchronized (this.l) {
                i2 = this.q;
            }
            return i2;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public final MediaItem r() {
        synchronized (this.u) {
            if (this.x) {
                return null;
            }
            return this.g.b();
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public final int s() {
        synchronized (this.u) {
            if (this.x) {
                return -1;
            }
            synchronized (this.l) {
                int i2 = this.r;
                if (i2 < 0) {
                    return -1;
                }
                return this.m.b(this.n.get(i2));
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public final int t() {
        synchronized (this.u) {
            if (this.x) {
                return -1;
            }
            synchronized (this.l) {
                int i2 = this.r;
                if (i2 < 0) {
                    return -1;
                }
                int i3 = i2 - 1;
                if (i3 < 0) {
                    int i4 = this.p;
                    if (i4 != 2 && i4 != 3) {
                        return -1;
                    }
                    c cVar = this.m;
                    ArrayList<MediaItem> arrayList = this.n;
                    return cVar.b(arrayList.get(arrayList.size() - 1));
                }
                return this.m.b(this.n.get(i3));
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public final int u() {
        synchronized (this.u) {
            if (this.x) {
                return -1;
            }
            synchronized (this.l) {
                int i2 = this.r;
                if (i2 < 0) {
                    return -1;
                }
                int i3 = i2 + 1;
                if (i3 >= this.n.size()) {
                    int i4 = this.p;
                    if (i4 != 2 && i4 != 3) {
                        return -1;
                    }
                    return this.m.b(this.n.get(0));
                }
                return this.m.b(this.n.get(i3));
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public final List<SessionPlayer.TrackInfo> w() {
        synchronized (this.u) {
            if (!this.x) {
                return this.g.o();
            }
            return Collections.emptyList();
        }
    }

    public final float x() {
        synchronized (this.u) {
            if (this.x) {
                return 1.0f;
            }
            return this.g.n();
        }
    }

    final androidx.c.a.b<SessionPlayer.b> y() {
        androidx.c.a.b<SessionPlayer.b> a2 = androidx.c.a.b.a();
        synchronized (this.i) {
            a(29, a2, this.g.i());
        }
        return a2;
    }

    final void z() {
        this.n.clear();
        this.n.addAll(this.m.f4306a);
        int i2 = this.q;
        if (i2 == 1 || i2 == 2) {
            Collections.shuffle(this.n);
        }
    }
}

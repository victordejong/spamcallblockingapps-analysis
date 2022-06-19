package androidx.media2.player;

import android.content.Context;
import android.media.MediaFormat;
import android.util.Log;
import android.view.Surface;
import androidx.core.p036e.C0827a;
import androidx.core.p036e.C0828b;
import androidx.media.AudioAttributesCompat;
import androidx.media2.common.FileMediaItem;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.common.VideoSize;
import androidx.media2.player.C2187j;
import androidx.media2.player.MediaPlayer;
import androidx.media2.player.MediaPlayer2;
import androidx.p023b.C0428a;
import androidx.p024c.p025a.AbstractC0481a;
import androidx.p024c.p025a.C0492b;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.common.util.concurrent.AbstractFutureC15579a;
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

    /* renamed from: a */
    static final C2187j f8297a = new C2187j.C2188a().m41186a(1.0f).m41185b().m41187a().m41184c();

    /* renamed from: b */
    static C0428a<Integer, Integer> f8298b;

    /* renamed from: c */
    static C0428a<Integer, Integer> f8299c;

    /* renamed from: d */
    static C0428a<Integer, Integer> f8300d;

    /* renamed from: e */
    static C0428a<Integer, Integer> f8301e;

    /* renamed from: f */
    static C0428a<Integer, Integer> f8302f;

    /* renamed from: g */
    MediaPlayer2 f8303g;

    /* renamed from: h */
    ExecutorService f8304h;

    /* renamed from: k */
    public final C2125a f8307k;

    /* renamed from: o */
    MediaMetadata f8311o;

    /* renamed from: p */
    int f8312p;

    /* renamed from: q */
    int f8313q;

    /* renamed from: s */
    MediaItem f8315s;

    /* renamed from: t */
    MediaItem f8316t;

    /* renamed from: x */
    private boolean f8320x;

    /* renamed from: y */
    private boolean f8321y;

    /* renamed from: i */
    final ArrayDeque<C2117g> f8305i = new ArrayDeque<>();

    /* renamed from: j */
    final ArrayDeque<AbstractC2118h<? extends SessionPlayer.C1352b>> f8306j = new ArrayDeque<>();

    /* renamed from: u */
    private final Object f8317u = new Object();

    /* renamed from: w */
    private Map<MediaItem, Integer> f8319w = new HashMap();

    /* renamed from: l */
    final Object f8308l = new Object();

    /* renamed from: m */
    C2104c f8309m = new C2104c();

    /* renamed from: n */
    ArrayList<MediaItem> f8310n = new ArrayList<>();

    /* renamed from: v */
    private int f8318v = 0;

    /* renamed from: r */
    int f8314r = -2;

    /* renamed from: androidx.media2.player.MediaPlayer$33 */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$33.class */
    public final class C209133 extends AbstractC2118h<SessionPlayer.C1352b> {

        /* renamed from: f */
        final /* synthetic */ MediaItem f8385f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C209133(Executor executor, MediaItem mediaItem) {
            super(executor);
            MediaPlayer.this = r4;
            this.f8385f = mediaItem;
        }

        /* renamed from: a */
        public /* synthetic */ void m41327a(SessionPlayer.AbstractC1351a abstractC1351a) {
            abstractC1351a.onPlaylistChanged(MediaPlayer.this, null, null);
        }

        @Override // androidx.media2.player.MediaPlayer.AbstractC2118h
        /* renamed from: a */
        final List<C0492b<SessionPlayer.C1352b>> mo41315a() {
            ArrayList arrayList = new ArrayList();
            synchronized (MediaPlayer.this.f8308l) {
                MediaPlayer.this.f8309m.m41324a();
                MediaPlayer.this.f8311o = null;
                MediaPlayer.this.f8310n.clear();
                MediaPlayer.this.f8315s = this.f8385f;
                MediaPlayer.this.f8316t = null;
                MediaPlayer.this.f8314r = -1;
            }
            MediaPlayer.this.m41370a(new AbstractC2121j() { // from class: androidx.media2.player._$$Lambda$MediaPlayer$33$dH_Su3DtYYch4vWqp22TEBZNwf8
                @Override // androidx.media2.player.MediaPlayer.AbstractC2121j
                public final void callCallback(SessionPlayer.AbstractC1351a abstractC1351a) {
                    MediaPlayer.C209133.this.m41327a(abstractC1351a);
                }
            });
            arrayList.addAll(MediaPlayer.this.m41376a(this.f8385f, (MediaItem) null));
            return arrayList;
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$34 */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$34.class */
    public final class C209234 extends AbstractC2118h<SessionPlayer.C1352b> {

        /* renamed from: f */
        final /* synthetic */ MediaMetadata f8387f;

        /* renamed from: g */
        final /* synthetic */ List f8388g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C209234(Executor executor, MediaMetadata mediaMetadata, List list) {
            super(executor);
            MediaPlayer.this = r4;
            this.f8387f = mediaMetadata;
            this.f8388g = list;
        }

        /* renamed from: a */
        public /* synthetic */ void m41326a(List list, MediaMetadata mediaMetadata, SessionPlayer.AbstractC1351a abstractC1351a) {
            abstractC1351a.onPlaylistChanged(MediaPlayer.this, list, mediaMetadata);
        }

        @Override // androidx.media2.player.MediaPlayer.AbstractC2118h
        /* renamed from: a */
        final List<C0492b<SessionPlayer.C1352b>> mo41315a() {
            MediaItem mediaItem;
            MediaItem mediaItem2;
            synchronized (MediaPlayer.this.f8308l) {
                MediaPlayer.this.f8311o = this.f8387f;
                C2104c c2104c = MediaPlayer.this.f8309m;
                List<MediaItem> list = this.f8388g;
                for (MediaItem mediaItem3 : list) {
                    if (mediaItem3 instanceof FileMediaItem) {
                        ((FileMediaItem) mediaItem3).m43206a();
                    }
                }
                c2104c.m41324a();
                c2104c.f8407a.addAll(list);
                MediaPlayer.this.m41328z();
                MediaPlayer.this.f8314r = 0;
                MediaPlayer.this.m41392A();
                mediaItem = MediaPlayer.this.f8315s;
                mediaItem2 = MediaPlayer.this.f8316t;
            }
            MediaPlayer mediaPlayer = MediaPlayer.this;
            final List list2 = this.f8388g;
            final MediaMetadata mediaMetadata = this.f8387f;
            mediaPlayer.m41370a(new AbstractC2121j() { // from class: androidx.media2.player._$$Lambda$MediaPlayer$34$Bdj3KYNYbh1MQtX_AUHHvjO8Bxg
                @Override // androidx.media2.player.MediaPlayer.AbstractC2121j
                public final void callCallback(SessionPlayer.AbstractC1351a abstractC1351a) {
                    MediaPlayer.C209234.this.m41326a(list2, mediaMetadata, abstractC1351a);
                }
            });
            return mediaItem != null ? MediaPlayer.this.m41376a(mediaItem, mediaItem2) : MediaPlayer.this.m41355c(0, null);
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
            super(trackInfo.f5048a, trackInfo.f5049b, trackInfo.mo41325a(), trackInfo.f5049b == 1 ? false : true);
        }

        @Override // androidx.media2.common.SessionPlayer.TrackInfo
        /* renamed from: a */
        public final MediaFormat mo41325a() {
            if (this.f5049b == 4) {
                return super.mo41325a();
            }
            return null;
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$a.class */
    public static final class C2102a {

        /* renamed from: a */
        private final MediaPlayer2.AbstractC2123b f8406a;

        C2102a(MediaPlayer2.AbstractC2123b abstractC2123b) {
            this.f8406a = abstractC2123b;
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$b.class */
    public static final class C2103b extends SessionPlayer.C1352b {
        public C2103b(int i, MediaItem mediaItem) {
            super(i, mediaItem);
        }

        @Override // androidx.media2.common.SessionPlayer.C1352b, androidx.media2.common.AbstractC1354a
        /* renamed from: a */
        public final int mo41118a() {
            return super.mo41118a();
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$c.class */
    public static final class C2104c {

        /* renamed from: a */
        ArrayList<MediaItem> f8407a = new ArrayList<>();

        C2104c() {
        }

        /* renamed from: a */
        final MediaItem m41323a(int i) {
            MediaItem remove = this.f8407a.remove(i);
            if (remove instanceof FileMediaItem) {
                ((FileMediaItem) remove).m43205b();
            }
            return remove;
        }

        /* renamed from: a */
        final void m41324a() {
            Iterator<MediaItem> it2 = this.f8407a.iterator();
            while (it2.hasNext()) {
                MediaItem next = it2.next();
                if (next instanceof FileMediaItem) {
                    ((FileMediaItem) next).m43205b();
                }
            }
            this.f8407a.clear();
        }

        /* renamed from: a */
        final void m41322a(int i, MediaItem mediaItem) {
            if (mediaItem instanceof FileMediaItem) {
                ((FileMediaItem) mediaItem).m43206a();
            }
            this.f8407a.add(i, mediaItem);
        }

        /* renamed from: a */
        final boolean m41321a(Object obj) {
            return this.f8407a.contains(obj);
        }

        /* renamed from: b */
        final int m41319b(Object obj) {
            return this.f8407a.indexOf(obj);
        }

        /* renamed from: b */
        final MediaItem m41320b(int i) {
            return this.f8407a.get(i);
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$d.class */
    public interface AbstractC2105d {
        /* renamed from: a */
        void mo41317a(AbstractC2120i abstractC2120i);
    }

    /* renamed from: androidx.media2.player.MediaPlayer$e */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$e.class */
    public final class C2106e extends MediaPlayer2.AbstractC2124c {
        C2106e() {
            MediaPlayer.this = r4;
        }

        /* renamed from: a */
        public /* synthetic */ void m41318a(List list, SessionPlayer.AbstractC1351a abstractC1351a) {
            abstractC1351a.onTracksChanged(MediaPlayer.this, list);
        }

        @Override // androidx.media2.player.MediaPlayer2.AbstractC2124c
        /* renamed from: a */
        public final void mo41310a(final MediaItem mediaItem, final int i) {
            MediaPlayer.this.m41348f(3);
            MediaPlayer.this.m41377a(mediaItem, 0);
            MediaPlayer.this.m41373a(new AbstractC2105d() { // from class: androidx.media2.player.MediaPlayer.e.3
                @Override // androidx.media2.player.MediaPlayer.AbstractC2105d
                /* renamed from: a */
                public final void mo41317a(AbstractC2120i abstractC2120i) {
                    abstractC2120i.onError(MediaPlayer.this, mediaItem, i, r7);
                }
            });
        }

        @Override // androidx.media2.player.MediaPlayer2.AbstractC2124c
        /* renamed from: a */
        public final void mo41309a(MediaItem mediaItem, int i, int i2) {
            MediaItem mo41335r = MediaPlayer.this.mo41335r();
            if (mo41335r == null || mo41335r != mediaItem) {
                return;
            }
            final VideoSize videoSize = new VideoSize(i, i2);
            MediaPlayer.this.m41370a(new AbstractC2121j() { // from class: androidx.media2.player.MediaPlayer.e.1
                @Override // androidx.media2.player.MediaPlayer.AbstractC2121j
                public final void callCallback(SessionPlayer.AbstractC1351a abstractC1351a) {
                    abstractC1351a.onVideoSizeChanged(MediaPlayer.this, videoSize);
                }
            });
        }

        @Override // androidx.media2.player.MediaPlayer2.AbstractC2124c
        /* renamed from: a */
        public final void mo41308a(final MediaItem mediaItem, final SessionPlayer.TrackInfo trackInfo, final SubtitleData subtitleData) {
            MediaPlayer.this.m41370a(new AbstractC2121j() { // from class: androidx.media2.player.MediaPlayer.e.9
                @Override // androidx.media2.player.MediaPlayer.AbstractC2121j
                public final void callCallback(SessionPlayer.AbstractC1351a abstractC1351a) {
                    abstractC1351a.onSubtitleData(MediaPlayer.this, mediaItem, trackInfo, subtitleData);
                }
            });
        }

        @Override // androidx.media2.player.MediaPlayer2.AbstractC2124c
        /* renamed from: a */
        public final void mo41307a(final MediaItem mediaItem, final C2186i c2186i) {
            MediaPlayer.this.m41373a(new AbstractC2105d() { // from class: androidx.media2.player.MediaPlayer.e.8
                @Override // androidx.media2.player.MediaPlayer.AbstractC2105d
                /* renamed from: a */
                public final void mo41317a(AbstractC2120i abstractC2120i) {
                    abstractC2120i.onMediaTimeDiscontinuity(MediaPlayer.this, mediaItem, c2186i);
                }
            });
        }

        @Override // androidx.media2.player.MediaPlayer2.AbstractC2124c
        /* renamed from: a */
        public final void mo41306a(final MediaItem mediaItem, final C2194m c2194m) {
            MediaPlayer.this.m41373a(new AbstractC2105d() { // from class: androidx.media2.player.MediaPlayer.e.2
                @Override // androidx.media2.player.MediaPlayer.AbstractC2105d
                /* renamed from: a */
                public final void mo41317a(AbstractC2120i abstractC2120i) {
                    abstractC2120i.onTimedMetaDataAvailable(MediaPlayer.this, mediaItem, c2194m);
                }
            });
        }

        @Override // androidx.media2.player.MediaPlayer2.AbstractC2124c
        /* renamed from: a */
        public final void mo41305a(final List<SessionPlayer.TrackInfo> list) {
            MediaPlayer.this.m41370a(new AbstractC2121j() { // from class: androidx.media2.player._$$Lambda$MediaPlayer$e$xYyo39nrW1hJ_7VlmsMJPeFoFz4
                @Override // androidx.media2.player.MediaPlayer.AbstractC2121j
                public final void callCallback(SessionPlayer.AbstractC1351a abstractC1351a) {
                    MediaPlayer.C2106e.this.m41318a(list, abstractC1351a);
                }
            });
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0026, code lost:
            if (r10 != 702) goto L48;
         */
        @Override // androidx.media2.player.MediaPlayer2.AbstractC2124c
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo41304b(final androidx.media2.common.MediaItem r9, int r10, final int r11) {
            /*
                Method dump skipped, instructions count: 384
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.player.MediaPlayer.C2106e.mo41304b(androidx.media2.common.MediaItem, int, int):void");
        }

        @Override // androidx.media2.player.MediaPlayer2.AbstractC2124c
        /* renamed from: c */
        public final void mo41303c(final MediaItem mediaItem, int i, int i2) {
            final C2117g pollFirst;
            final MediaPlayer mediaPlayer = MediaPlayer.this;
            synchronized (mediaPlayer.f8305i) {
                pollFirst = mediaPlayer.f8305i.pollFirst();
            }
            if (pollFirst == null) {
                StringBuilder sb = new StringBuilder("No matching call type for ");
                sb.append(i);
                sb.append(". Possibly because of reset().");
                return;
            }
            if (i != pollFirst.f8435a) {
                Log.w("MediaPlayer", "Call type does not match. expected:" + pollFirst.f8435a + " actual:" + i);
                i2 = Integer.MIN_VALUE;
            }
            if (i2 == 0) {
                if (i != 2) {
                    if (i != 19) {
                        if (i == 24) {
                            final float floatValue = mediaPlayer.f8303g.mo41267k().m41188c().floatValue();
                            mediaPlayer.m41370a(new AbstractC2121j() { // from class: androidx.media2.player.MediaPlayer.25
                                @Override // androidx.media2.player.MediaPlayer.AbstractC2121j
                                public final void callCallback(SessionPlayer.AbstractC1351a abstractC1351a) {
                                    abstractC1351a.onPlaybackSpeedChanged(mediaPlayer, floatValue);
                                }
                            });
                        } else if (i != 29) {
                            if (i != 4) {
                                if (i == 5) {
                                    mediaPlayer.m41348f(2);
                                } else if (i != 6) {
                                    switch (i) {
                                        case 14:
                                            final long mo41351e = mediaPlayer.mo41351e();
                                            mediaPlayer.m41370a(new AbstractC2121j() { // from class: androidx.media2.player.MediaPlayer.23
                                                @Override // androidx.media2.player.MediaPlayer.AbstractC2121j
                                                public final void callCallback(SessionPlayer.AbstractC1351a abstractC1351a) {
                                                    abstractC1351a.onSeekCompleted(mediaPlayer, mo41351e);
                                                }
                                            });
                                            break;
                                        case 15:
                                            mediaPlayer.m41370a(new AbstractC2121j() { // from class: androidx.media2.player.MediaPlayer.27
                                                @Override // androidx.media2.player.MediaPlayer.AbstractC2121j
                                                public final void callCallback(SessionPlayer.AbstractC1351a abstractC1351a) {
                                                    abstractC1351a.onTrackSelected(mediaPlayer, pollFirst.f8437c);
                                                }
                                            });
                                            break;
                                        case 16:
                                            final AudioAttributesCompat mo41268j = mediaPlayer.f8303g.mo41268j();
                                            mediaPlayer.m41370a(new AbstractC2121j() { // from class: androidx.media2.player.MediaPlayer.26
                                                @Override // androidx.media2.player.MediaPlayer.AbstractC2121j
                                                public final void callCallback(SessionPlayer.AbstractC1351a abstractC1351a) {
                                                    abstractC1351a.onAudioAttributesChanged(mediaPlayer, mo41268j);
                                                }
                                            });
                                            break;
                                    }
                                }
                            }
                            mediaPlayer.m41348f(1);
                        }
                    }
                    mediaPlayer.m41370a(new AbstractC2121j() { // from class: androidx.media2.player.MediaPlayer.24
                        @Override // androidx.media2.player.MediaPlayer.AbstractC2121j
                        public final void callCallback(SessionPlayer.AbstractC1351a abstractC1351a) {
                            abstractC1351a.onCurrentMediaItemChanged(mediaPlayer, mediaItem);
                        }
                    });
                } else {
                    mediaPlayer.m41370a(new AbstractC2121j() { // from class: androidx.media2.player.MediaPlayer.29
                        @Override // androidx.media2.player.MediaPlayer.AbstractC2121j
                        public final void callCallback(SessionPlayer.AbstractC1351a abstractC1351a) {
                            abstractC1351a.onTrackDeselected(mediaPlayer, pollFirst.f8437c);
                        }
                    });
                }
            }
            if (i != 1001) {
                pollFirst.m41316a(new SessionPlayer.C1352b(Integer.valueOf(MediaPlayer.f8298b.containsKey(Integer.valueOf(i2)) ? MediaPlayer.f8298b.get(Integer.valueOf(i2)).intValue() : -1).intValue(), mediaItem));
            } else {
                pollFirst.m41316a(new C2103b(Integer.valueOf(MediaPlayer.f8302f.containsKey(Integer.valueOf(i2)) ? MediaPlayer.f8302f.get(Integer.valueOf(i2)).intValue() : -1003).intValue(), mediaItem));
            }
            mediaPlayer.m41391B();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.player.MediaPlayer$f */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$f.class */
    public final class C2116f extends MediaPlayer2.AbstractC2122a {
        C2116f() {
            MediaPlayer.this = r4;
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$g */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$g.class */
    public static final class C2117g {

        /* renamed from: a */
        final int f8435a;

        /* renamed from: b */
        final C0492b<? extends SessionPlayer.C1352b> f8436b;

        /* renamed from: c */
        final SessionPlayer.TrackInfo f8437c;

        C2117g(int i, C0492b<? extends SessionPlayer.C1352b> c0492b) {
            this(i, c0492b, null);
        }

        C2117g(int i, C0492b<? extends SessionPlayer.C1352b> c0492b, SessionPlayer.TrackInfo trackInfo) {
            this.f8435a = i;
            this.f8436b = c0492b;
            this.f8437c = trackInfo;
        }

        /* renamed from: a */
        final <V extends SessionPlayer.C1352b> void m41316a(V v) {
            this.f8436b.mo40774a((C0492b<? extends SessionPlayer.C1352b>) v);
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$h */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$h.class */
    public static abstract class AbstractC2118h<V extends SessionPlayer.C1352b> extends AbstractC0481a<V> {

        /* renamed from: i */
        final boolean f8438i;

        /* renamed from: j */
        boolean f8439j;

        /* renamed from: k */
        List<C0492b<V>> f8440k;

        AbstractC2118h(Executor executor) {
            this(executor, false);
        }

        AbstractC2118h(Executor executor, boolean z) {
            this.f8439j = false;
            this.f8438i = z;
            mo8638a(new Runnable() { // from class: androidx.media2.player.MediaPlayer.h.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (!AbstractC2118h.this.isCancelled() || !AbstractC2118h.this.f8439j) {
                        return;
                    }
                    AbstractC2118h.this.m41312c();
                }
            }, executor);
        }

        /* renamed from: d */
        private void m41311d() {
            V v = null;
            for (int i = 0; i < this.f8440k.size(); i++) {
                C0492b<V> c0492b = this.f8440k.get(i);
                if (!c0492b.isDone() && !c0492b.isCancelled()) {
                    return;
                }
                try {
                    v = c0492b.get();
                    int mo41118a = v.mo41118a();
                    if (mo41118a != 0 && mo41118a != 1) {
                        m41312c();
                        super.mo40774a((AbstractC2118h<V>) v);
                        return;
                    }
                } catch (Exception e) {
                    m41312c();
                    mo41314a((Throwable) e);
                    return;
                }
            }
            try {
                super.mo40774a((AbstractC2118h<V>) v);
            } catch (Exception e2) {
                mo41314a((Throwable) e2);
            }
        }

        /* renamed from: a */
        abstract List<C0492b<V>> mo41315a();

        @Override // androidx.p024c.p025a.AbstractC0481a
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ boolean mo40774a(Object obj) {
            return super.mo40774a((AbstractC2118h<V>) ((SessionPlayer.C1352b) obj));
        }

        @Override // androidx.p024c.p025a.AbstractC0481a
        /* renamed from: a */
        public final boolean mo41314a(Throwable th) {
            return super.mo41314a(th);
        }

        /* renamed from: b */
        public final boolean m41313b() {
            if (!this.f8439j && !isCancelled()) {
                this.f8439j = true;
                this.f8440k = mo41315a();
            }
            if (!isCancelled() && !isDone()) {
                m41311d();
            }
            return isCancelled() || isDone();
        }

        /* renamed from: c */
        final void m41312c() {
            List<C0492b<V>> list = this.f8440k;
            if (list != null) {
                for (C0492b<V> c0492b : list) {
                    if (!c0492b.isCancelled() && !c0492b.isDone()) {
                        c0492b.cancel(true);
                    }
                }
            }
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$i */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$i.class */
    public static abstract class AbstractC2120i extends SessionPlayer.AbstractC1351a {
        public void onDrmInfo(MediaPlayer mediaPlayer, MediaItem mediaItem, C2102a c2102a) {
        }

        public void onError(MediaPlayer mediaPlayer, MediaItem mediaItem, int i, int i2) {
        }

        public void onInfo(MediaPlayer mediaPlayer, MediaItem mediaItem, int i, int i2) {
        }

        public void onMediaTimeDiscontinuity(MediaPlayer mediaPlayer, MediaItem mediaItem, C2186i c2186i) {
        }

        public void onTimedMetaDataAvailable(MediaPlayer mediaPlayer, MediaItem mediaItem, C2194m c2194m) {
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public void onVideoSizeChanged(SessionPlayer sessionPlayer, VideoSize videoSize) {
            if (sessionPlayer instanceof MediaPlayer) {
                onVideoSizeChanged((MediaPlayer) sessionPlayer, sessionPlayer.mo41335r(), new VideoSize(videoSize));
                return;
            }
            throw new IllegalArgumentException("player must be MediaPlayer");
        }

        @Deprecated
        public void onVideoSizeChanged(MediaPlayer mediaPlayer, MediaItem mediaItem, VideoSize videoSize) {
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$j */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$j.class */
    public interface AbstractC2121j {
        void callCallback(SessionPlayer.AbstractC1351a abstractC1351a);
    }

    static {
        C0428a<Integer, Integer> c0428a = new C0428a<>();
        f8298b = c0428a;
        c0428a.put(0, 0);
        f8298b.put(Integer.valueOf((int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW), -1);
        f8298b.put(1, -2);
        f8298b.put(2, -3);
        f8298b.put(3, -4);
        f8298b.put(4, -5);
        f8298b.put(5, 1);
        C0428a<Integer, Integer> c0428a2 = new C0428a<>();
        f8299c = c0428a2;
        c0428a2.put(1, 1);
        f8299c.put(-1004, -1004);
        f8299c.put(-1007, -1007);
        f8299c.put(-1010, -1010);
        f8299c.put(-110, -110);
        C0428a<Integer, Integer> c0428a3 = new C0428a<>();
        f8300d = c0428a3;
        c0428a3.put(3, 3);
        f8300d.put(700, 700);
        f8300d.put(704, 704);
        f8300d.put(800, 800);
        C0428a<Integer, Integer> c0428a4 = f8300d;
        Integer valueOf = Integer.valueOf((int) EventTypeExtended.EVENT_TYPE_EXTENDED_BURL_VALUE);
        c0428a4.put(valueOf, valueOf);
        C0428a<Integer, Integer> c0428a5 = f8300d;
        Integer valueOf2 = Integer.valueOf((int) EventTypeExtended.EVENT_TYPE_EXTENDED_NURL_VALUE);
        c0428a5.put(valueOf2, valueOf2);
        f8300d.put(Integer.valueOf((int) EventTypeExtended.EVENT_TYPE_EXTENDED_CUSTOM_VALUE), Integer.valueOf((int) EventTypeExtended.EVENT_TYPE_EXTENDED_CUSTOM_VALUE));
        f8300d.put(Integer.valueOf((int) EventTypeExtended.EVENT_TYPE_EXTENDED_CUSTOM_LOSS_VALUE), Integer.valueOf((int) EventTypeExtended.EVENT_TYPE_EXTENDED_CUSTOM_LOSS_VALUE));
        C0428a<Integer, Integer> c0428a6 = new C0428a<>();
        f8301e = c0428a6;
        c0428a6.put(0, 0);
        f8301e.put(1, 1);
        f8301e.put(2, 2);
        f8301e.put(3, 3);
        C0428a<Integer, Integer> c0428a7 = new C0428a<>();
        f8302f = c0428a7;
        c0428a7.put(0, 0);
        f8302f.put(1, -1001);
        f8302f.put(2, -1003);
        f8302f.put(3, -1003);
        f8302f.put(4, -1004);
        f8302f.put(5, -1005);
    }

    public MediaPlayer(Context context) {
        Objects.requireNonNull(context, "context shouldn't be null");
        this.f8303g = new C2132c(context);
        ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(1);
        this.f8304h = newFixedThreadPool;
        this.f8303g.mo41281a(newFixedThreadPool, new C2106e());
        this.f8303g.mo41282a(this.f8304h, new C2116f());
        this.f8307k = new C2125a(context, this);
    }

    /* renamed from: C */
    public VideoSize mo41343j() {
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return new VideoSize(0, 0);
            }
            return new VideoSize(this.f8303g.mo41266l(), this.f8303g.mo41265m());
        }
    }

    /* renamed from: D */
    private static C0492b<SessionPlayer.C1352b> m41389D() {
        C0492b<SessionPlayer.C1352b> m45412a = C0492b.m45412a();
        m45412a.mo40774a((C0492b<SessionPlayer.C1352b>) new SessionPlayer.C1352b(-2, null));
        return m45412a;
    }

    /* renamed from: a */
    private void m41372a(final C2117g c2117g, final C0492b<? extends SessionPlayer.C1352b> c0492b, final Object obj) {
        c0492b.mo8638a(new Runnable() { // from class: androidx.media2.player.MediaPlayer.1
            @Override // java.lang.Runnable
            public final void run() {
                if (c0492b.isCancelled()) {
                    synchronized (MediaPlayer.this.f8305i) {
                        if (MediaPlayer.this.f8303g.mo41285a(obj)) {
                            MediaPlayer.this.f8305i.remove(c2117g);
                        }
                    }
                }
            }
        }, this.f8304h);
    }

    /* renamed from: b */
    static int m41363b(int i, int i2) {
        if (i < 0) {
            return 0;
        }
        return i > i2 ? i2 : i;
    }

    /* renamed from: c */
    private C0492b<SessionPlayer.C1352b> m41354c(MediaItem mediaItem) {
        C0492b<SessionPlayer.C1352b> m45412a = C0492b.m45412a();
        synchronized (this.f8305i) {
            m41383a(19, m45412a, this.f8303g.mo41289a(mediaItem));
        }
        synchronized (this.f8308l) {
            this.f8321y = true;
        }
        return m45412a;
    }

    /* renamed from: g */
    public TrackInfo mo41350e(int i) {
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return null;
            }
            SessionPlayer.TrackInfo mo41294a = this.f8303g.mo41294a(i);
            if (mo41294a != null) {
                return new TrackInfo(mo41294a);
            }
            return null;
        }
    }

    /* renamed from: A */
    final C0828b<MediaItem, MediaItem> m41392A() {
        MediaItem mediaItem;
        MediaItem mediaItem2;
        int i = this.f8314r;
        if (i < 0) {
            if (this.f8315s == null && this.f8316t == null) {
                return null;
            }
            this.f8315s = null;
            this.f8316t = null;
            return new C0828b<>(null, null);
        }
        if (!C0827a.m44414a(this.f8315s, this.f8310n.get(i))) {
            mediaItem = this.f8310n.get(this.f8314r);
            this.f8315s = mediaItem;
        } else {
            mediaItem = null;
        }
        int i2 = this.f8314r + 1;
        int i3 = i2;
        if (i2 >= this.f8310n.size()) {
            int i4 = this.f8312p;
            i3 = (i4 == 2 || i4 == 3) ? 0 : -1;
        }
        if (i3 == -1) {
            this.f8316t = null;
        } else if (!C0827a.m44414a(this.f8316t, this.f8310n.get(i3))) {
            mediaItem2 = this.f8310n.get(i3);
            this.f8316t = mediaItem2;
            if (mediaItem != null && mediaItem2 == null) {
                return null;
            }
            return new C0828b<>(mediaItem, mediaItem2);
        }
        mediaItem2 = null;
        if (mediaItem != null) {
        }
        return new C0828b<>(mediaItem, mediaItem2);
    }

    /* renamed from: B */
    final void m41391B() {
        synchronized (this.f8306j) {
            Iterator<AbstractC2118h<? extends SessionPlayer.C1352b>> it2 = this.f8306j.iterator();
            while (it2.hasNext()) {
                AbstractC2118h<? extends SessionPlayer.C1352b> next = it2.next();
                if (!next.isCancelled() && !next.m41313b()) {
                    break;
                }
                this.f8306j.removeFirst();
            }
            while (it2.hasNext()) {
                AbstractC2118h<? extends SessionPlayer.C1352b> next2 = it2.next();
                if (!next2.f8438i) {
                    break;
                }
                next2.m41313b();
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: a */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo41388a() {
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return m41389D();
            }
            AbstractC2118h<SessionPlayer.C1352b> abstractC2118h = new AbstractC2118h<SessionPlayer.C1352b>(this.f8304h) { // from class: androidx.media2.player.MediaPlayer.11
                @Override // androidx.media2.player.MediaPlayer.AbstractC2118h
                /* renamed from: a */
                final List<C0492b<SessionPlayer.C1352b>> mo41315a() {
                    C0492b<SessionPlayer.C1352b> c0492b;
                    ArrayList arrayList = new ArrayList();
                    if (MediaPlayer.this.f8307k.f8442a.mo41302a()) {
                        if (MediaPlayer.this.f8303g.mo41268j() == null) {
                            arrayList.add(MediaPlayer.this.m41357c(BitmapDescriptorFactory.HUE_RED));
                        }
                        c0492b = new C0492b<>();
                        synchronized (MediaPlayer.this.f8305i) {
                            MediaPlayer.this.m41383a(5, c0492b, MediaPlayer.this.f8303g.mo41274d());
                        }
                    } else {
                        c0492b = MediaPlayer.this.m41362b(-1, (MediaItem) null);
                    }
                    arrayList.add(c0492b);
                    return arrayList;
                }
            };
            m41371a(abstractC2118h);
            return abstractC2118h;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: a */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo41387a(final float f) {
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return m41389D();
            }
            AbstractC2118h<SessionPlayer.C1352b> abstractC2118h = new AbstractC2118h<SessionPlayer.C1352b>(this.f8304h) { // from class: androidx.media2.player.MediaPlayer.31
                @Override // androidx.media2.player.MediaPlayer.AbstractC2118h
                /* renamed from: a */
                final List<C0492b<SessionPlayer.C1352b>> mo41315a() {
                    if (f <= BitmapDescriptorFactory.HUE_RED) {
                        return MediaPlayer.this.m41355c(-3, null);
                    }
                    ArrayList arrayList = new ArrayList();
                    C0492b<? extends SessionPlayer.C1352b> c0492b = new C0492b<>();
                    synchronized (MediaPlayer.this.f8305i) {
                        MediaPlayer.this.m41383a(24, c0492b, MediaPlayer.this.f8303g.mo41286a(new C2187j.C2188a(MediaPlayer.this.f8303g.mo41267k()).m41186a(f).m41184c()));
                    }
                    arrayList.add(c0492b);
                    return arrayList;
                }
            };
            m41371a(abstractC2118h);
            return abstractC2118h;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: a */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo41386a(final int i) {
        if (i >= 0) {
            synchronized (this.f8317u) {
                if (this.f8320x) {
                    return m41389D();
                }
                AbstractC2118h<SessionPlayer.C1352b> abstractC2118h = new AbstractC2118h<SessionPlayer.C1352b>(this.f8304h) { // from class: androidx.media2.player.MediaPlayer.3
                    @Override // androidx.media2.player.MediaPlayer.AbstractC2118h
                    /* renamed from: a */
                    final List<C0492b<SessionPlayer.C1352b>> mo41315a() {
                        synchronized (MediaPlayer.this.f8308l) {
                            if (i >= MediaPlayer.this.f8309m.f8407a.size()) {
                                return MediaPlayer.this.m41355c(-3, null);
                            }
                            int indexOf = MediaPlayer.this.f8310n.indexOf(MediaPlayer.this.f8309m.m41323a(i));
                            MediaPlayer.this.f8310n.remove(indexOf);
                            if (indexOf < MediaPlayer.this.f8314r) {
                                MediaPlayer.this.f8314r--;
                            }
                            C0828b<MediaItem, MediaItem> m41392A = MediaPlayer.this.m41392A();
                            MediaItem mediaItem = MediaPlayer.this.f8315s;
                            MediaItem mediaItem2 = MediaPlayer.this.f8316t;
                            final List<MediaItem> mo41339n = MediaPlayer.this.mo41339n();
                            final MediaMetadata mo41338o = MediaPlayer.this.mo41338o();
                            MediaPlayer.this.m41370a(new AbstractC2121j() { // from class: androidx.media2.player.MediaPlayer.3.1
                                @Override // androidx.media2.player.MediaPlayer.AbstractC2121j
                                public final void callCallback(SessionPlayer.AbstractC1351a abstractC1351a) {
                                    abstractC1351a.onPlaylistChanged(MediaPlayer.this, mo41339n, mo41338o);
                                }
                            });
                            ArrayList arrayList = new ArrayList();
                            if (m41392A == null) {
                                arrayList.add(MediaPlayer.this.m41362b(0, (MediaItem) null));
                            } else if (m41392A.f3556a != null) {
                                arrayList.addAll(MediaPlayer.this.m41376a(mediaItem, mediaItem2));
                            } else if (m41392A.f3557b != null) {
                                arrayList.add(MediaPlayer.this.m41360b(mediaItem2));
                            }
                            return arrayList;
                        }
                    }
                };
                m41371a(abstractC2118h);
                return abstractC2118h;
            }
        }
        throw new IllegalArgumentException("index shouldn't be negative");
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: a */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo41385a(final int i, final int i2) {
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("indices shouldn't be negative");
        }
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return m41389D();
            }
            AbstractC2118h<SessionPlayer.C1352b> abstractC2118h = new AbstractC2118h<SessionPlayer.C1352b>(this.f8304h) { // from class: androidx.media2.player.MediaPlayer.4
                @Override // androidx.media2.player.MediaPlayer.AbstractC2118h
                /* renamed from: a */
                final List<C0492b<SessionPlayer.C1352b>> mo41315a() {
                    synchronized (MediaPlayer.this.f8308l) {
                        if (i < MediaPlayer.this.f8309m.f8407a.size() && i2 < MediaPlayer.this.f8309m.f8407a.size()) {
                            MediaItem m41323a = MediaPlayer.this.f8309m.m41323a(i);
                            MediaPlayer.this.f8309m.m41322a(i2, m41323a);
                            if (MediaPlayer.this.f8313q == 0) {
                                MediaPlayer.this.f8310n.remove(i);
                                MediaPlayer.this.f8310n.add(i2, m41323a);
                                if (m41323a == MediaPlayer.this.f8315s) {
                                    MediaPlayer.this.f8314r = i2;
                                }
                            }
                            C0828b<MediaItem, MediaItem> m41392A = MediaPlayer.this.m41392A();
                            MediaItem mediaItem = MediaPlayer.this.f8315s;
                            MediaItem mediaItem2 = MediaPlayer.this.f8316t;
                            final List<MediaItem> mo41339n = MediaPlayer.this.mo41339n();
                            final MediaMetadata mo41338o = MediaPlayer.this.mo41338o();
                            MediaPlayer.this.m41370a(new AbstractC2121j() { // from class: androidx.media2.player.MediaPlayer.4.1
                                @Override // androidx.media2.player.MediaPlayer.AbstractC2121j
                                public final void callCallback(SessionPlayer.AbstractC1351a abstractC1351a) {
                                    abstractC1351a.onPlaylistChanged(MediaPlayer.this, mo41339n, mo41338o);
                                }
                            });
                            ArrayList arrayList = new ArrayList();
                            if (m41392A == null) {
                                arrayList.add(MediaPlayer.this.m41362b(0, (MediaItem) null));
                            } else if (m41392A.f3556a != null) {
                                arrayList.addAll(MediaPlayer.this.m41376a(mediaItem, mediaItem2));
                            } else if (m41392A.f3557b != null) {
                                arrayList.add(MediaPlayer.this.m41360b(mediaItem2));
                            }
                            return arrayList;
                        }
                        return MediaPlayer.this.m41355c(-3, null);
                    }
                }
            };
            m41371a(abstractC2118h);
            return abstractC2118h;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: a */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo41382a(final int i, final MediaItem mediaItem) {
        Objects.requireNonNull(mediaItem, "item shouldn't be null");
        if (!(mediaItem instanceof FileMediaItem) || !((FileMediaItem) mediaItem).m43204c()) {
            if (i < 0) {
                throw new IllegalArgumentException("index shouldn't be negative");
            }
            synchronized (this.f8317u) {
                if (this.f8320x) {
                    return m41389D();
                }
                AbstractC2118h<SessionPlayer.C1352b> abstractC2118h = new AbstractC2118h<SessionPlayer.C1352b>(this.f8304h) { // from class: androidx.media2.player.MediaPlayer.2
                    @Override // androidx.media2.player.MediaPlayer.AbstractC2118h
                    /* renamed from: a */
                    final List<C0492b<SessionPlayer.C1352b>> mo41315a() {
                        synchronized (MediaPlayer.this.f8308l) {
                            if (MediaPlayer.this.f8309m.m41321a(mediaItem)) {
                                return MediaPlayer.this.m41355c(-3, mediaItem);
                            }
                            int m41363b = MediaPlayer.m41363b(i, MediaPlayer.this.f8309m.f8407a.size());
                            MediaPlayer.this.f8309m.m41322a(m41363b, mediaItem);
                            if (MediaPlayer.this.f8313q == 0) {
                                MediaPlayer.this.f8310n.add(m41363b, mediaItem);
                            } else {
                                m41363b = (int) (Math.random() * (MediaPlayer.this.f8310n.size() + 1));
                                MediaPlayer.this.f8310n.add(m41363b, mediaItem);
                            }
                            if (m41363b <= MediaPlayer.this.f8314r) {
                                MediaPlayer.this.f8314r++;
                            }
                            C0828b<MediaItem, MediaItem> m41392A = MediaPlayer.this.m41392A();
                            final List<MediaItem> mo41339n = MediaPlayer.this.mo41339n();
                            final MediaMetadata mo41338o = MediaPlayer.this.mo41338o();
                            MediaPlayer.this.m41370a(new AbstractC2121j() { // from class: androidx.media2.player.MediaPlayer.2.1
                                @Override // androidx.media2.player.MediaPlayer.AbstractC2121j
                                public final void callCallback(SessionPlayer.AbstractC1351a abstractC1351a) {
                                    abstractC1351a.onPlaylistChanged(MediaPlayer.this, mo41339n, mo41338o);
                                }
                            });
                            if (m41392A == null || m41392A.f3557b == null) {
                                return MediaPlayer.this.m41355c(0, null);
                            }
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(MediaPlayer.this.m41360b(m41392A.f3557b));
                            return arrayList;
                        }
                    }
                };
                m41371a(abstractC2118h);
                return abstractC2118h;
            }
        }
        throw new IllegalArgumentException("File descriptor is closed. ".concat(String.valueOf(mediaItem)));
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: a */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo41381a(final long j) {
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return m41389D();
            }
            AbstractC2118h<SessionPlayer.C1352b> abstractC2118h = new AbstractC2118h<SessionPlayer.C1352b>(this.f8304h, true) { // from class: androidx.media2.player.MediaPlayer.30
                @Override // androidx.media2.player.MediaPlayer.AbstractC2118h
                /* renamed from: a */
                final List<C0492b<SessionPlayer.C1352b>> mo41315a() {
                    ArrayList arrayList = new ArrayList();
                    C0492b<? extends SessionPlayer.C1352b> c0492b = new C0492b<>();
                    synchronized (MediaPlayer.this.f8305i) {
                        MediaPlayer.this.m41383a(14, c0492b, MediaPlayer.this.f8303g.mo41293a(j, 0));
                    }
                    arrayList.add(c0492b);
                    return arrayList;
                }
            };
            m41371a(abstractC2118h);
            return abstractC2118h;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: a */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo41380a(final Surface surface) {
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return m41389D();
            }
            AbstractC2118h<SessionPlayer.C1352b> abstractC2118h = new AbstractC2118h<SessionPlayer.C1352b>(this.f8304h) { // from class: androidx.media2.player.MediaPlayer.12
                @Override // androidx.media2.player.MediaPlayer.AbstractC2118h
                /* renamed from: a */
                final List<C0492b<SessionPlayer.C1352b>> mo41315a() {
                    ArrayList arrayList = new ArrayList();
                    C0492b<? extends SessionPlayer.C1352b> c0492b = new C0492b<>();
                    synchronized (MediaPlayer.this.f8305i) {
                        MediaPlayer.this.m41383a(27, c0492b, MediaPlayer.this.f8303g.mo41292a(surface));
                    }
                    arrayList.add(c0492b);
                    return arrayList;
                }
            };
            m41371a(abstractC2118h);
            return abstractC2118h;
        }
    }

    /* renamed from: a */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> m41379a(final AudioAttributesCompat audioAttributesCompat) {
        Objects.requireNonNull(audioAttributesCompat, "attr shouldn't be null");
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return m41389D();
            }
            AbstractC2118h<SessionPlayer.C1352b> abstractC2118h = new AbstractC2118h<SessionPlayer.C1352b>(this.f8304h) { // from class: androidx.media2.player.MediaPlayer.32
                @Override // androidx.media2.player.MediaPlayer.AbstractC2118h
                /* renamed from: a */
                final List<C0492b<SessionPlayer.C1352b>> mo41315a() {
                    ArrayList arrayList = new ArrayList();
                    C0492b<? extends SessionPlayer.C1352b> c0492b = new C0492b<>();
                    synchronized (MediaPlayer.this.f8305i) {
                        MediaPlayer.this.m41383a(16, c0492b, MediaPlayer.this.f8303g.mo41290a(audioAttributesCompat));
                    }
                    arrayList.add(c0492b);
                    return arrayList;
                }
            };
            m41371a(abstractC2118h);
            return abstractC2118h;
        }
    }

    /* renamed from: a */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> m41378a(MediaItem mediaItem) {
        Objects.requireNonNull(mediaItem, "item shouldn't be null");
        if (!(mediaItem instanceof FileMediaItem) || !((FileMediaItem) mediaItem).m43204c()) {
            synchronized (this.f8317u) {
                if (this.f8320x) {
                    return m41389D();
                }
                C209133 c209133 = new C209133(this.f8304h, mediaItem);
                m41371a(c209133);
                return c209133;
            }
        }
        throw new IllegalArgumentException("File descriptor is closed. ".concat(String.valueOf(mediaItem)));
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: a */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo41375a(final MediaMetadata mediaMetadata) {
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return m41389D();
            }
            AbstractC2118h<SessionPlayer.C1352b> abstractC2118h = new AbstractC2118h<SessionPlayer.C1352b>(this.f8304h) { // from class: androidx.media2.player.MediaPlayer.8
                @Override // androidx.media2.player.MediaPlayer.AbstractC2118h
                /* renamed from: a */
                final List<C0492b<SessionPlayer.C1352b>> mo41315a() {
                    synchronized (MediaPlayer.this.f8308l) {
                        MediaPlayer.this.f8311o = mediaMetadata;
                    }
                    MediaPlayer.this.m41370a(new AbstractC2121j() { // from class: androidx.media2.player.MediaPlayer.8.1
                        @Override // androidx.media2.player.MediaPlayer.AbstractC2121j
                        public final void callCallback(SessionPlayer.AbstractC1351a abstractC1351a) {
                            abstractC1351a.onPlaylistMetadataChanged(MediaPlayer.this, mediaMetadata);
                        }
                    });
                    return MediaPlayer.this.m41355c(0, null);
                }
            };
            m41371a(abstractC2118h);
            return abstractC2118h;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: a */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo41374a(final SessionPlayer.TrackInfo trackInfo) {
        Objects.requireNonNull(trackInfo, "trackInfo shouldn't be null");
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return m41389D();
            }
            AbstractC2118h<SessionPlayer.C1352b> abstractC2118h = new AbstractC2118h<SessionPlayer.C1352b>(this.f8304h) { // from class: androidx.media2.player.MediaPlayer.16
                @Override // androidx.media2.player.MediaPlayer.AbstractC2118h
                /* renamed from: a */
                final List<C0492b<SessionPlayer.C1352b>> mo41315a() {
                    ArrayList arrayList = new ArrayList();
                    C0492b<? extends SessionPlayer.C1352b> c0492b = new C0492b<>();
                    synchronized (MediaPlayer.this.f8305i) {
                        MediaPlayer.this.m41384a(15, c0492b, trackInfo, MediaPlayer.this.f8303g.mo41279b(trackInfo.f5048a));
                    }
                    arrayList.add(c0492b);
                    return arrayList;
                }
            };
            m41371a(abstractC2118h);
            return abstractC2118h;
        }
    }

    /* renamed from: a */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> m41369a(final C2187j c2187j) {
        Objects.requireNonNull(c2187j, "params shouldn't be null");
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return m41389D();
            }
            AbstractC2118h<SessionPlayer.C1352b> abstractC2118h = new AbstractC2118h<SessionPlayer.C1352b>(this.f8304h) { // from class: androidx.media2.player.MediaPlayer.14
                @Override // androidx.media2.player.MediaPlayer.AbstractC2118h
                /* renamed from: a */
                final List<C0492b<SessionPlayer.C1352b>> mo41315a() {
                    ArrayList arrayList = new ArrayList();
                    C0492b<? extends SessionPlayer.C1352b> c0492b = new C0492b<>();
                    synchronized (MediaPlayer.this.f8305i) {
                        MediaPlayer.this.m41383a(24, c0492b, MediaPlayer.this.f8303g.mo41286a(c2187j));
                    }
                    arrayList.add(c0492b);
                    return arrayList;
                }
            };
            m41371a(abstractC2118h);
            return abstractC2118h;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: a */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo41368a(List<MediaItem> list, MediaMetadata mediaMetadata) {
        String str;
        Objects.requireNonNull(list, "list shouldn't be null");
        if (!list.isEmpty()) {
            synchronized (this.f8317u) {
                if (this.f8320x) {
                    return m41389D();
                }
                Iterator<MediaItem> it2 = list.iterator();
                while (true) {
                    str = null;
                    if (!it2.hasNext()) {
                        break;
                    }
                    MediaItem next = it2.next();
                    if (next == null) {
                        str = "list shouldn't contain null item";
                        break;
                    }
                    if ((next instanceof FileMediaItem) && ((FileMediaItem) next).m43204c()) {
                        str = "File descriptor is closed. ".concat(String.valueOf(next));
                        break;
                    }
                }
                if (str == null) {
                    C209234 c209234 = new C209234(this.f8304h, mediaMetadata, list);
                    m41371a(c209234);
                    return c209234;
                }
                for (MediaItem mediaItem : list) {
                    if (mediaItem instanceof FileMediaItem) {
                        FileMediaItem fileMediaItem = (FileMediaItem) mediaItem;
                        fileMediaItem.m43206a();
                        fileMediaItem.m43205b();
                    }
                }
                throw new IllegalArgumentException(str);
            }
        }
        throw new IllegalArgumentException("list shouldn't be empty");
    }

    /* renamed from: a */
    final List<C0492b<SessionPlayer.C1352b>> m41376a(MediaItem mediaItem, MediaItem mediaItem2) {
        boolean z;
        Objects.requireNonNull(mediaItem, "curItem shouldn't be null");
        synchronized (this.f8308l) {
            z = this.f8321y;
        }
        ArrayList arrayList = new ArrayList();
        if (z) {
            arrayList.add(m41360b(mediaItem));
            arrayList.add(m41329y());
        } else {
            arrayList.add(m41354c(mediaItem));
        }
        if (mediaItem2 != null) {
            arrayList.add(m41360b(mediaItem2));
        }
        return arrayList;
    }

    /* renamed from: a */
    final void m41384a(int i, C0492b<? extends SessionPlayer.C1352b> c0492b, SessionPlayer.TrackInfo trackInfo, Object obj) {
        C2117g c2117g = new C2117g(i, c0492b, trackInfo);
        this.f8305i.add(c2117g);
        m41372a(c2117g, c0492b, obj);
    }

    /* renamed from: a */
    final void m41383a(int i, C0492b<? extends SessionPlayer.C1352b> c0492b, Object obj) {
        C2117g c2117g = new C2117g(i, c0492b);
        this.f8305i.add(c2117g);
        m41372a(c2117g, c0492b, obj);
    }

    /* renamed from: a */
    final void m41377a(final MediaItem mediaItem, final int i) {
        Integer put;
        synchronized (this.f8317u) {
            put = this.f8319w.put(mediaItem, Integer.valueOf(i));
        }
        if (put == null || put.intValue() != i) {
            m41370a(new AbstractC2121j() { // from class: androidx.media2.player.MediaPlayer.20
                @Override // androidx.media2.player.MediaPlayer.AbstractC2121j
                public final void callCallback(SessionPlayer.AbstractC1351a abstractC1351a) {
                    abstractC1351a.onBufferingStateChanged(MediaPlayer.this, mediaItem, i);
                }
            });
        }
    }

    /* renamed from: a */
    final void m41373a(final AbstractC2105d abstractC2105d) {
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return;
            }
            for (C0828b<SessionPlayer.AbstractC1351a, Executor> c0828b : m43183v()) {
                if (c0828b.f3556a instanceof AbstractC2120i) {
                    final AbstractC2120i abstractC2120i = (AbstractC2120i) c0828b.f3556a;
                    c0828b.f3557b.execute(new Runnable() { // from class: androidx.media2.player.MediaPlayer.22
                        @Override // java.lang.Runnable
                        public final void run() {
                            abstractC2105d.mo41317a(abstractC2120i);
                        }
                    });
                }
            }
        }
    }

    /* renamed from: a */
    final void m41371a(AbstractC2118h<? extends SessionPlayer.C1352b> abstractC2118h) {
        synchronized (this.f8306j) {
            this.f8306j.add(abstractC2118h);
            m41391B();
        }
    }

    /* renamed from: a */
    final void m41370a(final AbstractC2121j abstractC2121j) {
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return;
            }
            for (C0828b<SessionPlayer.AbstractC1351a, Executor> c0828b : m43183v()) {
                final SessionPlayer.AbstractC1351a abstractC1351a = c0828b.f3556a;
                c0828b.f3557b.execute(new Runnable() { // from class: androidx.media2.player.MediaPlayer.21
                    @Override // java.lang.Runnable
                    public final void run() {
                        abstractC2121j.callCallback(abstractC1351a);
                    }
                });
            }
        }
    }

    /* renamed from: a */
    public final void m41367a(Executor executor, AbstractC2120i abstractC2120i) {
        super.m43184a(executor, (SessionPlayer.AbstractC1351a) abstractC2120i);
    }

    /* renamed from: b */
    final C0492b<SessionPlayer.C1352b> m41362b(int i, MediaItem mediaItem) {
        C0492b<SessionPlayer.C1352b> m45412a = C0492b.m45412a();
        MediaItem mediaItem2 = mediaItem;
        if (mediaItem == null) {
            mediaItem2 = this.f8303g.mo41280b();
        }
        m45412a.mo40774a((C0492b<SessionPlayer.C1352b>) new SessionPlayer.C1352b(i, mediaItem2));
        return m45412a;
    }

    /* renamed from: b */
    final C0492b<SessionPlayer.C1352b> m41360b(MediaItem mediaItem) {
        C0492b<SessionPlayer.C1352b> m45412a = C0492b.m45412a();
        synchronized (this.f8305i) {
            m41383a(22, m45412a, this.f8303g.mo41278b(mediaItem));
        }
        return m45412a;
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: b */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo41366b() {
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return m41389D();
            }
            AbstractC2118h<SessionPlayer.C1352b> abstractC2118h = new AbstractC2118h<SessionPlayer.C1352b>(this.f8304h) { // from class: androidx.media2.player.MediaPlayer.18
                @Override // androidx.media2.player.MediaPlayer.AbstractC2118h
                /* renamed from: a */
                final List<C0492b<SessionPlayer.C1352b>> mo41315a() {
                    ArrayList arrayList = new ArrayList();
                    C0492b<? extends SessionPlayer.C1352b> c0492b = new C0492b<>();
                    MediaPlayer.this.f8307k.f8442a.mo41301b();
                    synchronized (MediaPlayer.this.f8305i) {
                        MediaPlayer.this.m41383a(4, c0492b, MediaPlayer.this.f8303g.mo41273e());
                    }
                    arrayList.add(c0492b);
                    return arrayList;
                }
            };
            m41371a(abstractC2118h);
            return abstractC2118h;
        }
    }

    /* renamed from: b */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> m41365b(final float f) {
        if (f < BitmapDescriptorFactory.HUE_RED || f > 1.0f) {
            throw new IllegalArgumentException("volume should be between 0.0 and 1.0");
        }
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return m41389D();
            }
            AbstractC2118h<SessionPlayer.C1352b> abstractC2118h = new AbstractC2118h<SessionPlayer.C1352b>(this.f8304h) { // from class: androidx.media2.player.MediaPlayer.13
                @Override // androidx.media2.player.MediaPlayer.AbstractC2118h
                /* renamed from: a */
                final List<C0492b<SessionPlayer.C1352b>> mo41315a() {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(MediaPlayer.this.m41357c(f));
                    return arrayList;
                }
            };
            m41371a(abstractC2118h);
            return abstractC2118h;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: b */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo41364b(final int i) {
        if (i >= 0) {
            synchronized (this.f8317u) {
                if (this.f8320x) {
                    return m41389D();
                }
                AbstractC2118h<SessionPlayer.C1352b> abstractC2118h = new AbstractC2118h<SessionPlayer.C1352b>(this.f8304h) { // from class: androidx.media2.player.MediaPlayer.7
                    @Override // androidx.media2.player.MediaPlayer.AbstractC2118h
                    /* renamed from: a */
                    final List<C0492b<SessionPlayer.C1352b>> mo41315a() {
                        synchronized (MediaPlayer.this.f8308l) {
                            if (i >= MediaPlayer.this.f8309m.f8407a.size()) {
                                return MediaPlayer.this.m41355c(-3, null);
                            }
                            MediaPlayer mediaPlayer = MediaPlayer.this;
                            mediaPlayer.f8314r = mediaPlayer.f8310n.indexOf(MediaPlayer.this.f8309m.m41320b(i));
                            MediaPlayer.this.m41392A();
                            return MediaPlayer.this.m41376a(MediaPlayer.this.f8315s, MediaPlayer.this.f8316t);
                        }
                    }
                };
                m41371a(abstractC2118h);
                return abstractC2118h;
            }
        }
        throw new IllegalArgumentException("index shouldn't be negative");
    }

    /* renamed from: b */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> m41361b(final long j) {
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return m41389D();
            }
            AbstractC2118h<SessionPlayer.C1352b> abstractC2118h = new AbstractC2118h<SessionPlayer.C1352b>(this.f8304h, true) { // from class: androidx.media2.player.MediaPlayer.15
                @Override // androidx.media2.player.MediaPlayer.AbstractC2118h
                /* renamed from: a */
                final List<C0492b<SessionPlayer.C1352b>> mo41315a() {
                    ArrayList arrayList = new ArrayList();
                    C0492b<? extends SessionPlayer.C1352b> c0492b = new C0492b<>();
                    int intValue = MediaPlayer.f8301e.containsKey(Integer.valueOf(r8)) ? MediaPlayer.f8301e.get(Integer.valueOf(r8)).intValue() : 1;
                    synchronized (MediaPlayer.this.f8305i) {
                        MediaPlayer.this.m41383a(14, c0492b, MediaPlayer.this.f8303g.mo41293a(j, intValue));
                    }
                    arrayList.add(c0492b);
                    return arrayList;
                }
            };
            m41371a(abstractC2118h);
            return abstractC2118h;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: b */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo41359b(final SessionPlayer.TrackInfo trackInfo) {
        Objects.requireNonNull(trackInfo, "trackInfo shouldn't be null");
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return m41389D();
            }
            AbstractC2118h<SessionPlayer.C1352b> abstractC2118h = new AbstractC2118h<SessionPlayer.C1352b>(this.f8304h) { // from class: androidx.media2.player.MediaPlayer.17
                @Override // androidx.media2.player.MediaPlayer.AbstractC2118h
                /* renamed from: a */
                final List<C0492b<SessionPlayer.C1352b>> mo41315a() {
                    ArrayList arrayList = new ArrayList();
                    C0492b<? extends SessionPlayer.C1352b> c0492b = new C0492b<>();
                    synchronized (MediaPlayer.this.f8305i) {
                        MediaPlayer.this.m41384a(2, c0492b, trackInfo, MediaPlayer.this.f8303g.mo41275c(trackInfo.f5048a));
                    }
                    arrayList.add(c0492b);
                    return arrayList;
                }
            };
            m41371a(abstractC2118h);
            return abstractC2118h;
        }
    }

    /* renamed from: c */
    final C0492b<SessionPlayer.C1352b> m41357c(float f) {
        C0492b<SessionPlayer.C1352b> m45412a = C0492b.m45412a();
        synchronized (this.f8305i) {
            m41383a(26, m45412a, this.f8303g.mo41295a(f));
        }
        return m45412a;
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: c */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo41358c() {
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return m41389D();
            }
            AbstractC2118h<SessionPlayer.C1352b> abstractC2118h = new AbstractC2118h<SessionPlayer.C1352b>(this.f8304h) { // from class: androidx.media2.player.MediaPlayer.28
                @Override // androidx.media2.player.MediaPlayer.AbstractC2118h
                /* renamed from: a */
                final List<C0492b<SessionPlayer.C1352b>> mo41315a() {
                    ArrayList arrayList = new ArrayList();
                    C0492b<? extends SessionPlayer.C1352b> c0492b = new C0492b<>();
                    synchronized (MediaPlayer.this.f8305i) {
                        MediaPlayer.this.m41383a(6, c0492b, MediaPlayer.this.f8303g.mo41276c());
                    }
                    MediaPlayer mediaPlayer = MediaPlayer.this;
                    mediaPlayer.m41377a(mediaPlayer.f8303g.mo41280b(), 2);
                    arrayList.add(c0492b);
                    return arrayList;
                }
            };
            m41371a(abstractC2118h);
            return abstractC2118h;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: c */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo41356c(final int i) {
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return m41389D();
            }
            AbstractC2118h<SessionPlayer.C1352b> abstractC2118h = new AbstractC2118h<SessionPlayer.C1352b>(this.f8304h) { // from class: androidx.media2.player.MediaPlayer.9
                @Override // androidx.media2.player.MediaPlayer.AbstractC2118h
                /* renamed from: a */
                final List<C0492b<SessionPlayer.C1352b>> mo41315a() {
                    boolean z;
                    int i2 = i;
                    if (i2 < 0 || i2 > 3) {
                        return MediaPlayer.this.m41355c(-3, null);
                    }
                    synchronized (MediaPlayer.this.f8308l) {
                        int i3 = MediaPlayer.this.f8312p;
                        int i4 = i;
                        z = i3 != i4;
                        MediaPlayer.this.f8312p = i4;
                    }
                    if (z) {
                        MediaPlayer.this.m41370a(new AbstractC2121j() { // from class: androidx.media2.player.MediaPlayer.9.1
                            @Override // androidx.media2.player.MediaPlayer.AbstractC2121j
                            public final void callCallback(SessionPlayer.AbstractC1351a abstractC1351a) {
                                abstractC1351a.onRepeatModeChanged(MediaPlayer.this, i);
                            }
                        });
                    }
                    return MediaPlayer.this.m41355c(0, null);
                }
            };
            m41371a(abstractC2118h);
            return abstractC2118h;
        }
    }

    /* renamed from: c */
    final List<C0492b<SessionPlayer.C1352b>> m41355c(int i, MediaItem mediaItem) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(m41362b(i, mediaItem));
        return arrayList;
    }

    @Override // androidx.media2.common.SessionPlayer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        super.close();
        synchronized (this.f8317u) {
            if (!this.f8320x) {
                this.f8320x = true;
                synchronized (this.f8305i) {
                    Iterator<C2117g> it2 = this.f8305i.iterator();
                    while (it2.hasNext()) {
                        it2.next().f8436b.cancel(true);
                    }
                    this.f8305i.clear();
                }
                synchronized (this.f8306j) {
                    Iterator<AbstractC2118h<? extends SessionPlayer.C1352b>> it3 = this.f8306j.iterator();
                    while (it3.hasNext()) {
                        AbstractC2118h<? extends SessionPlayer.C1352b> next = it3.next();
                        if (next.f8439j && !next.isDone() && !next.isCancelled()) {
                            next.cancel(true);
                        }
                    }
                    this.f8306j.clear();
                }
                synchronized (this.f8317u) {
                    this.f8318v = 0;
                    this.f8319w.clear();
                }
                synchronized (this.f8308l) {
                    this.f8309m.m41324a();
                    this.f8310n.clear();
                    this.f8315s = null;
                    this.f8316t = null;
                    this.f8314r = -1;
                    this.f8321y = false;
                }
                this.f8307k.f8442a.mo41300c();
                this.f8303g.mo41262p();
                this.f8307k.f8442a.mo41299d();
                this.f8303g.mo41261q();
                this.f8304h.shutdown();
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: d */
    public final int mo41353d() {
        int i;
        synchronized (this.f8317u) {
            i = this.f8318v;
        }
        return i;
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: d */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo41352d(final int i) {
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return m41389D();
            }
            AbstractC2118h<SessionPlayer.C1352b> abstractC2118h = new AbstractC2118h<SessionPlayer.C1352b>(this.f8304h) { // from class: androidx.media2.player.MediaPlayer.10
                @Override // androidx.media2.player.MediaPlayer.AbstractC2118h
                /* renamed from: a */
                final List<C0492b<SessionPlayer.C1352b>> mo41315a() {
                    boolean z;
                    int i2 = i;
                    if (i2 < 0 || i2 > 2) {
                        return MediaPlayer.this.m41355c(-3, null);
                    }
                    synchronized (MediaPlayer.this.f8308l) {
                        int i3 = MediaPlayer.this.f8313q;
                        int i4 = i;
                        z = i3 != i4;
                        MediaPlayer.this.f8313q = i4;
                        MediaPlayer.this.m41328z();
                    }
                    if (z) {
                        MediaPlayer.this.m41370a(new AbstractC2121j() { // from class: androidx.media2.player.MediaPlayer.10.1
                            @Override // androidx.media2.player.MediaPlayer.AbstractC2121j
                            public final void callCallback(SessionPlayer.AbstractC1351a abstractC1351a) {
                                abstractC1351a.onShuffleModeChanged(MediaPlayer.this, i);
                            }
                        });
                    }
                    return MediaPlayer.this.m41355c(0, null);
                }
            };
            m41371a(abstractC2118h);
            return abstractC2118h;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: e */
    public final long mo41351e() {
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return Long.MIN_VALUE;
            }
            try {
                long mo41272f = this.f8303g.mo41272f();
                if (mo41272f < 0) {
                    return Long.MIN_VALUE;
                }
                return mo41272f;
            } catch (IllegalStateException e) {
                return Long.MIN_VALUE;
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: f */
    public final long mo41349f() {
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return Long.MIN_VALUE;
            }
            try {
                long mo41271g = this.f8303g.mo41271g();
                if (mo41271g < 0) {
                    return Long.MIN_VALUE;
                }
                return mo41271g;
            } catch (IllegalStateException e) {
                return Long.MIN_VALUE;
            }
        }
    }

    /* renamed from: f */
    final void m41348f(final int i) {
        boolean z;
        synchronized (this.f8317u) {
            if (this.f8318v != i) {
                this.f8318v = i;
                z = true;
            } else {
                z = false;
            }
        }
        if (z) {
            m41370a(new AbstractC2121j() { // from class: androidx.media2.player.MediaPlayer.19
                @Override // androidx.media2.player.MediaPlayer.AbstractC2121j
                public final void callCallback(SessionPlayer.AbstractC1351a abstractC1351a) {
                    abstractC1351a.onPlayerStateChanged(MediaPlayer.this, i);
                }
            });
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: g */
    public final long mo41347g() {
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return Long.MIN_VALUE;
            }
            try {
                long mo41270h = this.f8303g.mo41270h();
                if (mo41270h < 0) {
                    return Long.MIN_VALUE;
                }
                return mo41270h;
            } catch (IllegalStateException e) {
                return Long.MIN_VALUE;
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: h */
    public final int mo41345h() {
        Integer num;
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return 0;
            }
            synchronized (this.f8317u) {
                num = this.f8319w.get(this.f8303g.mo41280b());
            }
            if (num != null) {
                return num.intValue();
            }
            return 0;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: i */
    public final float mo41344i() {
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return 1.0f;
            }
            try {
                return this.f8303g.mo41267k().m41188c().floatValue();
            } catch (IllegalStateException e) {
                return 1.0f;
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: k */
    public final AudioAttributesCompat mo41342k() {
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return null;
            }
            try {
                return this.f8303g.mo41268j();
            } catch (IllegalStateException e) {
                return null;
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: l */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo41341l() {
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return m41389D();
            }
            AbstractC2118h<SessionPlayer.C1352b> abstractC2118h = new AbstractC2118h<SessionPlayer.C1352b>(this.f8304h) { // from class: androidx.media2.player.MediaPlayer.5
                @Override // androidx.media2.player.MediaPlayer.AbstractC2118h
                /* renamed from: a */
                final List<C0492b<SessionPlayer.C1352b>> mo41315a() {
                    synchronized (MediaPlayer.this.f8308l) {
                        if (MediaPlayer.this.f8314r < 0) {
                            return MediaPlayer.this.m41355c(-2, null);
                        }
                        int i = MediaPlayer.this.f8314r - 1;
                        int i2 = i;
                        if (i < 0) {
                            if (MediaPlayer.this.f8312p != 2 && MediaPlayer.this.f8312p != 3) {
                                return MediaPlayer.this.m41355c(-2, null);
                            }
                            i2 = MediaPlayer.this.f8310n.size() - 1;
                        }
                        MediaPlayer.this.f8314r = i2;
                        MediaPlayer.this.m41392A();
                        return MediaPlayer.this.m41376a(MediaPlayer.this.f8315s, MediaPlayer.this.f8316t);
                    }
                }
            };
            m41371a(abstractC2118h);
            return abstractC2118h;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: m */
    public final AbstractFutureC15579a<SessionPlayer.C1352b> mo41340m() {
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return m41389D();
            }
            AbstractC2118h<SessionPlayer.C1352b> abstractC2118h = new AbstractC2118h<SessionPlayer.C1352b>(this.f8304h) { // from class: androidx.media2.player.MediaPlayer.6
                @Override // androidx.media2.player.MediaPlayer.AbstractC2118h
                /* renamed from: a */
                final List<C0492b<SessionPlayer.C1352b>> mo41315a() {
                    synchronized (MediaPlayer.this.f8308l) {
                        if (MediaPlayer.this.f8314r < 0) {
                            return MediaPlayer.this.m41355c(-2, null);
                        }
                        int i = MediaPlayer.this.f8314r + 1;
                        int i2 = i;
                        if (i >= MediaPlayer.this.f8310n.size()) {
                            if (MediaPlayer.this.f8312p != 2 && MediaPlayer.this.f8312p != 3) {
                                return MediaPlayer.this.m41355c(-2, null);
                            }
                            i2 = 0;
                        }
                        MediaPlayer.this.f8314r = i2;
                        MediaPlayer.this.m41392A();
                        MediaItem mediaItem = MediaPlayer.this.f8315s;
                        MediaItem mediaItem2 = MediaPlayer.this.f8316t;
                        if (mediaItem != null) {
                            return MediaPlayer.this.m41376a(mediaItem, mediaItem2);
                        }
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(MediaPlayer.this.m41329y());
                        return arrayList;
                    }
                }
            };
            m41371a(abstractC2118h);
            return abstractC2118h;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: n */
    public final List<MediaItem> mo41339n() {
        synchronized (this.f8317u) {
            ArrayList arrayList = null;
            if (this.f8320x) {
                return null;
            }
            synchronized (this.f8308l) {
                if (!this.f8309m.f8407a.isEmpty()) {
                    arrayList = new ArrayList(this.f8309m.f8407a);
                }
            }
            return arrayList;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: o */
    public final MediaMetadata mo41338o() {
        MediaMetadata mediaMetadata;
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return null;
            }
            synchronized (this.f8308l) {
                mediaMetadata = this.f8311o;
            }
            return mediaMetadata;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: p */
    public final int mo41337p() {
        int i;
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return 0;
            }
            synchronized (this.f8308l) {
                i = this.f8312p;
            }
            return i;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: q */
    public final int mo41336q() {
        int i;
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return 0;
            }
            synchronized (this.f8308l) {
                i = this.f8313q;
            }
            return i;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: r */
    public final MediaItem mo41335r() {
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return null;
            }
            return this.f8303g.mo41280b();
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: s */
    public final int mo41334s() {
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return -1;
            }
            synchronized (this.f8308l) {
                int i = this.f8314r;
                if (i < 0) {
                    return -1;
                }
                return this.f8309m.m41319b(this.f8310n.get(i));
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: t */
    public final int mo41333t() {
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return -1;
            }
            synchronized (this.f8308l) {
                int i = this.f8314r;
                if (i < 0) {
                    return -1;
                }
                int i2 = i - 1;
                if (i2 >= 0) {
                    return this.f8309m.m41319b(this.f8310n.get(i2));
                }
                int i3 = this.f8312p;
                if (i3 != 2 && i3 != 3) {
                    return -1;
                }
                C2104c c2104c = this.f8309m;
                ArrayList<MediaItem> arrayList = this.f8310n;
                return c2104c.m41319b(arrayList.get(arrayList.size() - 1));
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: u */
    public final int mo41332u() {
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return -1;
            }
            synchronized (this.f8308l) {
                int i = this.f8314r;
                if (i < 0) {
                    return -1;
                }
                int i2 = i + 1;
                if (i2 < this.f8310n.size()) {
                    return this.f8309m.m41319b(this.f8310n.get(i2));
                }
                int i3 = this.f8312p;
                if (i3 != 2 && i3 != 3) {
                    return -1;
                }
                return this.f8309m.m41319b(this.f8310n.get(0));
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: w */
    public final List<SessionPlayer.TrackInfo> mo41331w() {
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return Collections.emptyList();
            }
            return this.f8303g.mo41263o();
        }
    }

    /* renamed from: x */
    public final float m41330x() {
        synchronized (this.f8317u) {
            if (this.f8320x) {
                return 1.0f;
            }
            return this.f8303g.mo41264n();
        }
    }

    /* renamed from: y */
    final C0492b<SessionPlayer.C1352b> m41329y() {
        C0492b<SessionPlayer.C1352b> m45412a = C0492b.m45412a();
        synchronized (this.f8305i) {
            m41383a(29, m45412a, this.f8303g.mo41269i());
        }
        return m45412a;
    }

    /* renamed from: z */
    final void m41328z() {
        this.f8310n.clear();
        this.f8310n.addAll(this.f8309m.f8407a);
        int i = this.f8313q;
        if (i == 1 || i == 2) {
            Collections.shuffle(this.f8310n);
        }
    }
}

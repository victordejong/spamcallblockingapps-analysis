package androidx.media2.player;

import android.content.Context;
import android.media.MediaDrmException;
import android.media.MediaFormat;
import android.util.Log;
import android.view.Surface;
import androidx.media.AudioAttributesCompat;
import androidx.media2.common.FileMediaItem;
import androidx.media2.common.MediaItem;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.common.VideoSize;
import androidx.media2.player.MediaPlayer2;
import androidx.media2.player.futures.AbstractResolvableFuture;
import com.google.logging.type.LogSeverity;
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
import p012b.p035f.C0780a;
import p012b.p042i.p053o.C0944d;
import p012b.p076s.p112c.C1705a;
import p012b.p076s.p112c.C1710b;
import p012b.p076s.p112c.C1711c;
import p012b.p076s.p112c.C1713d;
import p012b.p076s.p112c.C1714e;
import p012b.p076s.p112c.p115h.C1780a;
import p131c.p161d.p266c.p275i.p276a.AbstractFutureC5108l;
/* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer.class */
public final class MediaPlayer extends SessionPlayer {

    /* renamed from: t */
    public static C0780a<Integer, Integer> f2034t;

    /* renamed from: u */
    public static C0780a<Integer, Integer> f2035u;

    /* renamed from: v */
    public static C0780a<Integer, Integer> f2036v;

    /* renamed from: w */
    public static C0780a<Integer, Integer> f2037w;

    /* renamed from: x */
    public static C0780a<Integer, Integer> f2038x;

    /* renamed from: c */
    public MediaPlayer2 f2039c;

    /* renamed from: d */
    public ExecutorService f2040d;

    /* renamed from: h */
    public int f2044h;

    /* renamed from: j */
    public boolean f2046j;

    /* renamed from: k */
    public final C1705a f2047k;

    /* renamed from: o */
    public int f2051o;

    /* renamed from: p */
    public int f2052p;

    /* renamed from: q */
    public MediaItem f2053q;

    /* renamed from: r */
    public MediaItem f2054r;

    /* renamed from: s */
    public boolean f2055s;

    /* renamed from: e */
    public final ArrayDeque<C0383g0> f2041e = new ArrayDeque<>();

    /* renamed from: f */
    public final ArrayDeque<AbstractC0385h0<? super SessionPlayer.C0278b>> f2042f = new ArrayDeque<>();

    /* renamed from: g */
    public final Object f2043g = new Object();

    /* renamed from: i */
    public Map<MediaItem, Integer> f2045i = new HashMap();

    /* renamed from: l */
    public final Object f2048l = new Object();

    /* renamed from: m */
    public C0364c0 f2049m = new C0364c0();

    /* renamed from: n */
    public ArrayList<MediaItem> f2050n = new ArrayList<>();

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$NoDrmSchemeException.class */
    public static class NoDrmSchemeException extends MediaDrmException {
        public NoDrmSchemeException(String str) {
            super(str);
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$a.class */
    public class C0359a extends AbstractC0385h0<SessionPlayer.C0278b> {
        public C0359a(Executor executor) {
            super(executor);
        }

        @Override // androidx.media2.player.MediaPlayer.AbstractC0385h0
        /* renamed from: g */
        public List<C1780a<SessionPlayer.C0278b>> mo37808g() {
            synchronized (MediaPlayer.this.f2048l) {
                if (MediaPlayer.this.f2052p < 0) {
                    return MediaPlayer.this.m37849c(-2);
                }
                int i = MediaPlayer.this.f2052p - 1;
                int i2 = i;
                if (i < 0) {
                    if (!(MediaPlayer.this.f2051o == 2 || MediaPlayer.this.f2051o == 3)) {
                        return MediaPlayer.this.m37849c(-2);
                    }
                    i2 = MediaPlayer.this.f2050n.size() - 1;
                }
                MediaPlayer.this.f2052p = i2;
                MediaPlayer.this.m37821y();
                return MediaPlayer.this.m37868a(MediaPlayer.this.f2053q, MediaPlayer.this.f2054r);
            }
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$a0 */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$a0.class */
    public static final class C0360a0 {
    }

    /* renamed from: androidx.media2.player.MediaPlayer$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$b.class */
    public class C0361b extends AbstractC0385h0<SessionPlayer.C0278b> {
        public C0361b(Executor executor) {
            super(executor);
        }

        @Override // androidx.media2.player.MediaPlayer.AbstractC0385h0
        /* renamed from: g */
        public List<C1780a<SessionPlayer.C0278b>> mo37808g() {
            synchronized (MediaPlayer.this.f2048l) {
                if (MediaPlayer.this.f2052p < 0) {
                    return MediaPlayer.this.m37849c(-2);
                }
                int i = MediaPlayer.this.f2052p + 1;
                int i2 = i;
                if (i >= MediaPlayer.this.f2050n.size()) {
                    if (!(MediaPlayer.this.f2051o == 2 || MediaPlayer.this.f2051o == 3)) {
                        return MediaPlayer.this.m37849c(-2);
                    }
                    i2 = 0;
                }
                MediaPlayer.this.f2052p = i2;
                MediaPlayer.this.m37821y();
                MediaItem mediaItem = MediaPlayer.this.f2053q;
                MediaItem mediaItem2 = MediaPlayer.this.f2054r;
                if (mediaItem != null) {
                    return MediaPlayer.this.m37868a(mediaItem, mediaItem2);
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(MediaPlayer.this.m37822x());
                return arrayList;
            }
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$b0 */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$b0.class */
    public static class C0362b0 extends SessionPlayer.C0278b {
        public C0362b0(int i, MediaItem mediaItem) {
            super(i, mediaItem);
        }

        @Override // androidx.media2.common.SessionPlayer.C0278b, p012b.p076s.p077a.AbstractC1154a
        /* renamed from: e */
        public int mo34562e() {
            return super.mo34562e();
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$c.class */
    public class C0363c extends AbstractC0385h0<SessionPlayer.C0278b> {

        /* renamed from: k */
        public final /* synthetic */ Surface f2058k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0363c(Executor executor, Surface surface) {
            super(executor);
            this.f2058k = surface;
        }

        @Override // androidx.media2.player.MediaPlayer.AbstractC0385h0
        /* renamed from: g */
        public List<C1780a<SessionPlayer.C0278b>> mo37808g() {
            ArrayList arrayList = new ArrayList();
            C1780a e = C1780a.m32102e();
            synchronized (MediaPlayer.this.f2041e) {
                MediaPlayer.this.m37874a(27, e, MediaPlayer.this.f2039c.mo32286a(this.f2058k));
            }
            arrayList.add(e);
            return arrayList;
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$c0 */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$c0.class */
    public static class C0364c0 {

        /* renamed from: a */
        public ArrayList<MediaItem> f2060a = new ArrayList<>();

        /* renamed from: a */
        public int m37819a(Object obj) {
            return this.f2060a.indexOf(obj);
        }

        /* renamed from: a */
        public void m37820a() {
            Iterator<MediaItem> it = this.f2060a.iterator();
            while (it.hasNext()) {
                MediaItem next = it.next();
                if (next instanceof FileMediaItem) {
                    ((FileMediaItem) next).m38240k();
                }
            }
            this.f2060a.clear();
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$d.class */
    public class RunnableC0365d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C1780a f2061a;

        /* renamed from: b */
        public final /* synthetic */ Object f2062b;

        /* renamed from: c */
        public final /* synthetic */ C0383g0 f2063c;

        public RunnableC0365d(C1780a aVar, Object obj, C0383g0 g0Var) {
            this.f2061a = aVar;
            this.f2062b = obj;
            this.f2063c = g0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f2061a.isCancelled()) {
                synchronized (MediaPlayer.this.f2041e) {
                    if (MediaPlayer.this.f2039c.mo32281a(this.f2062b)) {
                        MediaPlayer.this.f2041e.remove(this.f2063c);
                    }
                }
            }
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$d0 */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$d0.class */
    public interface AbstractC0366d0 {
        /* renamed from: a */
        void mo37818a(AbstractC0388i0 i0Var);
    }

    /* renamed from: androidx.media2.player.MediaPlayer$e */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$e.class */
    public class C0367e extends AbstractC0385h0<SessionPlayer.C0278b> {

        /* renamed from: k */
        public final /* synthetic */ float f2065k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0367e(Executor executor, float f) {
            super(executor);
            this.f2065k = f;
        }

        @Override // androidx.media2.player.MediaPlayer.AbstractC0385h0
        /* renamed from: g */
        public List<C1780a<SessionPlayer.C0278b>> mo37808g() {
            ArrayList arrayList = new ArrayList();
            arrayList.add(MediaPlayer.this.m37850c(this.f2065k));
            return arrayList;
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$e0 */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$e0.class */
    public class C0368e0 extends MediaPlayer2.AbstractC0409b {

        /* renamed from: androidx.media2.player.MediaPlayer$e0$a */
        /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$e0$a.class */
        public class C0369a implements AbstractC0366d0 {

            /* renamed from: a */
            public final /* synthetic */ MediaItem f2068a;

            /* renamed from: b */
            public final /* synthetic */ C1710b f2069b;

            public C0369a(MediaItem mediaItem, C1710b bVar) {
                this.f2068a = mediaItem;
                this.f2069b = bVar;
            }

            @Override // androidx.media2.player.MediaPlayer.AbstractC0366d0
            /* renamed from: a */
            public void mo37818a(AbstractC0388i0 i0Var) {
                i0Var.onMediaTimeDiscontinuity(MediaPlayer.this, this.f2068a, this.f2069b);
            }
        }

        /* renamed from: androidx.media2.player.MediaPlayer$e0$b */
        /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$e0$b.class */
        public class C0370b implements AbstractC0390j0 {

            /* renamed from: a */
            public final /* synthetic */ int f2071a;

            /* renamed from: b */
            public final /* synthetic */ MediaItem f2072b;

            /* renamed from: c */
            public final /* synthetic */ SubtitleData f2073c;

            public C0370b(int i, MediaItem mediaItem, SubtitleData subtitleData) {
                this.f2071a = i;
                this.f2072b = mediaItem;
                this.f2073c = subtitleData;
            }

            @Override // androidx.media2.player.MediaPlayer.AbstractC0390j0
            /* renamed from: a */
            public void mo37809a(SessionPlayer.AbstractC0277a aVar) {
                MediaPlayer mediaPlayer = MediaPlayer.this;
                aVar.onSubtitleData(MediaPlayer.this, this.f2072b, mediaPlayer.m37862a(mediaPlayer.m37841e(this.f2071a)), this.f2073c);
            }
        }

        /* renamed from: androidx.media2.player.MediaPlayer$e0$c */
        /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$e0$c.class */
        public class C0371c implements AbstractC0390j0 {

            /* renamed from: a */
            public final /* synthetic */ MediaItem f2075a;

            /* renamed from: b */
            public final /* synthetic */ VideoSize f2076b;

            public C0371c(MediaItem mediaItem, VideoSize videoSize) {
                this.f2075a = mediaItem;
                this.f2076b = videoSize;
            }

            @Override // androidx.media2.player.MediaPlayer.AbstractC0390j0
            /* renamed from: a */
            public void mo37809a(SessionPlayer.AbstractC0277a aVar) {
                aVar.onVideoSizeChangedInternal(MediaPlayer.this, this.f2075a, this.f2076b);
            }
        }

        /* renamed from: androidx.media2.player.MediaPlayer$e0$d */
        /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$e0$d.class */
        public class C0372d implements AbstractC0366d0 {

            /* renamed from: a */
            public final /* synthetic */ MediaItem f2078a;

            /* renamed from: b */
            public final /* synthetic */ C1713d f2079b;

            public C0372d(MediaItem mediaItem, C1713d dVar) {
                this.f2078a = mediaItem;
                this.f2079b = dVar;
            }

            @Override // androidx.media2.player.MediaPlayer.AbstractC0366d0
            /* renamed from: a */
            public void mo37818a(AbstractC0388i0 i0Var) {
                i0Var.onTimedMetaDataAvailable(MediaPlayer.this, this.f2078a, this.f2079b);
            }
        }

        /* renamed from: androidx.media2.player.MediaPlayer$e0$e */
        /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$e0$e.class */
        public class C0373e implements AbstractC0366d0 {

            /* renamed from: a */
            public final /* synthetic */ MediaItem f2081a;

            /* renamed from: b */
            public final /* synthetic */ int f2082b;

            /* renamed from: c */
            public final /* synthetic */ int f2083c;

            public C0373e(MediaItem mediaItem, int i, int i2) {
                this.f2081a = mediaItem;
                this.f2082b = i;
                this.f2083c = i2;
            }

            @Override // androidx.media2.player.MediaPlayer.AbstractC0366d0
            /* renamed from: a */
            public void mo37818a(AbstractC0388i0 i0Var) {
                i0Var.onError(MediaPlayer.this, this.f2081a, this.f2082b, this.f2083c);
            }
        }

        /* renamed from: androidx.media2.player.MediaPlayer$e0$f */
        /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$e0$f.class */
        public class C0374f implements AbstractC0390j0 {
            public C0374f() {
            }

            @Override // androidx.media2.player.MediaPlayer.AbstractC0390j0
            /* renamed from: a */
            public void mo37809a(SessionPlayer.AbstractC0277a aVar) {
                MediaPlayer mediaPlayer = MediaPlayer.this;
                aVar.onTrackInfoChanged(mediaPlayer, mediaPlayer.mo37835j());
            }
        }

        /* renamed from: androidx.media2.player.MediaPlayer$e0$g */
        /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$e0$g.class */
        public class C0375g implements AbstractC0390j0 {

            /* renamed from: a */
            public final /* synthetic */ MediaItem f2086a;

            public C0375g(MediaItem mediaItem) {
                this.f2086a = mediaItem;
            }

            @Override // androidx.media2.player.MediaPlayer.AbstractC0390j0
            /* renamed from: a */
            public void mo37809a(SessionPlayer.AbstractC0277a aVar) {
                aVar.onCurrentMediaItemChanged(MediaPlayer.this, this.f2086a);
            }
        }

        /* renamed from: androidx.media2.player.MediaPlayer$e0$h */
        /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$e0$h.class */
        public class C0376h extends AbstractC0385h0<SessionPlayer.C0278b> {

            /* renamed from: k */
            public final /* synthetic */ MediaItem f2088k;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0376h(Executor executor, MediaItem mediaItem) {
                super(executor);
                this.f2088k = mediaItem;
            }

            @Override // androidx.media2.player.MediaPlayer.AbstractC0385h0
            /* renamed from: g */
            public List<C1780a<SessionPlayer.C0278b>> mo37808g() {
                ArrayList arrayList = new ArrayList();
                arrayList.add(MediaPlayer.this.m37848c(this.f2088k));
                return arrayList;
            }
        }

        /* renamed from: androidx.media2.player.MediaPlayer$e0$i */
        /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$e0$i.class */
        public class C0377i implements AbstractC0390j0 {
            public C0377i() {
            }

            @Override // androidx.media2.player.MediaPlayer.AbstractC0390j0
            /* renamed from: a */
            public void mo37809a(SessionPlayer.AbstractC0277a aVar) {
                aVar.onPlaybackCompleted(MediaPlayer.this);
            }
        }

        /* renamed from: androidx.media2.player.MediaPlayer$e0$j */
        /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$e0$j.class */
        public class C0378j implements AbstractC0390j0 {
            public C0378j() {
            }

            @Override // androidx.media2.player.MediaPlayer.AbstractC0390j0
            /* renamed from: a */
            public void mo37809a(SessionPlayer.AbstractC0277a aVar) {
                MediaPlayer mediaPlayer = MediaPlayer.this;
                aVar.onTrackInfoChanged(mediaPlayer, mediaPlayer.mo37835j());
            }
        }

        /* renamed from: androidx.media2.player.MediaPlayer$e0$k */
        /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$e0$k.class */
        public class C0379k implements AbstractC0366d0 {

            /* renamed from: a */
            public final /* synthetic */ MediaItem f2092a;

            /* renamed from: b */
            public final /* synthetic */ int f2093b;

            /* renamed from: c */
            public final /* synthetic */ int f2094c;

            public C0379k(MediaItem mediaItem, int i, int i2) {
                this.f2092a = mediaItem;
                this.f2093b = i;
                this.f2094c = i2;
            }

            @Override // androidx.media2.player.MediaPlayer.AbstractC0366d0
            /* renamed from: a */
            public void mo37818a(AbstractC0388i0 i0Var) {
                i0Var.onInfo(MediaPlayer.this, this.f2092a, this.f2093b, this.f2094c);
            }
        }

        public C0368e0() {
        }

        @Override // androidx.media2.player.MediaPlayer2.AbstractC0409b
        /* renamed from: a */
        public void mo37805a(MediaPlayer2 mediaPlayer2, MediaItem mediaItem, int i, int i2) {
            MediaPlayer.this.m37861a(mediaPlayer2, mediaItem, i, i2);
        }

        @Override // androidx.media2.player.MediaPlayer2.AbstractC0409b
        /* renamed from: a */
        public void mo37804a(MediaPlayer2 mediaPlayer2, MediaItem mediaItem, int i, SubtitleData subtitleData) {
            MediaPlayer.this.m37863a(new C0370b(i, mediaItem, subtitleData));
        }

        @Override // androidx.media2.player.MediaPlayer2.AbstractC0409b
        /* renamed from: a */
        public void mo37803a(MediaPlayer2 mediaPlayer2, MediaItem mediaItem, C1710b bVar) {
            MediaPlayer.this.m37866a(new C0369a(mediaItem, bVar));
        }

        @Override // androidx.media2.player.MediaPlayer2.AbstractC0409b
        /* renamed from: a */
        public void mo37802a(MediaPlayer2 mediaPlayer2, MediaItem mediaItem, C1713d dVar) {
            MediaPlayer.this.m37866a(new C0372d(mediaItem, dVar));
        }

        @Override // androidx.media2.player.MediaPlayer2.AbstractC0409b
        /* renamed from: b */
        public void mo37801b(MediaPlayer2 mediaPlayer2, MediaItem mediaItem, int i, int i2) {
            MediaPlayer.this.m37838g(3);
            MediaPlayer.this.m37869a(mediaItem, 0);
            MediaPlayer.this.m37866a(new C0373e(mediaItem, i, i2));
        }

        @Override // androidx.media2.player.MediaPlayer2.AbstractC0409b
        /* renamed from: c */
        public void mo37800c(MediaPlayer2 mediaPlayer2, MediaItem mediaItem, int i, int i2) {
            MediaItem mediaItem2;
            MediaItem mediaItem3;
            boolean z = true;
            if (i == 2) {
                synchronized (MediaPlayer.this.f2048l) {
                    if (MediaPlayer.this.f2053q == mediaItem) {
                        z = false;
                        mediaItem2 = null;
                    } else {
                        MediaPlayer.this.f2052p = MediaPlayer.this.f2050n.indexOf(mediaItem);
                        MediaPlayer.this.m37821y();
                        mediaItem2 = MediaPlayer.this.f2054r;
                    }
                }
                if (z) {
                    MediaPlayer.this.m37863a(new C0375g(mediaItem));
                    if (mediaItem2 != null) {
                        MediaPlayer.this.m37864a(new C0376h(MediaPlayer.this.f2040d, mediaItem2));
                    }
                }
            } else if (i == 6) {
                synchronized (MediaPlayer.this.f2048l) {
                    MediaPlayer.this.f2052p = MediaPlayer.this.f2050n.indexOf(mediaItem);
                    mediaItem3 = MediaPlayer.this.f2054r;
                }
                if (mediaItem3 == null) {
                    MediaPlayer.this.m37838g(1);
                    MediaPlayer.this.m37863a(new C0377i());
                } else if (MediaPlayer.this.mo37831n() == null) {
                    Log.e("MediaPlayer", "Cannot play next media item", new IllegalStateException());
                    MediaPlayer.this.m37838g(3);
                }
            } else if (i == 100) {
                MediaPlayer.this.m37863a(new C0374f());
                MediaPlayer.this.m37869a(mediaItem, 1);
            } else if (i != 704) {
                if (i == 802) {
                    MediaPlayer.this.m37863a(new C0378j());
                } else if (i == 701) {
                    MediaPlayer.this.m37869a(mediaItem, 2);
                } else if (i == 702) {
                    MediaPlayer.this.m37869a(mediaItem, 1);
                }
            } else if (i2 >= 100) {
                MediaPlayer.this.m37869a(mediaItem, 3);
            }
            if (MediaPlayer.f2036v.containsKey(Integer.valueOf(i))) {
                MediaPlayer.this.m37866a(new C0379k(mediaItem, MediaPlayer.f2036v.get(Integer.valueOf(i)).intValue(), i2));
            }
        }

        @Override // androidx.media2.player.MediaPlayer2.AbstractC0409b
        /* renamed from: d */
        public void mo37799d(MediaPlayer2 mediaPlayer2, MediaItem mediaItem, int i, int i2) {
            MediaPlayer.this.m37863a(new C0371c(mediaItem, new VideoSize(i, i2)));
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$f */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$f.class */
    public class C0380f extends AbstractC0385h0<SessionPlayer.C0278b> {

        /* renamed from: k */
        public final /* synthetic */ C1711c f2096k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0380f(Executor executor, C1711c cVar) {
            super(executor);
            this.f2096k = cVar;
        }

        @Override // androidx.media2.player.MediaPlayer.AbstractC0385h0
        /* renamed from: g */
        public List<C1780a<SessionPlayer.C0278b>> mo37808g() {
            ArrayList arrayList = new ArrayList();
            C1780a e = C1780a.m32102e();
            synchronized (MediaPlayer.this.f2041e) {
                MediaPlayer.this.m37874a(24, e, MediaPlayer.this.f2039c.mo32284a(this.f2096k));
            }
            arrayList.add(e);
            return arrayList;
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$f0 */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$f0.class */
    public class C0381f0 extends MediaPlayer2.AbstractC0408a {
        public C0381f0() {
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$g */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$g.class */
    public class C0382g extends AbstractC0385h0<SessionPlayer.C0278b> {

        /* renamed from: k */
        public final /* synthetic */ int f2099k;

        /* renamed from: l */
        public final /* synthetic */ long f2100l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0382g(Executor executor, boolean z, int i, long j) {
            super(executor, z);
            this.f2099k = i;
            this.f2100l = j;
        }

        @Override // androidx.media2.player.MediaPlayer.AbstractC0385h0
        /* renamed from: g */
        public List<C1780a<SessionPlayer.C0278b>> mo37808g() {
            ArrayList arrayList = new ArrayList();
            C1780a e = C1780a.m32102e();
            int intValue = MediaPlayer.f2037w.containsKey(Integer.valueOf(this.f2099k)) ? MediaPlayer.f2037w.get(Integer.valueOf(this.f2099k)).intValue() : 1;
            synchronized (MediaPlayer.this.f2041e) {
                MediaPlayer.this.m37874a(14, e, MediaPlayer.this.f2039c.mo32287a(this.f2100l, intValue));
            }
            arrayList.add(e);
            return arrayList;
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$g0 */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$g0.class */
    public static final class C0383g0 {

        /* renamed from: a */
        public final int f2102a;

        /* renamed from: b */
        public final C1780a f2103b;

        /* renamed from: c */
        public final C0392k0 f2104c;

        public C0383g0(int i, C1780a aVar) {
            this(i, aVar, null);
        }

        public C0383g0(int i, C1780a aVar, C0392k0 k0Var) {
            this.f2102a = i;
            this.f2103b = aVar;
            this.f2104c = k0Var;
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$h */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$h.class */
    public class C0384h extends AbstractC0385h0<SessionPlayer.C0278b> {

        /* renamed from: k */
        public final /* synthetic */ int f2105k;

        /* renamed from: l */
        public final /* synthetic */ C0392k0 f2106l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0384h(Executor executor, int i, C0392k0 k0Var) {
            super(executor);
            this.f2105k = i;
            this.f2106l = k0Var;
        }

        @Override // androidx.media2.player.MediaPlayer.AbstractC0385h0
        /* renamed from: g */
        public List<C1780a<SessionPlayer.C0278b>> mo37808g() {
            ArrayList arrayList = new ArrayList();
            C1780a e = C1780a.m32102e();
            synchronized (MediaPlayer.this.f2041e) {
                MediaPlayer.this.m37875a(15, e, this.f2106l, MediaPlayer.this.f2039c.mo32273c(this.f2105k));
            }
            arrayList.add(e);
            return arrayList;
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$h0 */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$h0.class */
    public static abstract class AbstractC0385h0<V extends SessionPlayer.C0278b> extends AbstractResolvableFuture<V> {

        /* renamed from: h */
        public final boolean f2108h;

        /* renamed from: i */
        public boolean f2109i;

        /* renamed from: j */
        public List<C1780a<V>> f2110j;

        /* renamed from: androidx.media2.player.MediaPlayer$h0$a */
        /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$h0$a.class */
        public class RunnableC0386a implements Runnable {
            public RunnableC0386a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (AbstractC0385h0.this.isCancelled()) {
                    AbstractC0385h0 h0Var = AbstractC0385h0.this;
                    if (h0Var.f2109i) {
                        h0Var.m37816e();
                    }
                }
            }
        }

        public AbstractC0385h0(Executor executor) {
            this(executor, false);
        }

        public AbstractC0385h0(Executor executor, boolean z) {
            this.f2109i = false;
            this.f2108h = z;
            mo7696a(new RunnableC0386a(), executor);
        }

        /* renamed from: a */
        public boolean m37817a(V v) {
            return super.mo32103b(v);
        }

        @Override // androidx.media2.player.futures.AbstractResolvableFuture
        /* renamed from: a */
        public boolean mo32104a(Throwable th) {
            return super.mo32104a(th);
        }

        /* renamed from: e */
        public void m37816e() {
            for (C1780a<V> aVar : this.f2110j) {
                if (!aVar.isCancelled() && !aVar.isDone()) {
                    aVar.cancel(true);
                }
            }
        }

        /* renamed from: f */
        public boolean m37815f() {
            if (!this.f2109i && !isCancelled()) {
                this.f2109i = true;
                this.f2110j = mo37808g();
            }
            if (!isCancelled() && !isDone()) {
                m37814h();
            }
            boolean z = true;
            if (!isCancelled()) {
                z = isDone();
            }
            return z;
        }

        /* renamed from: g */
        public abstract List<C1780a<V>> mo37808g();

        /* renamed from: h */
        public final void m37814h() {
            V v = null;
            for (int i = 0; i < this.f2110j.size(); i++) {
                C1780a<V> aVar = this.f2110j.get(i);
                if (aVar.isDone() || aVar.isCancelled()) {
                    try {
                        v = aVar.get();
                        int e = v.mo34562e();
                        if (e != 0 && e != 1) {
                            m37816e();
                            m37817a((AbstractC0385h0<V>) v);
                            return;
                        }
                    } catch (Exception e2) {
                        m37816e();
                        mo32104a((Throwable) e2);
                        return;
                    }
                } else {
                    return;
                }
            }
            try {
                m37817a((AbstractC0385h0<V>) v);
            } catch (Exception e3) {
                mo32104a((Throwable) e3);
            }
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$i */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$i.class */
    public class C0387i extends AbstractC0385h0<SessionPlayer.C0278b> {

        /* renamed from: k */
        public final /* synthetic */ int f2112k;

        /* renamed from: l */
        public final /* synthetic */ C0392k0 f2113l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0387i(Executor executor, int i, C0392k0 k0Var) {
            super(executor);
            this.f2112k = i;
            this.f2113l = k0Var;
        }

        @Override // androidx.media2.player.MediaPlayer.AbstractC0385h0
        /* renamed from: g */
        public List<C1780a<SessionPlayer.C0278b>> mo37808g() {
            ArrayList arrayList = new ArrayList();
            C1780a e = C1780a.m32102e();
            synchronized (MediaPlayer.this.f2041e) {
                MediaPlayer.this.m37875a(2, e, this.f2113l, MediaPlayer.this.f2039c.mo32288a(this.f2112k));
            }
            arrayList.add(e);
            return arrayList;
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$i0 */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$i0.class */
    public static abstract class AbstractC0388i0 extends SessionPlayer.AbstractC0277a {
        public void onDrmInfo(MediaPlayer mediaPlayer, MediaItem mediaItem, C0360a0 a0Var) {
        }

        public void onError(MediaPlayer mediaPlayer, MediaItem mediaItem, int i, int i2) {
        }

        public void onInfo(MediaPlayer mediaPlayer, MediaItem mediaItem, int i, int i2) {
        }

        public void onMediaTimeDiscontinuity(MediaPlayer mediaPlayer, MediaItem mediaItem, C1710b bVar) {
        }

        public void onTimedMetaDataAvailable(MediaPlayer mediaPlayer, MediaItem mediaItem, C1713d dVar) {
        }

        public void onVideoSizeChanged(MediaPlayer mediaPlayer, MediaItem mediaItem, C1714e eVar) {
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC0277a
        public void onVideoSizeChangedInternal(SessionPlayer sessionPlayer, MediaItem mediaItem, VideoSize videoSize) {
            if (sessionPlayer instanceof MediaPlayer) {
                onVideoSizeChanged((MediaPlayer) sessionPlayer, mediaItem, new C1714e(videoSize));
                return;
            }
            throw new IllegalArgumentException("player must be MediaPlayer");
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$j */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$j.class */
    public class C0389j extends AbstractC0385h0<SessionPlayer.C0278b> {
        public C0389j(Executor executor) {
            super(executor);
        }

        @Override // androidx.media2.player.MediaPlayer.AbstractC0385h0
        /* renamed from: g */
        public List<C1780a<SessionPlayer.C0278b>> mo37808g() {
            C1780a<SessionPlayer.C0278b> aVar;
            ArrayList arrayList = new ArrayList();
            if (MediaPlayer.this.f2047k.m32315c()) {
                if (MediaPlayer.this.f2039c.mo32274c() == null) {
                    arrayList.add(MediaPlayer.this.m37850c(0.0f));
                }
                aVar = C1780a.m32102e();
                synchronized (MediaPlayer.this.f2041e) {
                    MediaPlayer.this.m37874a(5, aVar, MediaPlayer.this.f2039c.mo32259n());
                }
            } else {
                aVar = MediaPlayer.this.m37857b(-1);
            }
            arrayList.add(aVar);
            return arrayList;
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$j0 */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$j0.class */
    public interface AbstractC0390j0 {
        /* renamed from: a */
        void mo37809a(SessionPlayer.AbstractC0277a aVar);
    }

    /* renamed from: androidx.media2.player.MediaPlayer$k */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$k.class */
    public class C0391k implements AbstractC0390j0 {

        /* renamed from: a */
        public final /* synthetic */ int f2116a;

        public C0391k(int i) {
            this.f2116a = i;
        }

        @Override // androidx.media2.player.MediaPlayer.AbstractC0390j0
        /* renamed from: a */
        public void mo37809a(SessionPlayer.AbstractC0277a aVar) {
            aVar.onPlayerStateChanged(MediaPlayer.this, this.f2116a);
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$k0 */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$k0.class */
    public static final class C0392k0 {

        /* renamed from: a */
        public final int f2118a;

        /* renamed from: b */
        public final MediaItem f2119b;

        /* renamed from: c */
        public final int f2120c;

        /* renamed from: d */
        public final MediaFormat f2121d;

        public C0392k0(int i, MediaItem mediaItem, int i2, MediaFormat mediaFormat) {
            this.f2118a = i;
            this.f2119b = mediaItem;
            this.f2120c = i2;
            this.f2121d = mediaFormat;
        }

        /* renamed from: a */
        public MediaFormat m37813a() {
            if (this.f2120c == 4) {
                return this.f2121d;
            }
            return null;
        }

        /* renamed from: b */
        public int m37812b() {
            return this.f2118a;
        }

        /* renamed from: c */
        public MediaItem m37811c() {
            return this.f2119b;
        }

        /* renamed from: d */
        public int m37810d() {
            return this.f2120c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C0392k0.class != obj.getClass()) {
                return false;
            }
            C0392k0 k0Var = (C0392k0) obj;
            if (this.f2118a != k0Var.f2118a) {
                return false;
            }
            if (this.f2119b == null && k0Var.f2119b == null) {
                return true;
            }
            MediaItem mediaItem = this.f2119b;
            if (mediaItem == null || k0Var.f2119b == null) {
                return false;
            }
            String h = mediaItem.m38233h();
            return h != null ? h.equals(k0Var.f2119b.m38233h()) : this.f2119b.equals(k0Var.f2119b);
        }

        public int hashCode() {
            int i = this.f2118a;
            MediaItem mediaItem = this.f2119b;
            return ((i + 31) * 31) + (mediaItem != null ? mediaItem.m38233h() != null ? this.f2119b.m38233h().hashCode() : this.f2119b.hashCode() : 0);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append(C0392k0.class.getName());
            sb.append('#');
            sb.append(this.f2118a);
            sb.append('{');
            int i = this.f2120c;
            if (i == 1) {
                sb.append("VIDEO");
            } else if (i == 2) {
                sb.append("AUDIO");
            } else if (i != 4) {
                sb.append("UNKNOWN");
            } else {
                sb.append("SUBTITLE");
            }
            sb.append(", ");
            sb.append(this.f2121d);
            sb.append("}");
            return sb.toString();
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$l */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$l.class */
    public class C0393l implements AbstractC0390j0 {

        /* renamed from: a */
        public final /* synthetic */ MediaItem f2122a;

        /* renamed from: b */
        public final /* synthetic */ int f2123b;

        public C0393l(MediaItem mediaItem, int i) {
            this.f2122a = mediaItem;
            this.f2123b = i;
        }

        @Override // androidx.media2.player.MediaPlayer.AbstractC0390j0
        /* renamed from: a */
        public void mo37809a(SessionPlayer.AbstractC0277a aVar) {
            aVar.onBufferingStateChanged(MediaPlayer.this, this.f2122a, this.f2123b);
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$m */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$m.class */
    public class RunnableC0394m implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC0390j0 f2125a;

        /* renamed from: b */
        public final /* synthetic */ SessionPlayer.AbstractC0277a f2126b;

        public RunnableC0394m(AbstractC0390j0 j0Var, SessionPlayer.AbstractC0277a aVar) {
            this.f2125a = j0Var;
            this.f2126b = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2125a.mo37809a(this.f2126b);
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$n */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$n.class */
    public class RunnableC0395n implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC0366d0 f2128a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC0388i0 f2129b;

        public RunnableC0395n(AbstractC0366d0 d0Var, AbstractC0388i0 i0Var) {
            this.f2128a = d0Var;
            this.f2129b = i0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2128a.mo37818a(this.f2129b);
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$o */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$o.class */
    public class C0396o implements AbstractC0390j0 {

        /* renamed from: a */
        public final /* synthetic */ long f2131a;

        public C0396o(long j) {
            this.f2131a = j;
        }

        @Override // androidx.media2.player.MediaPlayer.AbstractC0390j0
        /* renamed from: a */
        public void mo37809a(SessionPlayer.AbstractC0277a aVar) {
            aVar.onSeekCompleted(MediaPlayer.this, this.f2131a);
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$p */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$p.class */
    public class C0397p implements AbstractC0390j0 {

        /* renamed from: a */
        public final /* synthetic */ MediaItem f2133a;

        public C0397p(MediaItem mediaItem) {
            this.f2133a = mediaItem;
        }

        @Override // androidx.media2.player.MediaPlayer.AbstractC0390j0
        /* renamed from: a */
        public void mo37809a(SessionPlayer.AbstractC0277a aVar) {
            aVar.onCurrentMediaItemChanged(MediaPlayer.this, this.f2133a);
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$q */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$q.class */
    public class C0398q implements AbstractC0390j0 {

        /* renamed from: a */
        public final /* synthetic */ float f2135a;

        public C0398q(float f) {
            this.f2135a = f;
        }

        @Override // androidx.media2.player.MediaPlayer.AbstractC0390j0
        /* renamed from: a */
        public void mo37809a(SessionPlayer.AbstractC0277a aVar) {
            aVar.onPlaybackSpeedChanged(MediaPlayer.this, this.f2135a);
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$r */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$r.class */
    public class C0399r implements AbstractC0390j0 {

        /* renamed from: a */
        public final /* synthetic */ AudioAttributesCompat f2137a;

        public C0399r(AudioAttributesCompat audioAttributesCompat) {
            this.f2137a = audioAttributesCompat;
        }

        @Override // androidx.media2.player.MediaPlayer.AbstractC0390j0
        /* renamed from: a */
        public void mo37809a(SessionPlayer.AbstractC0277a aVar) {
            aVar.onAudioAttributesChanged(MediaPlayer.this, this.f2137a);
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$s */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$s.class */
    public class C0400s implements AbstractC0390j0 {

        /* renamed from: a */
        public final /* synthetic */ C0392k0 f2139a;

        public C0400s(C0392k0 k0Var) {
            this.f2139a = k0Var;
        }

        @Override // androidx.media2.player.MediaPlayer.AbstractC0390j0
        /* renamed from: a */
        public void mo37809a(SessionPlayer.AbstractC0277a aVar) {
            MediaPlayer mediaPlayer = MediaPlayer.this;
            aVar.onTrackSelected(mediaPlayer, mediaPlayer.m37862a(this.f2139a));
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$t */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$t.class */
    public class C0401t implements AbstractC0390j0 {

        /* renamed from: a */
        public final /* synthetic */ C0392k0 f2141a;

        public C0401t(C0392k0 k0Var) {
            this.f2141a = k0Var;
        }

        @Override // androidx.media2.player.MediaPlayer.AbstractC0390j0
        /* renamed from: a */
        public void mo37809a(SessionPlayer.AbstractC0277a aVar) {
            MediaPlayer mediaPlayer = MediaPlayer.this;
            aVar.onTrackDeselected(mediaPlayer, mediaPlayer.m37862a(this.f2141a));
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$u */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$u.class */
    public class C0402u extends AbstractC0385h0<SessionPlayer.C0278b> {
        public C0402u(Executor executor) {
            super(executor);
        }

        @Override // androidx.media2.player.MediaPlayer.AbstractC0385h0
        /* renamed from: g */
        public List<C1780a<SessionPlayer.C0278b>> mo37808g() {
            ArrayList arrayList = new ArrayList();
            C1780a e = C1780a.m32102e();
            MediaPlayer.this.f2047k.m32316b();
            synchronized (MediaPlayer.this.f2041e) {
                MediaPlayer.this.m37874a(4, e, MediaPlayer.this.f2039c.mo32260m());
            }
            arrayList.add(e);
            return arrayList;
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$v */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$v.class */
    public class C0403v extends AbstractC0385h0<SessionPlayer.C0278b> {
        public C0403v(Executor executor) {
            super(executor);
        }

        @Override // androidx.media2.player.MediaPlayer.AbstractC0385h0
        /* renamed from: g */
        public List<C1780a<SessionPlayer.C0278b>> mo37808g() {
            ArrayList arrayList = new ArrayList();
            C1780a e = C1780a.m32102e();
            synchronized (MediaPlayer.this.f2041e) {
                MediaPlayer.this.m37874a(6, e, MediaPlayer.this.f2039c.mo32258o());
            }
            MediaPlayer mediaPlayer = MediaPlayer.this;
            mediaPlayer.m37869a(mediaPlayer.f2039c.mo32270e(), 2);
            arrayList.add(e);
            return arrayList;
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$w */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$w.class */
    public class C0404w extends AbstractC0385h0<SessionPlayer.C0278b> {

        /* renamed from: k */
        public final /* synthetic */ long f2145k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0404w(Executor executor, boolean z, long j) {
            super(executor, z);
            this.f2145k = j;
        }

        @Override // androidx.media2.player.MediaPlayer.AbstractC0385h0
        /* renamed from: g */
        public List<C1780a<SessionPlayer.C0278b>> mo37808g() {
            ArrayList arrayList = new ArrayList();
            C1780a e = C1780a.m32102e();
            synchronized (MediaPlayer.this.f2041e) {
                MediaPlayer.this.m37874a(14, e, MediaPlayer.this.f2039c.m37807a(this.f2145k));
            }
            arrayList.add(e);
            return arrayList;
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$x */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$x.class */
    public class C0405x extends AbstractC0385h0<SessionPlayer.C0278b> {

        /* renamed from: k */
        public final /* synthetic */ float f2147k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0405x(Executor executor, float f) {
            super(executor);
            this.f2147k = f;
        }

        @Override // androidx.media2.player.MediaPlayer.AbstractC0385h0
        /* renamed from: g */
        public List<C1780a<SessionPlayer.C0278b>> mo37808g() {
            if (this.f2147k <= 0.0f) {
                return MediaPlayer.this.m37849c(-3);
            }
            ArrayList arrayList = new ArrayList();
            C1780a e = C1780a.m32102e();
            synchronized (MediaPlayer.this.f2041e) {
                MediaPlayer2 mediaPlayer2 = MediaPlayer.this.f2039c;
                C1711c.C1712a aVar = new C1711c.C1712a(MediaPlayer.this.f2039c.mo32267h());
                aVar.m32299b(this.f2147k);
                MediaPlayer.this.m37874a(24, e, mediaPlayer2.mo32284a(aVar.m32302a()));
            }
            arrayList.add(e);
            return arrayList;
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$y */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$y.class */
    public class C0406y extends AbstractC0385h0<SessionPlayer.C0278b> {

        /* renamed from: k */
        public final /* synthetic */ AudioAttributesCompat f2149k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0406y(Executor executor, AudioAttributesCompat audioAttributesCompat) {
            super(executor);
            this.f2149k = audioAttributesCompat;
        }

        @Override // androidx.media2.player.MediaPlayer.AbstractC0385h0
        /* renamed from: g */
        public List<C1780a<SessionPlayer.C0278b>> mo37808g() {
            ArrayList arrayList = new ArrayList();
            C1780a e = C1780a.m32102e();
            synchronized (MediaPlayer.this.f2041e) {
                MediaPlayer.this.m37874a(16, e, MediaPlayer.this.f2039c.mo32285a(this.f2149k));
            }
            arrayList.add(e);
            return arrayList;
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$z */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$z.class */
    public class C0407z extends AbstractC0385h0<SessionPlayer.C0278b> {

        /* renamed from: k */
        public final /* synthetic */ MediaItem f2151k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0407z(Executor executor, MediaItem mediaItem) {
            super(executor);
            this.f2151k = mediaItem;
        }

        @Override // androidx.media2.player.MediaPlayer.AbstractC0385h0
        /* renamed from: g */
        public List<C1780a<SessionPlayer.C0278b>> mo37808g() {
            ArrayList arrayList = new ArrayList();
            synchronized (MediaPlayer.this.f2048l) {
                MediaPlayer.this.f2049m.m37820a();
                MediaPlayer.this.f2050n.clear();
                MediaPlayer.this.f2053q = this.f2151k;
                MediaPlayer.this.f2054r = null;
                MediaPlayer.this.f2052p = -1;
            }
            arrayList.addAll(MediaPlayer.this.m37868a(this.f2151k, (MediaItem) null));
            return arrayList;
        }
    }

    static {
        C1711c.C1712a aVar = new C1711c.C1712a();
        aVar.m32299b(1.0f);
        aVar.m32301a(1.0f);
        aVar.m32300a(0);
        aVar.m32302a();
        C0780a<Integer, Integer> aVar2 = new C0780a<>();
        f2034t = aVar2;
        aVar2.put(0, 0);
        f2034t.put(Integer.MIN_VALUE, -1);
        f2034t.put(1, -2);
        f2034t.put(2, -3);
        f2034t.put(3, -4);
        f2034t.put(4, -5);
        f2034t.put(5, 1);
        C0780a<Integer, Integer> aVar3 = new C0780a<>();
        f2035u = aVar3;
        aVar3.put(1, 1);
        f2035u.put(-1004, -1004);
        f2035u.put(-1007, -1007);
        f2035u.put(-1010, -1010);
        f2035u.put(-110, -110);
        C0780a<Integer, Integer> aVar4 = new C0780a<>();
        f2036v = aVar4;
        aVar4.put(3, 3);
        C0780a<Integer, Integer> aVar5 = f2036v;
        Integer valueOf = Integer.valueOf((int) LogSeverity.ALERT_VALUE);
        aVar5.put(valueOf, valueOf);
        f2036v.put(704, 704);
        C0780a<Integer, Integer> aVar6 = f2036v;
        Integer valueOf2 = Integer.valueOf((int) LogSeverity.EMERGENCY_VALUE);
        aVar6.put(valueOf2, valueOf2);
        f2036v.put(801, 801);
        f2036v.put(802, 802);
        f2036v.put(804, 804);
        f2036v.put(805, 805);
        C0780a<Integer, Integer> aVar7 = new C0780a<>();
        f2037w = aVar7;
        aVar7.put(0, 0);
        f2037w.put(1, 1);
        f2037w.put(2, 2);
        f2037w.put(3, 3);
        C0780a<Integer, Integer> aVar8 = new C0780a<>();
        f2038x = aVar8;
        aVar8.put(0, 0);
        f2038x.put(1, -1001);
        f2038x.put(2, -1003);
        f2038x.put(3, -1003);
        f2038x.put(4, -1004);
        f2038x.put(5, -1005);
    }

    public MediaPlayer(Context context) {
        if (context != null) {
            this.f2044h = 0;
            this.f2039c = MediaPlayer2.m37806a(context);
            ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(1);
            this.f2040d = newFixedThreadPool;
            this.f2039c.mo32278a(newFixedThreadPool, new C0368e0());
            this.f2039c.mo32279a(this.f2040d, new C0381f0());
            this.f2052p = -2;
            this.f2047k = new C1705a(context, this);
            return;
        }
        throw new NullPointerException("context shouldn't be null");
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: a */
    public long mo37879a() {
        synchronized (this.f2043g) {
            if (this.f2046j) {
                return Long.MIN_VALUE;
            }
            try {
                long d = this.f2039c.mo32272d();
                if (d >= 0) {
                    return d;
                }
                return Long.MIN_VALUE;
            } catch (IllegalStateException e) {
                return Long.MIN_VALUE;
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: a */
    public SessionPlayer.TrackInfo mo37877a(int i) {
        return m37862a(m37844d(i));
    }

    /* renamed from: a */
    public SessionPlayer.TrackInfo m37862a(C0392k0 k0Var) {
        if (k0Var == null) {
            return null;
        }
        return new SessionPlayer.TrackInfo(k0Var.m37812b(), k0Var.m37811c(), k0Var.m37810d(), k0Var.m37813a());
    }

    /* renamed from: a */
    public C1780a<SessionPlayer.C0278b> m37876a(int i, MediaItem mediaItem) {
        C1780a<SessionPlayer.C0278b> e = C1780a.m32102e();
        MediaItem mediaItem2 = mediaItem;
        if (mediaItem == null) {
            mediaItem2 = this.f2039c.mo32270e();
        }
        e.mo32103b(new SessionPlayer.C0278b(i, mediaItem2));
        return e;
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: a */
    public AbstractFutureC5108l<SessionPlayer.C0278b> mo37878a(float f) {
        synchronized (this.f2043g) {
            if (this.f2046j) {
                return m37829q();
            }
            C0405x xVar = new C0405x(this.f2040d, f);
            m37864a(xVar);
            return xVar;
        }
    }

    /* renamed from: a */
    public AbstractFutureC5108l<SessionPlayer.C0278b> m37873a(long j, int i) {
        synchronized (this.f2043g) {
            if (this.f2046j) {
                return m37829q();
            }
            C0382g gVar = new C0382g(this.f2040d, true, i, j);
            m37864a(gVar);
            return gVar;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: a */
    public AbstractFutureC5108l<SessionPlayer.C0278b> mo37872a(Surface surface) {
        return m37855b(surface);
    }

    /* renamed from: a */
    public AbstractFutureC5108l<SessionPlayer.C0278b> m37871a(AudioAttributesCompat audioAttributesCompat) {
        if (audioAttributesCompat != null) {
            synchronized (this.f2043g) {
                if (this.f2046j) {
                    return m37829q();
                }
                C0406y yVar = new C0406y(this.f2040d, audioAttributesCompat);
                m37864a(yVar);
                return yVar;
            }
        }
        throw new NullPointerException("attr shouldn't be null");
    }

    /* renamed from: a */
    public AbstractFutureC5108l<SessionPlayer.C0278b> m37870a(MediaItem mediaItem) {
        if (mediaItem == null) {
            throw new NullPointerException("item shouldn't be null");
        } else if (!(mediaItem instanceof FileMediaItem) || !((FileMediaItem) mediaItem).m38235p()) {
            synchronized (this.f2043g) {
                if (this.f2046j) {
                    return m37829q();
                }
                C0407z zVar = new C0407z(this.f2040d, mediaItem);
                m37864a(zVar);
                return zVar;
            }
        } else {
            throw new IllegalArgumentException("File descriptor is closed. " + mediaItem);
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: a */
    public AbstractFutureC5108l<SessionPlayer.C0278b> mo37867a(SessionPlayer.TrackInfo trackInfo) {
        return m37852b(m37847c(trackInfo));
    }

    /* renamed from: a */
    public AbstractFutureC5108l<SessionPlayer.C0278b> m37860a(C1711c cVar) {
        if (cVar != null) {
            synchronized (this.f2043g) {
                if (this.f2046j) {
                    return m37829q();
                }
                C0380f fVar = new C0380f(this.f2040d, cVar);
                m37864a(fVar);
                return fVar;
            }
        }
        throw new NullPointerException("params shouldn't be null");
    }

    /* renamed from: a */
    public List<C1780a<SessionPlayer.C0278b>> m37868a(MediaItem mediaItem, MediaItem mediaItem2) {
        boolean z;
        if (mediaItem != null) {
            synchronized (this.f2048l) {
                z = this.f2055s;
            }
            ArrayList arrayList = new ArrayList();
            if (z) {
                arrayList.add(m37848c(mediaItem));
                arrayList.add(m37822x());
            } else {
                arrayList.add(m37854b(mediaItem));
            }
            if (mediaItem2 != null) {
                arrayList.add(m37848c(mediaItem2));
            }
            return arrayList;
        }
        throw new NullPointerException("curItem shouldn't be null");
    }

    /* renamed from: a */
    public void m37875a(int i, C1780a aVar, C0392k0 k0Var, Object obj) {
        C0383g0 g0Var = new C0383g0(i, aVar, k0Var);
        this.f2041e.add(g0Var);
        m37865a(g0Var, aVar, obj);
    }

    /* renamed from: a */
    public void m37874a(int i, C1780a aVar, Object obj) {
        C0383g0 g0Var = new C0383g0(i, aVar);
        this.f2041e.add(g0Var);
        m37865a(g0Var, aVar, obj);
    }

    /* renamed from: a */
    public void m37869a(MediaItem mediaItem, int i) {
        Integer put;
        synchronized (this.f2043g) {
            put = this.f2045i.put(mediaItem, Integer.valueOf(i));
        }
        if (put == null || put.intValue() != i) {
            m37863a(new C0393l(mediaItem, i));
        }
    }

    /* renamed from: a */
    public void m37866a(AbstractC0366d0 d0Var) {
        synchronized (this.f2043g) {
            try {
                if (!this.f2046j) {
                    for (C0944d<SessionPlayer.AbstractC0277a, Executor> dVar : m38217b()) {
                        SessionPlayer.AbstractC0277a aVar = dVar.f4191a;
                        if (aVar instanceof AbstractC0388i0) {
                            dVar.f4192b.execute(new RunnableC0395n(d0Var, (AbstractC0388i0) aVar));
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public void m37865a(C0383g0 g0Var, C1780a aVar, Object obj) {
        aVar.mo7696a(new RunnableC0365d(aVar, obj, g0Var), this.f2040d);
    }

    /* renamed from: a */
    public void m37864a(AbstractC0385h0 h0Var) {
        synchronized (this.f2042f) {
            this.f2042f.add(h0Var);
            m37828r();
        }
    }

    /* renamed from: a */
    public void m37863a(AbstractC0390j0 j0Var) {
        synchronized (this.f2043g) {
            try {
                if (!this.f2046j) {
                    for (C0944d<SessionPlayer.AbstractC0277a, Executor> dVar : m38217b()) {
                        dVar.f4192b.execute(new RunnableC0394m(j0Var, dVar.f4191a));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public void m37861a(MediaPlayer2 mediaPlayer2, MediaItem mediaItem, int i, int i2) {
        C0383g0 pollFirst;
        synchronized (this.f2041e) {
            pollFirst = this.f2041e.pollFirst();
        }
        if (pollFirst == null) {
            Log.i("MediaPlayer", "No matching call type for " + i + ". Possibly because of reset().");
            return;
        }
        C0392k0 k0Var = pollFirst.f2104c;
        if (i != pollFirst.f2102a) {
            Log.w("MediaPlayer", "Call type does not match. expeced:" + pollFirst.f2102a + " actual:" + i);
            i2 = Integer.MIN_VALUE;
        }
        if (i2 == 0) {
            if (i == 2) {
                m37863a(new C0401t(k0Var));
            } else if (i == 19) {
                m37863a(new C0397p(mediaItem));
            } else if (i != 24) {
                if (i != 4) {
                    if (i != 5) {
                        if (i != 6) {
                            switch (i) {
                                case 14:
                                    m37863a(new C0396o(mo37845d()));
                                    break;
                                case 15:
                                    m37863a(new C0400s(k0Var));
                                    break;
                                case 16:
                                    m37863a(new C0399r(this.f2039c.mo32274c()));
                                    break;
                            }
                        }
                    } else {
                        m37838g(2);
                    }
                }
                m37838g(1);
            } else {
                m37863a(new C0398q(this.f2039c.mo32267h().m32303d().floatValue()));
            }
        }
        if (i != 1001) {
            pollFirst.f2103b.mo32103b(new SessionPlayer.C0278b(Integer.valueOf(f2034t.containsKey(Integer.valueOf(i2)) ? f2034t.get(Integer.valueOf(i2)).intValue() : -1).intValue(), mediaItem));
        } else {
            pollFirst.f2103b.mo32103b(new C0362b0(Integer.valueOf(f2038x.containsKey(Integer.valueOf(i2)) ? f2038x.get(Integer.valueOf(i2)).intValue() : -1003).intValue(), mediaItem));
        }
        m37828r();
    }

    /* renamed from: a */
    public void m37859a(Executor executor, AbstractC0388i0 i0Var) {
        super.m38218a(executor, (SessionPlayer.AbstractC0277a) i0Var);
    }

    /* renamed from: b */
    public C1780a<SessionPlayer.C0278b> m37857b(int i) {
        return m37876a(i, (MediaItem) null);
    }

    /* renamed from: b */
    public final C1780a<SessionPlayer.C0278b> m37854b(MediaItem mediaItem) {
        C1780a<SessionPlayer.C0278b> e = C1780a.m32102e();
        synchronized (this.f2041e) {
            m37874a(19, e, this.f2039c.mo32264j(mediaItem));
        }
        synchronized (this.f2048l) {
            this.f2055s = true;
        }
        return e;
    }

    /* renamed from: b */
    public AbstractFutureC5108l<SessionPlayer.C0278b> m37858b(float f) {
        if (f < 0.0f || f > 1.0f) {
            throw new IllegalArgumentException("volume should be between 0.0 and 1.0");
        }
        synchronized (this.f2043g) {
            if (this.f2046j) {
                return m37829q();
            }
            C0367e eVar = new C0367e(this.f2040d, f);
            m37864a(eVar);
            return eVar;
        }
    }

    /* renamed from: b */
    public AbstractFutureC5108l<SessionPlayer.C0278b> m37855b(Surface surface) {
        synchronized (this.f2043g) {
            if (this.f2046j) {
                return m37829q();
            }
            C0363c cVar = new C0363c(this.f2040d, surface);
            m37864a(cVar);
            return cVar;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: b */
    public AbstractFutureC5108l<SessionPlayer.C0278b> mo37853b(SessionPlayer.TrackInfo trackInfo) {
        return m37846c(m37847c(trackInfo));
    }

    /* renamed from: b */
    public AbstractFutureC5108l<SessionPlayer.C0278b> m37852b(C0392k0 k0Var) {
        if (k0Var != null) {
            synchronized (this.f2043g) {
                if (this.f2046j) {
                    return m37829q();
                }
                C0387i iVar = new C0387i(this.f2040d, k0Var.m37812b(), k0Var);
                m37864a(iVar);
                return iVar;
            }
        }
        throw new NullPointerException("trackInfo shouldn't be null");
    }

    /* renamed from: b */
    public List<C1780a<SessionPlayer.C0278b>> m37856b(int i, MediaItem mediaItem) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(m37876a(i, mediaItem));
        return arrayList;
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: c */
    public MediaItem mo37851c() {
        synchronized (this.f2043g) {
            if (this.f2046j) {
                return null;
            }
            return this.f2039c.mo32270e();
        }
    }

    /* renamed from: c */
    public final C0392k0 m37847c(SessionPlayer.TrackInfo trackInfo) {
        if (trackInfo == null) {
            return null;
        }
        return new C0392k0(trackInfo.m38209h(), trackInfo.m38207j(), trackInfo.m38206k(), trackInfo.m38210g());
    }

    /* renamed from: c */
    public C1780a<SessionPlayer.C0278b> m37850c(float f) {
        C1780a<SessionPlayer.C0278b> e = C1780a.m32102e();
        synchronized (this.f2041e) {
            m37874a(26, e, this.f2039c.mo32289a(f));
        }
        return e;
    }

    /* renamed from: c */
    public C1780a<SessionPlayer.C0278b> m37848c(MediaItem mediaItem) {
        C1780a<SessionPlayer.C0278b> e = C1780a.m32102e();
        synchronized (this.f2041e) {
            m37874a(22, e, this.f2039c.mo32262k(mediaItem));
        }
        return e;
    }

    /* renamed from: c */
    public AbstractFutureC5108l<SessionPlayer.C0278b> m37846c(C0392k0 k0Var) {
        if (k0Var != null) {
            synchronized (this.f2043g) {
                if (this.f2046j) {
                    return m37829q();
                }
                C0384h hVar = new C0384h(this.f2040d, k0Var.m37812b(), k0Var);
                m37864a(hVar);
                return hVar;
            }
        }
        throw new NullPointerException("trackInfo shouldn't be null");
    }

    /* renamed from: c */
    public List<C1780a<SessionPlayer.C0278b>> m37849c(int i) {
        return m37856b(i, null);
    }

    @Override // java.lang.AutoCloseable
    public void close() throws Exception {
        synchronized (this.f2043g) {
            if (!this.f2046j) {
                this.f2046j = true;
                m37823w();
                this.f2047k.m32317a();
                this.f2039c.mo32277b();
                this.f2040d.shutdown();
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: d */
    public long mo37845d() {
        synchronized (this.f2043g) {
            if (this.f2046j) {
                return Long.MIN_VALUE;
            }
            try {
                long f = this.f2039c.mo32269f();
                if (f >= 0) {
                    return f;
                }
                return Long.MIN_VALUE;
            } catch (IllegalStateException e) {
                return Long.MIN_VALUE;
            }
        }
    }

    /* renamed from: d */
    public C0392k0 m37844d(int i) {
        synchronized (this.f2043g) {
            C0392k0 k0Var = null;
            if (this.f2046j) {
                return null;
            }
            int b = this.f2039c.mo32276b(i);
            if (b >= 0) {
                k0Var = m37841e(b);
            }
            return k0Var;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: d */
    public AbstractFutureC5108l<SessionPlayer.C0278b> mo37843d(long j) {
        synchronized (this.f2043g) {
            if (this.f2046j) {
                return m37829q();
            }
            C0404w wVar = new C0404w(this.f2040d, true, j);
            m37864a(wVar);
            return wVar;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: e */
    public long mo37842e() {
        synchronized (this.f2043g) {
            if (this.f2046j) {
                return Long.MIN_VALUE;
            }
            try {
                long g = this.f2039c.mo32268g();
                if (g >= 0) {
                    return g;
                }
                return Long.MIN_VALUE;
            } catch (IllegalStateException e) {
                return Long.MIN_VALUE;
            }
        }
    }

    /* renamed from: e */
    public C0392k0 m37841e(int i) {
        MediaPlayer2.AbstractC0410c cVar = this.f2039c.mo32265j().get(i);
        return new C0392k0(i, this.f2039c.mo32270e(), cVar.mo32297b(), cVar.mo32298a());
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: f */
    public int mo37840f() {
        synchronized (this.f2043g) {
            if (this.f2046j) {
                return -1;
            }
            synchronized (this.f2048l) {
                if (this.f2052p < 0) {
                    return -1;
                }
                int i = this.f2052p + 1;
                if (i >= this.f2050n.size()) {
                    if (!(this.f2051o == 2 || this.f2051o == 3)) {
                        return -1;
                    }
                    return this.f2049m.m37819a(this.f2050n.get(0));
                }
                return this.f2049m.m37819a(this.f2050n.get(i));
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: g */
    public float mo37839g() {
        synchronized (this.f2043g) {
            if (this.f2046j) {
                return 1.0f;
            }
            try {
                return this.f2039c.mo32267h().m32303d().floatValue();
            } catch (IllegalStateException e) {
                return 1.0f;
            }
        }
    }

    /* renamed from: g */
    public void m37838g(int i) {
        boolean z;
        synchronized (this.f2043g) {
            if (this.f2044h != i) {
                this.f2044h = i;
                z = true;
            } else {
                z = false;
            }
        }
        if (z) {
            m37863a(new C0391k(i));
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: h */
    public int mo37837h() {
        int i;
        synchronized (this.f2043g) {
            i = this.f2044h;
        }
        return i;
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: i */
    public int mo37836i() {
        synchronized (this.f2043g) {
            if (this.f2046j) {
                return -1;
            }
            synchronized (this.f2048l) {
                if (this.f2052p < 0) {
                    return -1;
                }
                int i = this.f2052p - 1;
                if (i < 0) {
                    if (!(this.f2051o == 2 || this.f2051o == 3)) {
                        return -1;
                    }
                    return this.f2049m.m37819a(this.f2050n.get(this.f2050n.size() - 1));
                }
                return this.f2049m.m37819a(this.f2050n.get(i));
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: j */
    public List<SessionPlayer.TrackInfo> mo37835j() {
        List<C0392k0> u = m37825u();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < u.size(); i++) {
            arrayList.add(m37862a(u.get(i)));
        }
        return arrayList;
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: k */
    public VideoSize mo37834k() {
        synchronized (this.f2043g) {
            if (!this.f2046j) {
                return new VideoSize(this.f2039c.mo32261l(), this.f2039c.mo32263k());
            }
            return new VideoSize(0, 0);
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: l */
    public AbstractFutureC5108l<SessionPlayer.C0278b> mo37833l() {
        synchronized (this.f2043g) {
            if (this.f2046j) {
                return m37829q();
            }
            C0402u uVar = new C0402u(this.f2040d);
            m37864a(uVar);
            return uVar;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: m */
    public AbstractFutureC5108l<SessionPlayer.C0278b> mo37832m() {
        synchronized (this.f2043g) {
            if (this.f2046j) {
                return m37829q();
            }
            C0389j jVar = new C0389j(this.f2040d);
            m37864a(jVar);
            return jVar;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: n */
    public AbstractFutureC5108l<SessionPlayer.C0278b> mo37831n() {
        synchronized (this.f2043g) {
            if (this.f2046j) {
                return m37829q();
            }
            C0361b bVar = new C0361b(this.f2040d);
            m37864a(bVar);
            return bVar;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: p */
    public AbstractFutureC5108l<SessionPlayer.C0278b> mo37830p() {
        synchronized (this.f2043g) {
            if (this.f2046j) {
                return m37829q();
            }
            C0359a aVar = new C0359a(this.f2040d);
            m37864a(aVar);
            return aVar;
        }
    }

    /* renamed from: q */
    public C1780a<SessionPlayer.C0278b> m37829q() {
        C1780a<SessionPlayer.C0278b> e = C1780a.m32102e();
        e.mo32103b(new SessionPlayer.C0278b(-2, null));
        return e;
    }

    /* renamed from: r */
    public final void m37828r() {
        synchronized (this.f2042f) {
            try {
                Iterator<AbstractC0385h0<? super SessionPlayer.C0278b>> it = this.f2042f.iterator();
                while (it.hasNext()) {
                    AbstractC0385h0<? super SessionPlayer.C0278b> next = it.next();
                    if (!next.isCancelled() && !next.m37815f()) {
                        break;
                    }
                    this.f2042f.removeFirst();
                }
                while (it.hasNext()) {
                    AbstractC0385h0<? super SessionPlayer.C0278b> next2 = it.next();
                    if (!next2.f2108h) {
                        break;
                    }
                    next2.m37815f();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: s */
    public AudioAttributesCompat m37827s() {
        synchronized (this.f2043g) {
            if (this.f2046j) {
                return null;
            }
            try {
                return this.f2039c.mo32274c();
            } catch (IllegalStateException e) {
                return null;
            }
        }
    }

    /* renamed from: t */
    public float m37826t() {
        synchronized (this.f2043g) {
            if (this.f2046j) {
                return 1.0f;
            }
            return this.f2039c.mo32266i();
        }
    }

    /* renamed from: u */
    public List<C0392k0> m37825u() {
        synchronized (this.f2043g) {
            try {
                if (this.f2046j) {
                    return Collections.emptyList();
                }
                List<MediaPlayer2.AbstractC0410c> j = this.f2039c.mo32265j();
                MediaItem e = this.f2039c.mo32270e();
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < j.size(); i++) {
                    MediaPlayer2.AbstractC0410c cVar = j.get(i);
                    arrayList.add(new C0392k0(i, e, cVar.mo32297b(), cVar.mo32298a()));
                }
                return arrayList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: v */
    public AbstractFutureC5108l<SessionPlayer.C0278b> m37824v() {
        synchronized (this.f2043g) {
            if (this.f2046j) {
                return m37829q();
            }
            C0403v vVar = new C0403v(this.f2040d);
            m37864a(vVar);
            return vVar;
        }
    }

    /* renamed from: w */
    public void m37823w() {
        synchronized (this.f2041e) {
            try {
                Iterator<C0383g0> it = this.f2041e.iterator();
                while (it.hasNext()) {
                    it.next().f2103b.cancel(true);
                }
                this.f2041e.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.f2042f) {
            Iterator<AbstractC0385h0<? super SessionPlayer.C0278b>> it2 = this.f2042f.iterator();
            while (it2.hasNext()) {
                AbstractC0385h0<? super SessionPlayer.C0278b> next = it2.next();
                if (next.f2109i && !next.isDone() && !next.isCancelled()) {
                    next.cancel(true);
                }
            }
            this.f2042f.clear();
        }
        synchronized (this.f2043g) {
            this.f2044h = 0;
            this.f2045i.clear();
        }
        synchronized (this.f2048l) {
            this.f2049m.m37820a();
            this.f2050n.clear();
            this.f2053q = null;
            this.f2054r = null;
            this.f2052p = -1;
            this.f2055s = false;
        }
        this.f2047k.m32314d();
        this.f2039c.mo32257p();
    }

    /* renamed from: x */
    public C1780a<SessionPlayer.C0278b> m37822x() {
        C1780a<SessionPlayer.C0278b> e = C1780a.m32102e();
        synchronized (this.f2041e) {
            m37874a(29, e, this.f2039c.mo32256q());
        }
        return e;
    }

    /* renamed from: y */
    public C0944d<MediaItem, MediaItem> m37821y() {
        MediaItem mediaItem;
        MediaItem mediaItem2;
        int i = this.f2052p;
        C0944d<MediaItem, MediaItem> dVar = null;
        if (i >= 0) {
            if (!Objects.equals(this.f2053q, this.f2050n.get(i))) {
                mediaItem = this.f2050n.get(this.f2052p);
                this.f2053q = mediaItem;
            } else {
                mediaItem = null;
            }
            int i2 = this.f2052p + 1;
            int i3 = i2;
            if (i2 >= this.f2050n.size()) {
                int i4 = this.f2051o;
                i3 = (i4 == 2 || i4 == 3) ? 0 : -1;
            }
            if (i3 == -1) {
                this.f2054r = null;
            } else if (!Objects.equals(this.f2054r, this.f2050n.get(i3))) {
                mediaItem2 = this.f2050n.get(i3);
                this.f2054r = mediaItem2;
                if (mediaItem == null || mediaItem2 != null) {
                    dVar = new C0944d<>(mediaItem, mediaItem2);
                }
                return dVar;
            }
            mediaItem2 = null;
            if (mediaItem == null) {
            }
            dVar = new C0944d<>(mediaItem, mediaItem2);
            return dVar;
        } else if (this.f2053q == null && this.f2054r == null) {
            return null;
        } else {
            this.f2053q = null;
            this.f2054r = null;
            return new C0944d<>(null, null);
        }
    }
}

package androidx.media2.player;

import android.content.Context;
import android.media.PlaybackParams;
import android.util.Pair;
import android.view.Surface;
import androidx.media2.common.FileMediaItem;
import androidx.media2.common.MediaItem;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.common.VideoSize;
import com.google.common.util.concurrent.ListenableFuture;
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
import n3.h.a.f;
import n3.y.c.c;
import n3.y.c.c0;
import n3.y.c.j;
import n3.y.c.k;
import n3.y.c.m;
import n3.y.c.o0;
import n3.y.c.p0;
import n3.y.c.q0;
import n3.y.c.r;
import n3.y.c.r0;
import n3.y.c.s0;
import n3.y.c.t0;
import p1727n3.p1788g.C26174a;
import p1727n3.p1790h.p1791a.AbstractC26236a;
import p1727n3.p1807k.p1820h.C26553c;
import p1727n3.p1874y.p1906c.AbstractC27489x0;
import p1727n3.p1874y.p1906c.C27467c1;
import p1727n3.p1874y.p1906c.C27468d;
import p1727n3.p1874y.p1906c.C27493y0;
import p1727n3.p1874y.p1906c.CallableC27472g;
import p1727n3.p1874y.p1906c.CallableC27473h;
import p1727n3.p1874y.p1906c.CallableC27475i;
import p1727n3.p1874y.p1906c.CallableC27484o;
import p1727n3.p1874y.p1906c.CallableC27485p;
import p1727n3.p1874y.p1906c.CallableC27486s;
import p1727n3.p1874y.p1906c.CallableC27487t;
import p1727n3.p1874y.p1906c.CallableC27488u;
import p1727n3.p1874y.p1906c.RunnableC27483l0;
/* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer.class */
public final class MediaPlayer extends SessionPlayer {

    /* renamed from: s */
    public static C26174a<Integer, Integer> f1157s;

    /* renamed from: t */
    public static C26174a<Integer, Integer> f1158t;

    /* renamed from: u */
    public static C26174a<Integer, Integer> f1159u;

    /* renamed from: v */
    public static C26174a<Integer, Integer> f1160v;

    /* renamed from: w */
    public static C26174a<Integer, Integer> f1161w;

    /* renamed from: c */
    public AbstractC27489x0 f1162c;

    /* renamed from: d */
    public ExecutorService f1163d;

    /* renamed from: j */
    public boolean f1169j;

    /* renamed from: k */
    public final C27468d f1170k;

    /* renamed from: o */
    public int f1174o;

    /* renamed from: p */
    public MediaItem f1175p;

    /* renamed from: q */
    public MediaItem f1176q;

    /* renamed from: r */
    public boolean f1177r;

    /* renamed from: e */
    public final ArrayDeque<C0275u> f1164e = new ArrayDeque<>();

    /* renamed from: f */
    public final ArrayDeque<v<? extends SessionPlayer.C0233b>> f1165f = new ArrayDeque<>();

    /* renamed from: g */
    public final Object f1166g = new Object();

    /* renamed from: i */
    public Map<MediaItem, Integer> f1168i = new HashMap();

    /* renamed from: l */
    public final Object f1171l = new Object();

    /* renamed from: m */
    public C0263q f1172m = new C0263q();

    /* renamed from: n */
    public ArrayList<MediaItem> f1173n = new ArrayList<>();

    /* renamed from: h */
    public int f1167h = 0;

    /* renamed from: androidx.media2.player.MediaPlayer$h */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$h.class */
    public class C0258h implements AbstractC0277x {

        /* renamed from: a */
        public final /* synthetic */ int f1178a;

        public C0258h(int i) {
            MediaPlayer.this = r4;
            this.f1178a = i;
        }

        @Override // androidx.media2.player.MediaPlayer.AbstractC0277x
        /* renamed from: a */
        public void mo42772a(SessionPlayer.AbstractC0232a abstractC0232a) {
            abstractC0232a.onPlayerStateChanged(MediaPlayer.this, this.f1178a);
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$i */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$i.class */
    public class C0259i implements AbstractC0277x {

        /* renamed from: a */
        public final /* synthetic */ MediaItem f1180a;

        /* renamed from: b */
        public final /* synthetic */ int f1181b;

        public C0259i(MediaItem mediaItem, int i) {
            MediaPlayer.this = r4;
            this.f1180a = mediaItem;
            this.f1181b = i;
        }

        @Override // androidx.media2.player.MediaPlayer.AbstractC0277x
        /* renamed from: a */
        public void mo42772a(SessionPlayer.AbstractC0232a abstractC0232a) {
            abstractC0232a.onBufferingStateChanged(MediaPlayer.this, this.f1180a, this.f1181b);
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$j */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$j.class */
    public class RunnableC0260j implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC0277x f1183a;

        /* renamed from: b */
        public final /* synthetic */ SessionPlayer.AbstractC0232a f1184b;

        public RunnableC0260j(MediaPlayer mediaPlayer, AbstractC0277x abstractC0277x, SessionPlayer.AbstractC0232a abstractC0232a) {
            this.f1183a = abstractC0277x;
            this.f1184b = abstractC0232a;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1183a.mo42772a(this.f1184b);
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$k */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$k.class */
    public class RunnableC0261k implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC0264r f1185a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC0276w f1186b;

        public RunnableC0261k(MediaPlayer mediaPlayer, AbstractC0264r abstractC0264r, AbstractC0276w abstractC0276w) {
            this.f1185a = abstractC0264r;
            this.f1186b = abstractC0276w;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1185a.mo42773a(this.f1186b);
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$o */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$o.class */
    public static final class C0262o {
    }

    /* renamed from: androidx.media2.player.MediaPlayer$q */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$q.class */
    public static class C0263q {

        /* renamed from: a */
        public ArrayList<MediaItem> f1187a = new ArrayList<>();

        /* renamed from: a */
        public void m42775a() {
            Iterator<MediaItem> it = this.f1187a.iterator();
            while (it.hasNext()) {
                FileMediaItem fileMediaItem = (MediaItem) it.next();
                if (fileMediaItem instanceof FileMediaItem) {
                    Objects.requireNonNull(fileMediaItem);
                    throw null;
                }
            }
            this.f1187a.clear();
        }

        /* renamed from: b */
        public int m42774b(Object obj) {
            return this.f1187a.indexOf(obj);
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$r */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$r.class */
    public interface AbstractC0264r {
        /* renamed from: a */
        void mo42773a(AbstractC0276w abstractC0276w);
    }

    /* renamed from: androidx.media2.player.MediaPlayer$s */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$s.class */
    public class C0265s extends AbstractC27489x0.AbstractC27491b {

        /* renamed from: androidx.media2.player.MediaPlayer$s$a */
        /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$s$a.class */
        public class C0266a implements AbstractC0277x {

            /* renamed from: a */
            public final /* synthetic */ VideoSize f1189a;

            public C0266a(VideoSize videoSize) {
                C0265s.this = r4;
                this.f1189a = videoSize;
            }

            @Override // androidx.media2.player.MediaPlayer.AbstractC0277x
            /* renamed from: a */
            public void mo42772a(SessionPlayer.AbstractC0232a abstractC0232a) {
                abstractC0232a.onVideoSizeChanged(MediaPlayer.this, this.f1189a);
            }
        }

        /* renamed from: androidx.media2.player.MediaPlayer$s$b */
        /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$s$b.class */
        public class C0267b implements AbstractC0264r {

            /* renamed from: a */
            public final /* synthetic */ MediaItem f1191a;

            /* renamed from: b */
            public final /* synthetic */ C27467c1 f1192b;

            public C0267b(MediaItem mediaItem, C27467c1 c27467c1) {
                C0265s.this = r4;
                this.f1191a = mediaItem;
                this.f1192b = c27467c1;
            }

            @Override // androidx.media2.player.MediaPlayer.AbstractC0264r
            /* renamed from: a */
            public void mo42773a(AbstractC0276w abstractC0276w) {
                abstractC0276w.onTimedMetaDataAvailable(MediaPlayer.this, this.f1191a, this.f1192b);
            }
        }

        /* renamed from: androidx.media2.player.MediaPlayer$s$c */
        /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$s$c.class */
        public class C0268c implements AbstractC0264r {

            /* renamed from: a */
            public final /* synthetic */ MediaItem f1194a;

            /* renamed from: b */
            public final /* synthetic */ int f1195b;

            /* renamed from: c */
            public final /* synthetic */ int f1196c;

            public C0268c(MediaItem mediaItem, int i, int i2) {
                C0265s.this = r4;
                this.f1194a = mediaItem;
                this.f1195b = i;
                this.f1196c = i2;
            }

            @Override // androidx.media2.player.MediaPlayer.AbstractC0264r
            /* renamed from: a */
            public void mo42773a(AbstractC0276w abstractC0276w) {
                abstractC0276w.onError(MediaPlayer.this, this.f1194a, this.f1195b, this.f1196c);
            }
        }

        /* renamed from: androidx.media2.player.MediaPlayer$s$d */
        /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$s$d.class */
        public class C0269d implements AbstractC0277x {

            /* renamed from: a */
            public final /* synthetic */ MediaItem f1198a;

            public C0269d(MediaItem mediaItem) {
                C0265s.this = r4;
                this.f1198a = mediaItem;
            }

            @Override // androidx.media2.player.MediaPlayer.AbstractC0277x
            /* renamed from: a */
            public void mo42772a(SessionPlayer.AbstractC0232a abstractC0232a) {
                abstractC0232a.onCurrentMediaItemChanged(MediaPlayer.this, this.f1198a);
            }
        }

        /* renamed from: androidx.media2.player.MediaPlayer$s$f */
        /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$s$f.class */
        public class C0270f implements AbstractC0277x {
            public C0270f() {
                C0265s.this = r4;
            }

            @Override // androidx.media2.player.MediaPlayer.AbstractC0277x
            /* renamed from: a */
            public void mo42772a(SessionPlayer.AbstractC0232a abstractC0232a) {
                abstractC0232a.onPlaybackCompleted(MediaPlayer.this);
            }
        }

        /* renamed from: androidx.media2.player.MediaPlayer$s$g */
        /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$s$g.class */
        public class C0271g implements AbstractC0264r {

            /* renamed from: a */
            public final /* synthetic */ MediaItem f1201a;

            /* renamed from: b */
            public final /* synthetic */ int f1202b;

            /* renamed from: c */
            public final /* synthetic */ int f1203c;

            public C0271g(MediaItem mediaItem, int i, int i2) {
                C0265s.this = r4;
                this.f1201a = mediaItem;
                this.f1202b = i;
                this.f1203c = i2;
            }

            @Override // androidx.media2.player.MediaPlayer.AbstractC0264r
            /* renamed from: a */
            public void mo42773a(AbstractC0276w abstractC0276w) {
                abstractC0276w.onInfo(MediaPlayer.this, this.f1201a, this.f1202b, this.f1203c);
            }
        }

        /* renamed from: androidx.media2.player.MediaPlayer$s$h */
        /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$s$h.class */
        public class C0272h implements AbstractC0264r {

            /* renamed from: a */
            public final /* synthetic */ MediaItem f1205a;

            /* renamed from: b */
            public final /* synthetic */ C27493y0 f1206b;

            public C0272h(MediaItem mediaItem, C27493y0 c27493y0) {
                C0265s.this = r4;
                this.f1205a = mediaItem;
                this.f1206b = c27493y0;
            }

            @Override // androidx.media2.player.MediaPlayer.AbstractC0264r
            /* renamed from: a */
            public void mo42773a(AbstractC0276w abstractC0276w) {
                abstractC0276w.onMediaTimeDiscontinuity(MediaPlayer.this, this.f1205a, this.f1206b);
            }
        }

        /* renamed from: androidx.media2.player.MediaPlayer$s$i */
        /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$s$i.class */
        public class C0273i implements AbstractC0277x {

            /* renamed from: a */
            public final /* synthetic */ MediaItem f1208a;

            /* renamed from: b */
            public final /* synthetic */ SessionPlayer.TrackInfo f1209b;

            /* renamed from: c */
            public final /* synthetic */ SubtitleData f1210c;

            public C0273i(MediaItem mediaItem, SessionPlayer.TrackInfo trackInfo, SubtitleData subtitleData) {
                C0265s.this = r4;
                this.f1208a = mediaItem;
                this.f1209b = trackInfo;
                this.f1210c = subtitleData;
            }

            @Override // androidx.media2.player.MediaPlayer.AbstractC0277x
            /* renamed from: a */
            public void mo42772a(SessionPlayer.AbstractC0232a abstractC0232a) {
                abstractC0232a.onSubtitleData(MediaPlayer.this, this.f1208a, this.f1209b, this.f1210c);
            }
        }

        public C0265s() {
            MediaPlayer.this = r4;
        }

        @Override // p1727n3.p1874y.p1906c.AbstractC27489x0.AbstractC27491b
        /* renamed from: a */
        public void mo207a(AbstractC27489x0 abstractC27489x0, MediaItem mediaItem, int i, int i2) {
            C0275u pollFirst;
            MediaPlayer mediaPlayer = MediaPlayer.this;
            synchronized (mediaPlayer.f1164e) {
                pollFirst = mediaPlayer.f1164e.pollFirst();
            }
            if (pollFirst == null) {
                return;
            }
            if (i != pollFirst.f1212a) {
                i2 = Integer.MIN_VALUE;
            }
            if (i2 == 0) {
                if (i != 2) {
                    if (i != 19) {
                        if (i == 24) {
                            mediaPlayer.m42792W0(new q0(mediaPlayer, mediaPlayer.f1162c.m209d().m199a().floatValue()));
                        } else if (i != 29) {
                            if (i != 4) {
                                if (i == 5) {
                                    mediaPlayer.m42811B1(2);
                                } else if (i != 6) {
                                    switch (i) {
                                        case 14:
                                            mediaPlayer.m42792W0(new o0(mediaPlayer, mediaPlayer.mo42787l()));
                                            break;
                                        case 15:
                                            mediaPlayer.m42792W0(new s0(mediaPlayer, pollFirst));
                                            break;
                                        case 16:
                                            mediaPlayer.m42792W0(new r0(mediaPlayer, mediaPlayer.f1162c.m211b()));
                                            break;
                                    }
                                }
                            }
                            mediaPlayer.m42811B1(1);
                        }
                    }
                    mediaPlayer.m42792W0(new p0(mediaPlayer, mediaItem));
                } else {
                    mediaPlayer.m42792W0(new t0(mediaPlayer, pollFirst));
                }
            }
            if (i != 1001) {
                pollFirst.f1213b.h(new SessionPlayer.C0233b(Integer.valueOf(MediaPlayer.f1157s.containsKey(Integer.valueOf(i2)) ? MediaPlayer.f1157s.get(Integer.valueOf(i2)).intValue() : -1).intValue(), mediaItem));
            } else {
                pollFirst.f1213b.h(new p(Integer.valueOf(MediaPlayer.f1161w.containsKey(Integer.valueOf(i2)) ? MediaPlayer.f1161w.get(Integer.valueOf(i2)).intValue() : -1003).intValue(), mediaItem));
            }
            mediaPlayer.m42799L0();
        }

        @Override // p1727n3.p1874y.p1906c.AbstractC27489x0.AbstractC27491b
        /* renamed from: b */
        public void mo206b(AbstractC27489x0 abstractC27489x0, MediaItem mediaItem, int i, int i2) {
            MediaPlayer.this.m42811B1(3);
            MediaPlayer.this.m42786l1(mediaItem, 0);
            MediaPlayer.this.m42794U0(new C0268c(mediaItem, i, i2));
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0026, code lost:
            if (r11 != 702) goto L46;
         */
        @Override // p1727n3.p1874y.p1906c.AbstractC27489x0.AbstractC27491b
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo205c(p1727n3.p1874y.p1906c.AbstractC27489x0 r9, androidx.media2.common.MediaItem r10, int r11, int r12) {
            /*
                Method dump skipped, instructions count: 345
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.player.MediaPlayer.C0265s.mo205c(n3.y.c.x0, androidx.media2.common.MediaItem, int, int):void");
        }

        @Override // p1727n3.p1874y.p1906c.AbstractC27489x0.AbstractC27491b
        /* renamed from: d */
        public void mo204d(AbstractC27489x0 abstractC27489x0, MediaItem mediaItem, C27493y0 c27493y0) {
            MediaPlayer.this.m42794U0(new C0272h(mediaItem, c27493y0));
        }

        @Override // p1727n3.p1874y.p1906c.AbstractC27489x0.AbstractC27491b
        /* renamed from: e */
        public void mo203e(AbstractC27489x0 abstractC27489x0, MediaItem mediaItem, SessionPlayer.TrackInfo trackInfo, SubtitleData subtitleData) {
            MediaPlayer.this.m42792W0(new C0273i(mediaItem, trackInfo, subtitleData));
        }

        @Override // p1727n3.p1874y.p1906c.AbstractC27489x0.AbstractC27491b
        /* renamed from: f */
        public void mo202f(AbstractC27489x0 abstractC27489x0, MediaItem mediaItem, C27467c1 c27467c1) {
            MediaPlayer.this.m42794U0(new C0267b(mediaItem, c27467c1));
        }

        @Override // p1727n3.p1874y.p1906c.AbstractC27489x0.AbstractC27491b
        /* renamed from: g */
        public void mo201g(AbstractC27489x0 abstractC27489x0, List<SessionPlayer.TrackInfo> list) {
            MediaPlayer.this.m42792W0(new c(this, list));
        }

        @Override // p1727n3.p1874y.p1906c.AbstractC27489x0.AbstractC27491b
        /* renamed from: h */
        public void mo200h(AbstractC27489x0 abstractC27489x0, MediaItem mediaItem, int i, int i2) {
            MediaItem mo42788k = MediaPlayer.this.mo42788k();
            if (mo42788k == null || mo42788k != mediaItem) {
                return;
            }
            MediaPlayer.this.m42792W0(new C0266a(new VideoSize(i, i2)));
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$t */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$t.class */
    public class C0274t extends AbstractC27489x0.AbstractC27490a {
        public C0274t(MediaPlayer mediaPlayer) {
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$u */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$u.class */
    public static final class C0275u {

        /* renamed from: a */
        public final int f1212a;

        /* renamed from: b */
        public final f<? extends SessionPlayer.C0233b> f1213b;

        /* renamed from: c */
        public final SessionPlayer.TrackInfo f1214c;

        public C0275u(int i, f<? extends SessionPlayer.C0233b> fVar) {
            this.f1212a = i;
            this.f1213b = fVar;
            this.f1214c = null;
        }

        public C0275u(int i, f<? extends SessionPlayer.C0233b> fVar, SessionPlayer.TrackInfo trackInfo) {
            this.f1212a = i;
            this.f1213b = fVar;
            this.f1214c = trackInfo;
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$w */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$w.class */
    public static abstract class AbstractC0276w extends SessionPlayer.AbstractC0232a {
        public void onDrmInfo(MediaPlayer mediaPlayer, MediaItem mediaItem, C0262o c0262o) {
        }

        public void onError(MediaPlayer mediaPlayer, MediaItem mediaItem, int i, int i2) {
        }

        public void onInfo(MediaPlayer mediaPlayer, MediaItem mediaItem, int i, int i2) {
        }

        public void onMediaTimeDiscontinuity(MediaPlayer mediaPlayer, MediaItem mediaItem, C27493y0 c27493y0) {
        }

        public void onTimedMetaDataAvailable(MediaPlayer mediaPlayer, MediaItem mediaItem, C27467c1 c27467c1) {
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC0232a
        public void onVideoSizeChanged(SessionPlayer sessionPlayer, VideoSize videoSize) {
            if (sessionPlayer instanceof MediaPlayer) {
                onVideoSizeChanged((MediaPlayer) sessionPlayer, sessionPlayer.mo42788k(), new VideoSize(videoSize));
                return;
            }
            throw new IllegalArgumentException("player must be MediaPlayer");
        }

        @Deprecated
        public void onVideoSizeChanged(MediaPlayer mediaPlayer, MediaItem mediaItem, VideoSize videoSize) {
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer$x */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$x.class */
    public interface AbstractC0277x {
        /* renamed from: a */
        void mo42772a(SessionPlayer.AbstractC0232a abstractC0232a);
    }

    static {
        PlaybackParams playbackParams = new PlaybackParams();
        if (1.0f != 0.0f) {
            if (1.0f < 0.0f) {
                throw new IllegalArgumentException("negative speed is not supported");
            }
            playbackParams.setSpeed(1.0f);
            if (1.0f == 0.0f) {
                throw new IllegalArgumentException("0 pitch is not allowed");
            }
            if (1.0f < 0.0f) {
                throw new IllegalArgumentException("pitch must not be negative");
            }
            playbackParams.setPitch(1.0f);
            playbackParams.setAudioFallbackMode(0);
            C26174a<Integer, Integer> c26174a = new C26174a<>();
            f1157s = c26174a;
            c26174a.put(0, 0);
            f1157s.put(Integer.MIN_VALUE, -1);
            f1157s.put(1, -2);
            f1157s.put(2, -3);
            f1157s.put(3, -4);
            f1157s.put(4, -5);
            f1157s.put(5, 1);
            C26174a<Integer, Integer> c26174a2 = new C26174a<>();
            f1158t = c26174a2;
            c26174a2.put(1, 1);
            f1158t.put(-1004, -1004);
            f1158t.put(-1007, -1007);
            f1158t.put(-1010, -1010);
            f1158t.put(-110, -110);
            C26174a<Integer, Integer> c26174a3 = new C26174a<>();
            f1159u = c26174a3;
            c26174a3.put(3, 3);
            f1159u.put(700, 700);
            f1159u.put(704, 704);
            f1159u.put(800, 800);
            f1159u.put(801, 801);
            f1159u.put(802, 802);
            f1159u.put(804, 804);
            f1159u.put(805, 805);
            C26174a<Integer, Integer> c26174a4 = new C26174a<>();
            f1160v = c26174a4;
            c26174a4.put(0, 0);
            f1160v.put(1, 1);
            f1160v.put(2, 2);
            f1160v.put(3, 3);
            C26174a<Integer, Integer> c26174a5 = new C26174a<>();
            f1161w = c26174a5;
            c26174a5.put(0, 0);
            f1161w.put(1, -1001);
            f1161w.put(2, -1003);
            f1161w.put(3, -1003);
            f1161w.put(4, -1004);
            f1161w.put(5, -1005);
            return;
        }
        throw new IllegalArgumentException("0 speed is not allowed");
    }

    public MediaPlayer(Context context) {
        this.f1162c = new m(context);
        ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(1);
        this.f1163d = newFixedThreadPool;
        m mVar = this.f1162c;
        C0265s c0265s = new C0265s();
        m mVar2 = mVar;
        Objects.requireNonNull(mVar2);
        Objects.requireNonNull(newFixedThreadPool);
        synchronized (mVar2.f) {
            mVar2.g = Pair.create(newFixedThreadPool, c0265s);
        }
        m mVar3 = this.f1162c;
        ExecutorService executorService = this.f1163d;
        C0274t c0274t = new C0274t(this);
        m mVar4 = mVar3;
        Objects.requireNonNull(mVar4);
        Objects.requireNonNull(executorService);
        synchronized (mVar4.f) {
            Pair.create(executorService, c0274t);
        }
        this.f1174o = -2;
        this.f1170k = new C27468d(context, this);
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: B0 */
    public ListenableFuture<SessionPlayer.C0233b> mo42812B0() {
        synchronized (this.f1166g) {
            if (this.f1169j) {
                return m42802J0();
            }
            b bVar = new b(this, this.f1163d);
            m42805G0(bVar);
            return bVar;
        }
    }

    /* renamed from: B1 */
    public void m42811B1(int i) {
        boolean z;
        synchronized (this.f1166g) {
            if (this.f1167h != i) {
                this.f1167h = i;
                z = true;
            } else {
                z = false;
            }
        }
        if (z) {
            m42792W0(new C0258h(i));
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: D0 */
    public ListenableFuture<SessionPlayer.C0233b> mo42810D0() {
        synchronized (this.f1166g) {
            if (this.f1169j) {
                return m42802J0();
            }
            a aVar = new a(this, this.f1163d);
            m42805G0(aVar);
            return aVar;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: E */
    public float mo42809E() {
        synchronized (this.f1166g) {
            if (this.f1169j) {
                return 1.0f;
            }
            try {
                return this.f1162c.m209d().m199a().floatValue();
            } catch (IllegalStateException e) {
                return 1.0f;
            }
        }
    }

    /* renamed from: E1 */
    public f<SessionPlayer.C0233b> m42808E1() {
        f<SessionPlayer.C0233b> fVar = new f<>();
        synchronized (this.f1164e) {
            m mVar = this.f1162c;
            j jVar = new j(mVar, 29, false);
            mVar.f(jVar);
            m42807F0(29, fVar, jVar);
        }
        return fVar;
    }

    /* renamed from: F0 */
    public void m42807F0(int i, f<? extends SessionPlayer.C0233b> fVar, Object obj) {
        C0275u c0275u = new C0275u(i, fVar);
        this.f1164e.add(c0275u);
        fVar.addListener(new RunnableC27483l0(this, fVar, obj, c0275u), this.f1163d);
    }

    /* renamed from: F1 */
    public C26553c<MediaItem, MediaItem> m42806F1() {
        MediaItem mediaItem;
        MediaItem mediaItem2;
        int i = this.f1174o;
        if (i < 0) {
            if (this.f1175p == null && this.f1176q == null) {
                return null;
            }
            this.f1175p = null;
            this.f1176q = null;
            return new C26553c<>(null, null);
        }
        if (!Objects.equals(this.f1175p, this.f1173n.get(i))) {
            mediaItem = this.f1173n.get(this.f1174o);
            this.f1175p = mediaItem;
        } else {
            mediaItem = null;
        }
        int i2 = this.f1174o + 1;
        int i3 = i2;
        if (i2 >= this.f1173n.size()) {
            i3 = -1;
        }
        if (i3 == -1) {
            this.f1176q = null;
        } else if (!Objects.equals(this.f1176q, this.f1173n.get(i3))) {
            mediaItem2 = this.f1173n.get(i3);
            this.f1176q = mediaItem2;
            return (mediaItem == null || mediaItem2 != null) ? new C26553c<>(mediaItem, mediaItem2) : null;
        }
        mediaItem2 = null;
        return (mediaItem == null || mediaItem2 != null) ? new C26553c<>(mediaItem, mediaItem2) : null;
    }

    /* renamed from: G0 */
    public void m42805G0(v<? extends SessionPlayer.C0233b> vVar) {
        synchronized (this.f1165f) {
            this.f1165f.add(vVar);
            m42799L0();
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: I */
    public int mo42804I() {
        int i;
        synchronized (this.f1166g) {
            i = this.f1167h;
        }
        return i;
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: J */
    public int mo42803J() {
        synchronized (this.f1166g) {
            if (this.f1169j) {
                return -1;
            }
            synchronized (this.f1171l) {
                int i = this.f1174o;
                if (i < 0) {
                    return -1;
                }
                int i2 = i - 1;
                if (i2 < 0) {
                    return -1;
                }
                return this.f1172m.m42774b(this.f1173n.get(i2));
            }
        }
    }

    /* renamed from: J0 */
    public f<SessionPlayer.C0233b> m42802J0() {
        f<SessionPlayer.C0233b> fVar = new f<>();
        fVar.h(new SessionPlayer.C0233b(-2, null));
        return fVar;
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: K */
    public SessionPlayer.TrackInfo mo42801K(int i) {
        TrackInfo trackInfo;
        synchronized (this.f1166g) {
            trackInfo = null;
            if (!this.f1169j) {
                m mVar = this.f1162c;
                SessionPlayer.TrackInfo trackInfo2 = (SessionPlayer.TrackInfo) mVar.m(new CallableC27488u(mVar, i));
                if (trackInfo2 != null) {
                    trackInfo = new TrackInfo(trackInfo2);
                }
            }
        }
        return trackInfo;
    }

    /* renamed from: K0 */
    public List<f<SessionPlayer.C0233b>> m42800K0(int i) {
        ArrayList arrayList = new ArrayList();
        f fVar = new f();
        fVar.h(new SessionPlayer.C0233b(i, this.f1162c.m210c()));
        arrayList.add(fVar);
        return arrayList;
    }

    /* renamed from: L0 */
    public final void m42799L0() {
        synchronized (this.f1165f) {
            Iterator<v<? extends SessionPlayer.C0233b>> it = this.f1165f.iterator();
            while (it.hasNext()) {
                v<? extends SessionPlayer.C0233b> next = it.next();
                if (!(next.f73149a instanceof AbstractC26236a.C26239c) && !next.k()) {
                    break;
                }
                this.f1165f.removeFirst();
            }
            while (it.hasNext()) {
                v<? extends SessionPlayer.C0233b> next2 = it.next();
                if (!next2.h) {
                    break;
                }
                next2.k();
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: P */
    public List<SessionPlayer.TrackInfo> mo42798P() {
        synchronized (this.f1166g) {
            if (this.f1169j) {
                return Collections.emptyList();
            }
            m mVar = this.f1162c;
            return (List) mVar.m(new CallableC27487t(mVar));
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: Q */
    public VideoSize mo42797Q() {
        VideoSize videoSize;
        synchronized (this.f1166g) {
            if (this.f1169j) {
                videoSize = new VideoSize(0, 0);
            } else {
                m mVar = this.f1162c;
                int intValue = ((Integer) mVar.m(new CallableC27484o(mVar))).intValue();
                m mVar2 = this.f1162c;
                videoSize = new VideoSize(intValue, ((Integer) mVar2.m(new CallableC27485p(mVar2))).intValue());
            }
        }
        return videoSize;
    }

    /* renamed from: Q0 */
    public float m42796Q0() {
        synchronized (this.f1166g) {
            if (this.f1169j) {
                return 1.0f;
            }
            m mVar = this.f1162c;
            return ((Float) mVar.m(new CallableC27486s(mVar))).floatValue();
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: S */
    public ListenableFuture<SessionPlayer.C0233b> mo42795S() {
        synchronized (this.f1166g) {
            if (this.f1169j) {
                return m42802J0();
            }
            l lVar = new l(this, this.f1163d);
            m42805G0(lVar);
            return lVar;
        }
    }

    /* renamed from: U0 */
    public void m42794U0(AbstractC0264r abstractC0264r) {
        synchronized (this.f1166g) {
            if (this.f1169j) {
                return;
            }
            Iterator it = ((ArrayList) m42853j()).iterator();
            while (it.hasNext()) {
                C26553c c26553c = (C26553c) it.next();
                F f = c26553c.f74395a;
                if (f instanceof AbstractC0276w) {
                    ((Executor) c26553c.f74396b).execute(new RunnableC0261k(this, abstractC0264r, (AbstractC0276w) f));
                }
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: W */
    public ListenableFuture<SessionPlayer.C0233b> mo42793W() {
        synchronized (this.f1166g) {
            if (this.f1169j) {
                return m42802J0();
            }
            g gVar = new g(this, this.f1163d);
            m42805G0(gVar);
            return gVar;
        }
    }

    /* renamed from: W0 */
    public void m42792W0(AbstractC0277x abstractC0277x) {
        synchronized (this.f1166g) {
            if (this.f1169j) {
                return;
            }
            Iterator it = ((ArrayList) m42853j()).iterator();
            while (it.hasNext()) {
                C26553c c26553c = (C26553c) it.next();
                ((Executor) c26553c.f74396b).execute(new RunnableC0260j(this, abstractC0277x, (SessionPlayer.AbstractC0232a) c26553c.f74395a));
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: b */
    public ListenableFuture<SessionPlayer.C0233b> mo42791b(SessionPlayer.TrackInfo trackInfo) {
        Objects.requireNonNull(trackInfo, "trackInfo shouldn't be null");
        synchronized (this.f1166g) {
            if (this.f1169j) {
                return m42802J0();
            }
            f fVar = new f(this, this.f1163d, trackInfo);
            m42805G0(fVar);
            return fVar;
        }
    }

    @Override // androidx.media2.common.SessionPlayer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        synchronized (this.f1166g) {
            if (!this.f1169j) {
                this.f1169j = true;
                m42789j1();
                C27468d.b bVar = this.f1170k.f77316a;
                synchronized (bVar.d) {
                    bVar.c();
                    bVar.a();
                }
                this.f1162c.m212a();
                this.f1163d.shutdown();
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: d */
    public long mo42790d() {
        synchronized (this.f1166g) {
            if (this.f1169j) {
                return Long.MIN_VALUE;
            }
            try {
                m mVar = this.f1162c;
                long longValue = ((Long) mVar.m(new CallableC27475i(mVar))).longValue();
                if (longValue < 0) {
                    return Long.MIN_VALUE;
                }
                return longValue;
            } catch (IllegalStateException e) {
                return Long.MIN_VALUE;
            }
        }
    }

    /* renamed from: j1 */
    public void m42789j1() {
        synchronized (this.f1164e) {
            Iterator<C0275u> it = this.f1164e.iterator();
            while (it.hasNext()) {
                it.next().f1213b.cancel(true);
            }
            this.f1164e.clear();
        }
        synchronized (this.f1165f) {
            Iterator<v<? extends SessionPlayer.C0233b>> it2 = this.f1165f.iterator();
            while (it2.hasNext()) {
                v<? extends SessionPlayer.C0233b> next = it2.next();
                if (next.i && !next.isDone() && !(next.f73149a instanceof AbstractC26236a.C26239c)) {
                    next.cancel(true);
                }
            }
            this.f1165f.clear();
        }
        synchronized (this.f1166g) {
            this.f1167h = 0;
            this.f1168i.clear();
        }
        synchronized (this.f1171l) {
            this.f1172m.m42775a();
            this.f1173n.clear();
            this.f1175p = null;
            this.f1176q = null;
            this.f1174o = -1;
            this.f1177r = false;
        }
        this.f1170k.m233a();
        this.f1162c.m208e();
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: k */
    public MediaItem mo42788k() {
        synchronized (this.f1166g) {
            if (this.f1169j) {
                return null;
            }
            return this.f1162c.m210c();
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: l */
    public long mo42787l() {
        synchronized (this.f1166g) {
            if (this.f1169j) {
                return Long.MIN_VALUE;
            }
            try {
                m mVar = this.f1162c;
                long longValue = ((Long) mVar.m(new CallableC27472g(mVar))).longValue();
                if (longValue < 0) {
                    return Long.MIN_VALUE;
                }
                return longValue;
            } catch (IllegalStateException e) {
                return Long.MIN_VALUE;
            }
        }
    }

    /* renamed from: l1 */
    public void m42786l1(MediaItem mediaItem, int i) {
        Integer put;
        synchronized (this.f1166g) {
            put = this.f1168i.put(mediaItem, Integer.valueOf(i));
        }
        if (put == null || put.intValue() != i) {
            m42792W0(new C0259i(mediaItem, i));
        }
    }

    /* renamed from: m1 */
    public List<f<SessionPlayer.C0233b>> m42785m1(MediaItem mediaItem, MediaItem mediaItem2) {
        boolean z;
        Objects.requireNonNull(mediaItem, "curItem shouldn't be null");
        synchronized (this.f1171l) {
            z = this.f1177r;
        }
        ArrayList arrayList = new ArrayList();
        if (z) {
            arrayList.add(m42783n1(mediaItem));
            arrayList.add(m42808E1());
        } else {
            f<? extends SessionPlayer.C0233b> fVar = new f<>();
            synchronized (this.f1164e) {
                m mVar = this.f1162c;
                c0 c0Var = new c0(mVar, 19, false, mediaItem);
                mVar.f(c0Var);
                m42807F0(19, fVar, c0Var);
            }
            synchronized (this.f1171l) {
                this.f1177r = true;
            }
            arrayList.add(fVar);
        }
        if (mediaItem2 != null) {
            arrayList.add(m42783n1(mediaItem2));
        }
        return arrayList;
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: n0 */
    public ListenableFuture<SessionPlayer.C0233b> mo42784n0(long j) {
        synchronized (this.f1166g) {
            if (this.f1169j) {
                return m42802J0();
            }
            m mVar = new m(this, this.f1163d, true, j);
            m42805G0(mVar);
            return mVar;
        }
    }

    /* renamed from: n1 */
    public f<SessionPlayer.C0233b> m42783n1(MediaItem mediaItem) {
        f<SessionPlayer.C0233b> fVar = new f<>();
        synchronized (this.f1164e) {
            m mVar = this.f1162c;
            k kVar = new k(mVar, 22, false, mediaItem);
            mVar.f(kVar);
            m42807F0(22, fVar, kVar);
        }
        return fVar;
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: p0 */
    public ListenableFuture<SessionPlayer.C0233b> mo42782p0(SessionPlayer.TrackInfo trackInfo) {
        Objects.requireNonNull(trackInfo, "trackInfo shouldn't be null");
        synchronized (this.f1166g) {
            if (this.f1169j) {
                return m42802J0();
            }
            e eVar = new e(this, this.f1163d, trackInfo);
            m42805G0(eVar);
            return eVar;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: q */
    public long mo42781q() {
        synchronized (this.f1166g) {
            if (this.f1169j) {
                return Long.MIN_VALUE;
            }
            try {
                m mVar = this.f1162c;
                long longValue = ((Long) mVar.m(new CallableC27473h(mVar))).longValue();
                if (longValue < 0) {
                    return Long.MIN_VALUE;
                }
                return longValue;
            } catch (IllegalStateException e) {
                return Long.MIN_VALUE;
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: s */
    public int mo42780s() {
        synchronized (this.f1166g) {
            if (this.f1169j) {
                return -1;
            }
            synchronized (this.f1171l) {
                int i = this.f1174o;
                if (i < 0) {
                    return -1;
                }
                int i2 = i + 1;
                if (i2 >= this.f1173n.size()) {
                    return -1;
                }
                return this.f1172m.m42774b(this.f1173n.get(i2));
            }
        }
    }

    /* renamed from: s1 */
    public ListenableFuture<SessionPlayer.C0233b> m42779s1(float f) {
        if (f < 0.0f || f > 1.0f) {
            throw new IllegalArgumentException("volume should be between 0.0 and 1.0");
        }
        synchronized (this.f1166g) {
            if (this.f1169j) {
                return m42802J0();
            }
            d dVar = new d(this, this.f1163d, f);
            m42805G0(dVar);
            return dVar;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: t0 */
    public ListenableFuture<SessionPlayer.C0233b> mo42778t0(float f) {
        synchronized (this.f1166g) {
            if (this.f1169j) {
                return m42802J0();
            }
            n nVar = new n(this, this.f1163d, f);
            m42805G0(nVar);
            return nVar;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    /* renamed from: z0 */
    public ListenableFuture<SessionPlayer.C0233b> mo42777z0(Surface surface) {
        synchronized (this.f1166g) {
            if (this.f1169j) {
                return m42802J0();
            }
            c cVar = new c(this, this.f1163d, surface);
            m42805G0(cVar);
            return cVar;
        }
    }

    /* renamed from: z1 */
    public f<SessionPlayer.C0233b> m42776z1(float f) {
        f<SessionPlayer.C0233b> fVar = new f<>();
        synchronized (this.f1164e) {
            m mVar = this.f1162c;
            r rVar = new r(mVar, 26, false, f);
            mVar.f(rVar);
            m42807F0(26, fVar, rVar);
        }
        return fVar;
    }
}

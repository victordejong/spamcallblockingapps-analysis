package androidx.media2.player;

import android.content.Context;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.Surface;
import androidx.core.p036e.C0833d;
import androidx.media2.common.CallbackMediaItem;
import androidx.media2.common.FileMediaItem;
import androidx.media2.common.MediaItem;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.exoplayer.external.AbstractC1369ae;
import androidx.media2.exoplayer.external.C1379ak;
import androidx.media2.exoplayer.external.C1446c;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.audio.AbstractC1409f;
import androidx.media2.exoplayer.external.audio.AudioProcessor;
import androidx.media2.exoplayer.external.audio.C1404d;
import androidx.media2.exoplayer.external.audio.DefaultAudioSink;
import androidx.media2.exoplayer.external.metadata.AbstractC1672d;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.p063b.C1441d;
import androidx.media2.exoplayer.external.source.AbstractC1842t;
import androidx.media2.exoplayer.external.source.C1771h;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.trackselection.AbstractC1938d;
import androidx.media2.exoplayer.external.trackselection.AbstractC1940e;
import androidx.media2.exoplayer.external.trackselection.C1943f;
import androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector;
import androidx.media2.exoplayer.external.upstream.AbstractC1968f;
import androidx.media2.exoplayer.external.upstream.C1973j;
import androidx.media2.exoplayer.external.upstream.C1980n;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2012m;
import androidx.media2.exoplayer.external.video.AbstractC2048g;
import androidx.media2.player.C2187j;
import androidx.media2.player.C2190l;
import androidx.media2.player.C2195n;
import com.facebook.ads.AdError;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import okhttp3.internal.p578ws.WebSocketProtocol;
/* renamed from: androidx.media2.player.e */
/* loaded from: classes-dex2jar.jar:androidx/media2/player/e.class */
public final class C2172e {

    /* renamed from: a */
    final AbstractC2177c f8547a;

    /* renamed from: b */
    final Looper f8548b;

    /* renamed from: c */
    final Handler f8549c;

    /* renamed from: d */
    final C1973j f8550d = new C1973j();

    /* renamed from: e */
    final Runnable f8551e = new RunnableC2180f();

    /* renamed from: f */
    C1379ak f8552f;

    /* renamed from: g */
    Handler f8553g;

    /* renamed from: h */
    DefaultAudioSink f8554h;

    /* renamed from: i */
    C2195n f8555i;

    /* renamed from: j */
    C2179e f8556j;

    /* renamed from: k */
    boolean f8557k;

    /* renamed from: l */
    int f8558l;

    /* renamed from: m */
    boolean f8559m;

    /* renamed from: n */
    boolean f8560n;

    /* renamed from: o */
    boolean f8561o;

    /* renamed from: p */
    boolean f8562p;

    /* renamed from: q */
    int f8563q;

    /* renamed from: r */
    int f8564r;

    /* renamed from: s */
    C2187j f8565s;

    /* renamed from: t */
    private final Context f8566t;

    /* renamed from: u */
    private int f8567u;

    /* renamed from: v */
    private float f8568v;

    /* renamed from: androidx.media2.player.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/e$a.class */
    public final class C2174a extends AbstractC1369ae.AbstractC1370a implements AbstractC1409f, AbstractC1672d, AbstractC2048g, C2190l.AbstractC2193b {
        C2174a() {
            C2172e.this = r4;
        }

        @Override // androidx.media2.exoplayer.external.AbstractC1369ae.AbstractC1370a, androidx.media2.exoplayer.external.AbstractC1369ae.AbstractC1371b
        /* renamed from: a */
        public final void mo41243a(int i) {
            C2172e c2172e = C2172e.this;
            c2172e.f8547a.mo41222a(c2172e.f8556j.m41203b(), c2172e.m41247d());
            c2172e.f8556j.m41204a(i == 0);
        }

        @Override // androidx.media2.player.C2190l.AbstractC2193b
        /* renamed from: a */
        public final void mo41169a(int i, int i2) {
            boolean z;
            C2172e c2172e = C2172e.this;
            C2195n c2195n = c2172e.f8555i;
            int i3 = 0;
            while (true) {
                z = false;
                if (i3 >= c2195n.f8650h.size()) {
                    break;
                }
                C2195n.C2196a valueAt = c2195n.f8650h.valueAt(i3);
                if (valueAt.f8657a == i && valueAt.f8658b == -1) {
                    int i4 = valueAt.f8661e.f5048a;
                    c2195n.f8650h.put(i4, new C2195n.C2196a(valueAt.f8660d, i, valueAt.f8659c, i2, i4));
                    if (c2195n.f8655m != null && c2195n.f8655m.f8660d == i3) {
                        c2195n.f8645c.m41181a(i, i2);
                    }
                    z = true;
                } else {
                    i3++;
                }
            }
            if (!z) {
                int i5 = c2195n.f8656n;
                int i6 = c2195n.f8643a;
                c2195n.f8643a = i6 + 1;
                C2195n.C2196a c2196a = new C2195n.C2196a(i5, i, null, i2, i6);
                c2195n.f8650h.put(c2196a.f8661e.f5048a, c2196a);
                c2195n.f8651i = true;
            }
            if (c2172e.f8555i.m41167a()) {
                c2172e.f8547a.mo41220a(c2172e.f8555i.m41165b());
            }
        }

        @Override // androidx.media2.exoplayer.external.video.AbstractC2048g
        /* renamed from: a */
        public final void mo41242a(int i, int i2, int i3, float f) {
            C2172e.this.m41250a(i, i2, f);
        }

        @Override // androidx.media2.exoplayer.external.video.AbstractC2048g
        /* renamed from: a */
        public final void mo41241a(int i, long j) {
        }

        @Override // androidx.media2.exoplayer.external.video.AbstractC2048g
        /* renamed from: a */
        public final void mo41240a(Surface surface) {
            C2172e c2172e = C2172e.this;
            c2172e.f8547a.mo41214f(c2172e.f8556j.m41203b());
        }

        @Override // androidx.media2.exoplayer.external.AbstractC1369ae.AbstractC1370a, androidx.media2.exoplayer.external.AbstractC1369ae.AbstractC1371b
        /* renamed from: a */
        public final void mo41239a(ExoPlaybackException exoPlaybackException) {
            C2172e c2172e = C2172e.this;
            c2172e.f8547a.mo41222a(c2172e.f8556j.m41203b(), c2172e.m41247d());
            c2172e.f8547a.mo41217c(c2172e.f8556j.m41203b(), C2171d.m41255a(exoPlaybackException));
        }

        @Override // androidx.media2.exoplayer.external.video.AbstractC2048g
        /* renamed from: a */
        public final void mo41238a(Format format) {
            if (C2012m.m41573b(format.sampleMimeType)) {
                C2172e.this.m41250a(format.width, format.height, format.pixelWidthHeightRatio);
            }
        }

        @Override // androidx.media2.exoplayer.external.video.AbstractC2048g
        /* renamed from: a */
        public final void mo41237a(C1441d c1441d) {
        }

        @Override // androidx.media2.exoplayer.external.metadata.AbstractC1672d
        /* renamed from: a */
        public final void mo41236a(Metadata metadata) {
            C2172e c2172e = C2172e.this;
            int length = metadata.length();
            for (int i = 0; i < length; i++) {
                ByteArrayFrame byteArrayFrame = (ByteArrayFrame) metadata.get(i);
                c2172e.f8547a.mo41221a(c2172e.f8556j.m41203b(), new C2194m(byteArrayFrame.mTimestamp, byteArrayFrame.mData));
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // androidx.media2.exoplayer.external.AbstractC1369ae.AbstractC1370a, androidx.media2.exoplayer.external.AbstractC1369ae.AbstractC1371b
        /* renamed from: a */
        public final void mo41235a(C1943f c1943f) {
            boolean z;
            int i;
            C2172e c2172e = C2172e.this;
            MediaItem m41203b = c2172e.f8556j.m41203b();
            C2195n c2195n = c2172e.f8555i;
            boolean z2 = c2195n.f8644b != m41203b;
            c2195n.f8644b = m41203b;
            c2195n.f8651i = true;
            DefaultTrackSelector defaultTrackSelector = c2195n.f8646d;
            DefaultTrackSelector.C1925b m41873a = c2195n.f8646d.m41873a();
            if (m41873a.f7748d.size() != 0) {
                m41873a.f7748d.clear();
            }
            defaultTrackSelector.m41860a(m41873a);
            c2195n.f8652j = null;
            c2195n.f8653k = null;
            c2195n.f8654l = null;
            c2195n.f8655m = null;
            c2195n.f8656n = -1;
            c2195n.f8645c.m41172z();
            if (z2) {
                c2195n.f8647e.clear();
                c2195n.f8648f.clear();
                c2195n.f8649g.clear();
                c2195n.f8650h.clear();
            }
            AbstractC1938d.C1939a c1939a = c2195n.f8646d.f7808a;
            if (c1939a != null) {
                AbstractC1940e abstractC1940e = c1943f.f7821b[1];
                TrackGroup mo41827e = abstractC1940e == null ? null : abstractC1940e.mo41827e();
                AbstractC1940e abstractC1940e2 = c1943f.f7821b[0];
                TrackGroup mo41827e2 = abstractC1940e2 == null ? null : abstractC1940e2.mo41827e();
                AbstractC1940e abstractC1940e3 = c1943f.f7821b[3];
                TrackGroup mo41827e3 = abstractC1940e3 == null ? null : abstractC1940e3.mo41827e();
                AbstractC1940e abstractC1940e4 = c1943f.f7821b[2];
                TrackGroup mo41827e4 = abstractC1940e4 == null ? null : abstractC1940e4.mo41827e();
                TrackGroupArray trackGroupArray = c1939a.f7812d[1];
                for (int size = c2195n.f8647e.size(); size < trackGroupArray.length; size++) {
                    TrackGroup trackGroup = trackGroupArray.get(size);
                    MediaFormat m41254a = C2171d.m41254a(trackGroup.getFormat(0));
                    int i2 = c2195n.f8643a;
                    c2195n.f8643a = i2 + 1;
                    C2195n.C2197b c2197b = new C2195n.C2197b(size, 2, m41254a, i2);
                    c2195n.f8647e.put(c2197b.f8661e.f5048a, c2197b);
                    if (trackGroup.equals(mo41827e)) {
                        c2195n.f8652j = c2197b;
                    }
                }
                TrackGroupArray trackGroupArray2 = c1939a.f7812d[0];
                for (int size2 = c2195n.f8648f.size(); size2 < trackGroupArray2.length; size2++) {
                    TrackGroup trackGroup2 = trackGroupArray2.get(size2);
                    MediaFormat m41254a2 = C2171d.m41254a(trackGroup2.getFormat(0));
                    int i3 = c2195n.f8643a;
                    c2195n.f8643a = i3 + 1;
                    C2195n.C2197b c2197b2 = new C2195n.C2197b(size2, 1, m41254a2, i3);
                    c2195n.f8648f.put(c2197b2.f8661e.f5048a, c2197b2);
                    if (trackGroup2.equals(mo41827e2)) {
                        c2195n.f8653k = c2197b2;
                    }
                }
                TrackGroupArray trackGroupArray3 = c1939a.f7812d[3];
                for (int size3 = c2195n.f8649g.size(); size3 < trackGroupArray3.length; size3++) {
                    TrackGroup trackGroup3 = trackGroupArray3.get(size3);
                    MediaFormat m41254a3 = C2171d.m41254a(trackGroup3.getFormat(0));
                    int i4 = c2195n.f8643a;
                    c2195n.f8643a = i4 + 1;
                    C2195n.C2197b c2197b3 = new C2195n.C2197b(size3, 5, m41254a3, i4);
                    c2195n.f8649g.put(c2197b3.f8661e.f5048a, c2197b3);
                    if (trackGroup3.equals(mo41827e3)) {
                        c2195n.f8654l = c2197b3;
                    }
                }
                TrackGroupArray trackGroupArray4 = c1939a.f7812d[2];
                for (int size4 = c2195n.f8650h.size(); size4 < trackGroupArray4.length; size4++) {
                    TrackGroup trackGroup4 = trackGroupArray4.get(size4);
                    Format format = (Format) C0833d.m44410a(trackGroup4.getFormat(0));
                    String str = format.sampleMimeType;
                    str.hashCode();
                    switch (str.hashCode()) {
                        case -1004728940:
                            if (str.equals("text/vtt")) {
                                z = false;
                                break;
                            }
                            z = true;
                            break;
                        case 1566015601:
                            if (str.equals("application/cea-608")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        case 1566016562:
                            if (str.equals("application/cea-708")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        default:
                            z = true;
                            break;
                    }
                    switch (z) {
                        case false:
                            i = 2;
                            break;
                        case true:
                            i = 0;
                            break;
                        case true:
                            i = 1;
                            break;
                        default:
                            throw new IllegalArgumentException("Unexpected text MIME type ".concat(String.valueOf(str)));
                    }
                    int i5 = c2195n.f8643a;
                    c2195n.f8643a = i5 + 1;
                    C2195n.C2196a c2196a = new C2195n.C2196a(size4, i, format, -1, i5);
                    c2195n.f8650h.put(c2196a.f8661e.f5048a, c2196a);
                    if (trackGroup4.equals(mo41827e4)) {
                        c2195n.f8656n = size4;
                    }
                }
            }
            if (c2172e.f8555i.m41167a()) {
                c2172e.f8547a.mo41220a(c2172e.m41248c());
            }
        }

        @Override // androidx.media2.exoplayer.external.video.AbstractC2048g
        /* renamed from: a */
        public final void mo41234a(String str, long j, long j2) {
        }

        @Override // androidx.media2.exoplayer.external.AbstractC1369ae.AbstractC1370a, androidx.media2.exoplayer.external.AbstractC1369ae.AbstractC1371b
        /* renamed from: a */
        public final void mo41233a(boolean z, int i) {
            C2172e c2172e = C2172e.this;
            c2172e.f8547a.mo41222a(c2172e.f8556j.m41203b(), c2172e.m41247d());
            if (i != 3 || !z) {
                C2179e c2179e = c2172e.f8556j;
                if (c2179e.f8581e != -1) {
                    c2179e.f8582f += ((System.nanoTime() - c2179e.f8581e) + 500) / 1000;
                    c2179e.f8581e = -1L;
                }
            } else {
                c2172e.f8556j.m41201d();
            }
            if (i == 3 || i == 2) {
                c2172e.f8549c.post(c2172e.f8551e);
            } else {
                c2172e.f8549c.removeCallbacks(c2172e.f8551e);
            }
            if (i != 1) {
                if (i == 2) {
                    if (!c2172e.f8559m || c2172e.f8561o) {
                        return;
                    }
                    c2172e.f8561o = true;
                    if (c2172e.f8556j.m41202c()) {
                        c2172e.f8547a.mo41219b(c2172e.f8556j.m41203b(), (int) (c2172e.f8550d.mo41726a() / 1000));
                    }
                    c2172e.f8547a.mo41216d(c2172e.f8556j.m41203b());
                } else if (i == 3) {
                    c2172e.m41244g();
                } else if (i != 4) {
                    throw new IllegalStateException();
                } else {
                    if (c2172e.f8562p) {
                        c2172e.f8562p = false;
                        c2172e.f8547a.mo41209r();
                    }
                    if (!c2172e.f8552f.m43108n()) {
                        return;
                    }
                    C2179e c2179e2 = c2172e.f8556j;
                    MediaItem m41203b = c2179e2.m41203b();
                    c2179e2.f8577a.mo41212h(m41203b);
                    c2179e2.f8577a.mo41210j(m41203b);
                    c2172e.f8552f.m43113a(false);
                }
            }
        }

        @Override // androidx.media2.player.C2190l.AbstractC2193b
        /* renamed from: a */
        public final void mo41168a(byte[] bArr, long j) {
            C2172e c2172e = C2172e.this;
            SessionPlayer.TrackInfo m41166a = c2172e.f8555i.m41166a(4);
            c2172e.f8547a.mo41223a(c2172e.f8556j.m41203b(), m41166a, new SubtitleData(j, 0L, bArr));
        }

        @Override // androidx.media2.exoplayer.external.AbstractC1369ae.AbstractC1370a, androidx.media2.exoplayer.external.AbstractC1369ae.AbstractC1371b
        /* renamed from: b */
        public final void mo41232b() {
            C2172e c2172e = C2172e.this;
            if (c2172e.f8556j.m41203b() == null) {
                c2172e.f8547a.mo41209r();
                return;
            }
            c2172e.f8562p = true;
            if (c2172e.f8552f.m43110l() != 3) {
                return;
            }
            c2172e.m41244g();
        }

        @Override // androidx.media2.exoplayer.external.audio.AbstractC1409f, androidx.media2.exoplayer.external.audio.AbstractC1410g
        /* renamed from: b */
        public final void mo41231b(int i) {
            C2172e.this.f8558l = i;
        }

        @Override // androidx.media2.exoplayer.external.video.AbstractC2048g
        /* renamed from: b */
        public final void mo41230b(C1441d c1441d) {
            C2172e.this.m41250a(0, 0, 1.0f);
        }

        @Override // androidx.media2.exoplayer.external.audio.AbstractC1409f
        /* renamed from: c */
        public final void mo41229c() {
        }

        @Override // androidx.media2.exoplayer.external.audio.AbstractC1409f
        /* renamed from: d */
        public final void mo41228d() {
        }
    }

    /* renamed from: androidx.media2.player.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/e$b.class */
    public static final class C2175b {

        /* renamed from: a */
        private final Map<FileDescriptor, C2176a> f8572a = new HashMap();

        /* renamed from: androidx.media2.player.e$b$a */
        /* loaded from: classes-dex2jar.jar:androidx/media2/player/e$b$a.class */
        public static final class C2176a {

            /* renamed from: a */
            public final Object f8573a = new Object();

            /* renamed from: b */
            public int f8574b;

            C2176a() {
            }
        }

        C2175b() {
        }

        /* renamed from: a */
        public final Object m41227a(FileDescriptor fileDescriptor) {
            if (!this.f8572a.containsKey(fileDescriptor)) {
                this.f8572a.put(fileDescriptor, new C2176a());
            }
            C2176a c2176a = (C2176a) C0833d.m44410a(this.f8572a.get(fileDescriptor));
            c2176a.f8574b++;
            return c2176a.f8573a;
        }

        /* renamed from: b */
        public final void m41226b(FileDescriptor fileDescriptor) {
            C2176a c2176a = (C2176a) C0833d.m44410a(this.f8572a.get(fileDescriptor));
            int i = c2176a.f8574b - 1;
            c2176a.f8574b = i;
            if (i == 0) {
                this.f8572a.remove(fileDescriptor);
            }
        }
    }

    /* renamed from: androidx.media2.player.e$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/e$c.class */
    public interface AbstractC2177c {
        /* renamed from: a */
        void mo41225a(MediaItem mediaItem, int i);

        /* renamed from: a */
        void mo41224a(MediaItem mediaItem, int i, int i2);

        /* renamed from: a */
        void mo41223a(MediaItem mediaItem, SessionPlayer.TrackInfo trackInfo, SubtitleData subtitleData);

        /* renamed from: a */
        void mo41222a(MediaItem mediaItem, C2186i c2186i);

        /* renamed from: a */
        void mo41221a(MediaItem mediaItem, C2194m c2194m);

        /* renamed from: a */
        void mo41220a(List<SessionPlayer.TrackInfo> list);

        /* renamed from: b */
        void mo41219b(MediaItem mediaItem, int i);

        /* renamed from: c */
        void mo41218c(MediaItem mediaItem);

        /* renamed from: c */
        void mo41217c(MediaItem mediaItem, int i);

        /* renamed from: d */
        void mo41216d(MediaItem mediaItem);

        /* renamed from: e */
        void mo41215e(MediaItem mediaItem);

        /* renamed from: f */
        void mo41214f(MediaItem mediaItem);

        /* renamed from: g */
        void mo41213g(MediaItem mediaItem);

        /* renamed from: h */
        void mo41212h(MediaItem mediaItem);

        /* renamed from: i */
        void mo41211i(MediaItem mediaItem);

        /* renamed from: j */
        void mo41210j(MediaItem mediaItem);

        /* renamed from: r */
        void mo41209r();
    }

    /* renamed from: androidx.media2.player.e$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/e$d.class */
    public static final class C2178d {

        /* renamed from: a */
        final MediaItem f8575a;

        /* renamed from: b */
        final boolean f8576b;

        C2178d(MediaItem mediaItem, boolean z) {
            this.f8575a = mediaItem;
            this.f8576b = z;
        }
    }

    /* renamed from: androidx.media2.player.e$e */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/e$e.class */
    public static final class C2179e {

        /* renamed from: a */
        final AbstractC2177c f8577a;

        /* renamed from: b */
        final C1379ak f8578b;

        /* renamed from: f */
        long f8582f;

        /* renamed from: g */
        private final Context f8583g;

        /* renamed from: h */
        private final AbstractC1968f.AbstractC1969a f8584h;

        /* renamed from: c */
        final C1771h f8579c = new C1771h(new AbstractC1842t[0]);

        /* renamed from: d */
        final ArrayDeque<C2178d> f8580d = new ArrayDeque<>();

        /* renamed from: i */
        private final C2175b f8585i = new C2175b();

        /* renamed from: e */
        long f8581e = -1;

        C2179e(Context context, C1379ak c1379ak, AbstractC2177c abstractC2177c) {
            this.f8583g = context;
            this.f8578b = c1379ak;
            this.f8577a = abstractC2177c;
            this.f8584h = new C1980n(context, C1996ac.m41667a(context, "MediaPlayer2"));
        }

        /* JADX WARN: Code restructure failed: missing block: B:8:0x0065, code lost:
            if (r0 != 576460752303423487L) goto L9;
         */
        /* JADX WARN: Type inference failed for: r0v10, types: [long] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void m41207a(androidx.media2.common.MediaItem r12, java.util.Collection<androidx.media2.player.C2172e.C2178d> r13, java.util.Collection<androidx.media2.exoplayer.external.source.AbstractC1842t> r14) {
            /*
                r11 = this;
                r0 = r11
                androidx.media2.exoplayer.external.upstream.f$a r0 = r0.f8584h
                r15 = r0
                r0 = r12
                boolean r0 = r0 instanceof androidx.media2.common.FileMediaItem
                if (r0 == 0) goto L3c
                r0 = r12
                androidx.media2.common.FileMediaItem r0 = (androidx.media2.common.FileMediaItem) r0
                r15 = r0
                r0 = r15
                r0.m43206a()
                r0 = r15
                android.os.ParcelFileDescriptor r0 = r0.f5017a
                java.io.FileDescriptor r0 = r0.getFileDescriptor()
                r16 = r0
                r0 = r16
                r1 = r15
                long r1 = r1.f5018b
                r2 = r15
                long r2 = r2.f5019c
                r3 = r11
                androidx.media2.player.e$b r3 = r3.f8585i
                r4 = r16
                java.lang.Object r3 = r3.m41227a(r4)
                androidx.media2.exoplayer.external.upstream.f$a r0 = androidx.media2.player.C2181f.m41198a(r0, r1, r2, r3)
                r15 = r0
            L3c:
                r0 = r11
                android.content.Context r0 = r0.f8583g
                r1 = r15
                r2 = r12
                androidx.media2.exoplayer.external.source.t r0 = androidx.media2.player.C2171d.m41257a(r0, r1, r2)
                r16 = r0
                r0 = r12
                long r0 = r0.f5029e
                r17 = r0
                r0 = r12
                long r0 = r0.f5030f
                r19 = r0
                r0 = r17
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L68
                r0 = r16
                r15 = r0
                r0 = r19
                r1 = 576460752303423487(0x7ffffffffffffff, double:3.7857669957336787E-270)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L92
            L68:
                r0 = r19
                r21 = r0
                r0 = r19
                r1 = 576460752303423487(0x7ffffffffffffff, double:3.7857669957336787E-270)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L7a
                r0 = -9223372036854775808
                r21 = r0
            L7a:
                androidx.media2.exoplayer.external.source.ClippingMediaSource r0 = new androidx.media2.exoplayer.external.source.ClippingMediaSource
                r1 = r0
                r2 = r16
                r3 = r17
                long r3 = androidx.media2.exoplayer.external.C1446c.m42893b(r3)
                r4 = r21
                long r4 = androidx.media2.exoplayer.external.C1446c.m42893b(r4)
                r5 = 0
                r6 = 0
                r7 = 1
                r1.<init>(r2, r3, r4, r5, r6, r7)
                r15 = r0
            L92:
                r0 = r12
                boolean r0 = r0 instanceof androidx.media2.common.UriMediaItem
                if (r0 == 0) goto Lac
                r0 = r12
                androidx.media2.common.UriMediaItem r0 = (androidx.media2.common.UriMediaItem) r0
                android.net.Uri r0 = r0.f5060a
                boolean r0 = androidx.media2.exoplayer.external.util.C1996ac.m41666a(r0)
                if (r0 != 0) goto Lac
                r0 = 1
                r23 = r0
                goto Laf
            Lac:
                r0 = 0
                r23 = r0
            Laf:
                r0 = r14
                r1 = r15
                boolean r0 = r0.add(r1)
                r0 = r13
                androidx.media2.player.e$d r1 = new androidx.media2.player.e$d
                r2 = r1
                r3 = r12
                r4 = r23
                r2.<init>(r3, r4)
                boolean r0 = r0.add(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.player.C2172e.C2179e.m41207a(androidx.media2.common.MediaItem, java.util.Collection, java.util.Collection):void");
        }

        /* renamed from: a */
        public final void m41208a() {
            while (!this.f8580d.isEmpty()) {
                m41206a(this.f8580d.remove());
            }
        }

        /* renamed from: a */
        public final void m41206a(C2178d c2178d) {
            MediaItem mediaItem = c2178d.f8575a;
            try {
                if (mediaItem instanceof FileMediaItem) {
                    this.f8585i.m41226b(((FileMediaItem) mediaItem).f5017a.getFileDescriptor());
                    ((FileMediaItem) mediaItem).m43205b();
                } else if (!(mediaItem instanceof CallbackMediaItem)) {
                } else {
                    ((CallbackMediaItem) mediaItem).f5015a.close();
                }
            } catch (IOException e) {
                Log.w("ExoPlayerWrapper", "Error releasing media item ".concat(String.valueOf(mediaItem)), e);
            }
        }

        /* renamed from: a */
        public final void m41205a(List<MediaItem> list) {
            int m42257i = this.f8579c.m42257i();
            ArrayList<C2178d> arrayList = new ArrayList(m42257i > 1 ? m42257i - 1 : 0);
            if (m42257i > 1) {
                this.f8579c.m42270a(1, m42257i);
                while (this.f8580d.size() > 1) {
                    arrayList.add(this.f8580d.removeLast());
                }
            }
            ArrayList arrayList2 = new ArrayList(list.size());
            for (MediaItem mediaItem : list) {
                if (mediaItem == null) {
                    this.f8577a.mo41217c(null, 1);
                    return;
                }
                m41207a(mediaItem, this.f8580d, arrayList2);
            }
            this.f8579c.m42263a((Collection<AbstractC1842t>) arrayList2);
            for (C2178d c2178d : arrayList) {
                m41206a(c2178d);
            }
        }

        /* renamed from: a */
        public final void m41204a(boolean z) {
            MediaItem m41203b = m41203b();
            if (z && this.f8578b.m43107o() != 0) {
                this.f8577a.mo41211i(m41203b);
            }
            int mo42489c = this.f8578b.mo42489c();
            if (mo42489c > 0) {
                if (z) {
                    this.f8577a.mo41212h(m41203b());
                }
                for (int i = 0; i < mo42489c; i++) {
                    m41206a(this.f8580d.removeFirst());
                }
                if (z) {
                    this.f8577a.mo41213g(m41203b());
                }
                this.f8579c.m42270a(0, mo42489c);
                this.f8582f = 0L;
                this.f8581e = -1L;
                if (this.f8578b.m43110l() != 3) {
                    return;
                }
                m41201d();
            }
        }

        /* renamed from: b */
        public final MediaItem m41203b() {
            if (this.f8580d.isEmpty()) {
                return null;
            }
            return this.f8580d.peekFirst().f8575a;
        }

        /* renamed from: c */
        public final boolean m41202c() {
            return !this.f8580d.isEmpty() && this.f8580d.peekFirst().f8576b;
        }

        /* renamed from: d */
        public final void m41201d() {
            if (this.f8581e != -1) {
                return;
            }
            this.f8581e = System.nanoTime();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.player.e$f */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/e$f.class */
    public final class RunnableC2180f implements Runnable {
        RunnableC2180f() {
            C2172e.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C2172e c2172e = C2172e.this;
            if (c2172e.f8556j.m41202c()) {
                AbstractC2177c abstractC2177c = c2172e.f8547a;
                MediaItem m41203b = c2172e.f8556j.m41203b();
                C1379ak c1379ak = c2172e.f8552f;
                long f = c1379ak.mo42486f();
                long d = c1379ak.mo42488d();
                int i = 100;
                if (f == -9223372036854775807L || d == -9223372036854775807L) {
                    i = 0;
                } else if (d != 0) {
                    i = C1996ac.m41674a((int) ((f * 100) / d), 0, 100);
                }
                abstractC2177c.mo41225a(m41203b, i);
            }
            c2172e.f8549c.removeCallbacks(c2172e.f8551e);
            c2172e.f8549c.postDelayed(c2172e.f8551e, 1000L);
        }
    }

    public C2172e(Context context, AbstractC2177c abstractC2177c, Looper looper) {
        this.f8566t = context.getApplicationContext();
        this.f8547a = abstractC2177c;
        this.f8548b = looper;
        this.f8549c = new Handler(looper);
    }

    /* renamed from: a */
    public final long m41251a() {
        C0833d.m44406b(m41249b() != 1001);
        return Math.max(0L, this.f8552f.mo42487e());
    }

    /* renamed from: a */
    final void m41250a(int i, int i2, float f) {
        int i3 = i;
        if (f != 1.0f) {
            i3 = (int) (f * i);
        }
        if (this.f8563q == i3 && this.f8564r == i2) {
            return;
        }
        this.f8563q = i3;
        this.f8564r = i2;
        this.f8547a.mo41224a(this.f8556j.m41203b(), i3, i2);
    }

    /* renamed from: b */
    public final int m41249b() {
        if (m41245f()) {
            return WebSocketProtocol.CLOSE_NO_STATUS_CODE;
        }
        if (this.f8560n) {
            return AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE;
        }
        int m43110l = this.f8552f.m43110l();
        boolean m43108n = this.f8552f.m43108n();
        if (m43110l == 1) {
            return 1001;
        }
        if (m43110l == 2) {
            return 1003;
        }
        if (m43110l == 3) {
            return m43108n ? 1004 : 1003;
        } else if (m43110l != 4) {
            throw new IllegalStateException();
        } else {
            return 1003;
        }
    }

    /* renamed from: c */
    public final List<SessionPlayer.TrackInfo> m41248c() {
        return this.f8555i.m41165b();
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* renamed from: d */
    public final C2186i m41247d() {
        return new C2186i(this.f8552f.m43110l() == 1 ? (char) 0 : C1446c.m42893b(m41251a()), System.nanoTime(), (this.f8552f.m43110l() != 3 || !this.f8552f.m43108n()) ? 0.0f : this.f8565s.m41188c().floatValue());
    }

    /* renamed from: e */
    public final void m41246e() {
        C1379ak c1379ak = this.f8552f;
        if (c1379ak != null) {
            c1379ak.m43113a(false);
            if (m41249b() != 1001) {
                this.f8547a.mo41222a(this.f8556j.m41203b(), m41247d());
            }
            this.f8552f.m43106p();
            this.f8556j.m41208a();
        }
        C2174a c2174a = new C2174a();
        this.f8554h = new DefaultAudioSink(C1404d.m43017a(this.f8566t), new AudioProcessor[0]);
        C2190l c2190l = new C2190l(c2174a);
        C2189k c2189k = new C2189k(this.f8566t, this.f8554h, c2190l);
        this.f8555i = new C2195n(c2190l);
        this.f8552f = new C1379ak.C1381a(this.f8566t, c2189k).m43099a(this.f8555i.f8646d).m43098a(this.f8550d).m43100a(this.f8548b).m43101a();
        this.f8553g = new Handler(this.f8552f.m43111b());
        this.f8556j = new C2179e(this.f8566t, this.f8552f, this.f8547a);
        this.f8552f.m43120a((AbstractC1369ae.AbstractC1371b) c2174a);
        this.f8552f.m43114a((AbstractC2048g) c2174a);
        this.f8552f.m43115a((AbstractC1672d) c2174a);
        this.f8563q = 0;
        this.f8564r = 0;
        this.f8559m = false;
        this.f8560n = false;
        this.f8561o = false;
        this.f8562p = false;
        this.f8557k = false;
        this.f8558l = 0;
        this.f8567u = 0;
        this.f8568v = BitmapDescriptorFactory.HUE_RED;
        this.f8565s = new C2187j.C2188a().m41186a(1.0f).m41185b().m41187a().m41184c();
    }

    /* renamed from: f */
    public final boolean m41245f() {
        return this.f8552f.m43109m() != null;
    }

    /* renamed from: g */
    final void m41244g() {
        MediaItem m41203b = this.f8556j.m41203b();
        boolean z = this.f8559m;
        boolean z2 = this.f8562p;
        if (!z) {
            this.f8559m = true;
            this.f8560n = true;
            this.f8556j.m41204a(false);
            this.f8547a.mo41218c(m41203b);
        } else if (z2) {
            this.f8562p = false;
            this.f8547a.mo41209r();
        }
        if (this.f8561o) {
            this.f8561o = false;
            if (this.f8556j.m41202c()) {
                this.f8547a.mo41219b(this.f8556j.m41203b(), (int) (this.f8550d.mo41726a() / 1000));
            }
            this.f8547a.mo41215e(this.f8556j.m41203b());
        }
    }
}

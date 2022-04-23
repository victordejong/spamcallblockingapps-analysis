package androidx.media2.player;

import android.content.Context;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.Surface;
import androidx.media2.common.CallbackMediaItem;
import androidx.media2.common.FileMediaItem;
import androidx.media2.common.MediaItem;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ae;
import androidx.media2.exoplayer.external.ak;
import androidx.media2.exoplayer.external.audio.AudioProcessor;
import androidx.media2.exoplayer.external.audio.DefaultAudioSink;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.source.h;
import androidx.media2.exoplayer.external.source.t;
import androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector;
import androidx.media2.exoplayer.external.trackselection.d;
import androidx.media2.exoplayer.external.upstream.f;
import androidx.media2.exoplayer.external.upstream.j;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.m;
import androidx.media2.exoplayer.external.video.g;
import androidx.media2.player.j;
import androidx.media2.player.l;
import androidx.media2.player.n;
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
import okhttp3.internal.ws.WebSocketProtocol;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/media2/player/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    final c f4424a;

    /* renamed from: b  reason: collision with root package name */
    final Looper f4425b;

    /* renamed from: c  reason: collision with root package name */
    final Handler f4426c;

    /* renamed from: d  reason: collision with root package name */
    final j f4427d = new j();
    final Runnable e = new f();
    ak f;
    Handler g;
    DefaultAudioSink h;
    n i;
    C0096e j;
    boolean k;
    int l;
    boolean m;
    boolean n;
    boolean o;
    boolean p;
    int q;
    int r;
    j s;
    private final Context t;
    private int u;
    private float v;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/e$a.class */
    public final class a extends ae.a implements androidx.media2.exoplayer.external.audio.f, androidx.media2.exoplayer.external.metadata.d, g, l.b {
        a() {
        }

        @Override // androidx.media2.exoplayer.external.ae.a, androidx.media2.exoplayer.external.ae.b
        public final void a(int i) {
            e eVar = e.this;
            eVar.f4424a.a(eVar.j.b(), eVar.d());
            eVar.j.a(i == 0);
        }

        @Override // androidx.media2.player.l.b
        public final void a(int i, int i2) {
            e eVar = e.this;
            n nVar = eVar.i;
            boolean z = false;
            int i3 = 0;
            while (true) {
                if (i3 >= nVar.h.size()) {
                    break;
                }
                n.a valueAt = nVar.h.valueAt(i3);
                if (valueAt.f4484a == i && valueAt.f4485b == -1) {
                    int i4 = valueAt.e.f2754a;
                    nVar.h.put(i4, new n.a(valueAt.f4487d, i, valueAt.f4486c, i2, i4));
                    if (nVar.m != null && nVar.m.f4487d == i3) {
                        nVar.f4482c.a(i, i2);
                    }
                    z = true;
                } else {
                    i3++;
                }
            }
            if (!z) {
                int i5 = nVar.n;
                int i6 = nVar.f4480a;
                nVar.f4480a = i6 + 1;
                n.a aVar = new n.a(i5, i, null, i2, i6);
                nVar.h.put(aVar.e.f2754a, aVar);
                nVar.i = true;
            }
            if (eVar.i.a()) {
                eVar.f4424a.a(eVar.i.b());
            }
        }

        @Override // androidx.media2.exoplayer.external.video.g
        public final void a(int i, int i2, int i3, float f) {
            e.this.a(i, i2, f);
        }

        @Override // androidx.media2.exoplayer.external.video.g
        public final void a(int i, long j) {
        }

        @Override // androidx.media2.exoplayer.external.video.g
        public final void a(Surface surface) {
            e eVar = e.this;
            eVar.f4424a.f(eVar.j.b());
        }

        @Override // androidx.media2.exoplayer.external.ae.a, androidx.media2.exoplayer.external.ae.b
        public final void a(ExoPlaybackException exoPlaybackException) {
            e eVar = e.this;
            eVar.f4424a.a(eVar.j.b(), eVar.d());
            eVar.f4424a.c(eVar.j.b(), androidx.media2.player.d.a(exoPlaybackException));
        }

        @Override // androidx.media2.exoplayer.external.video.g
        public final void a(Format format) {
            if (m.b(format.sampleMimeType)) {
                e.this.a(format.width, format.height, format.pixelWidthHeightRatio);
            }
        }

        @Override // androidx.media2.exoplayer.external.video.g
        public final void a(androidx.media2.exoplayer.external.b.d dVar) {
        }

        @Override // androidx.media2.exoplayer.external.metadata.d
        public final void a(Metadata metadata) {
            e eVar = e.this;
            int length = metadata.length();
            for (int i = 0; i < length; i++) {
                ByteArrayFrame byteArrayFrame = (ByteArrayFrame) metadata.get(i);
                eVar.f4424a.a(eVar.j.b(), new m(byteArrayFrame.mTimestamp, byteArrayFrame.mData));
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // androidx.media2.exoplayer.external.ae.a, androidx.media2.exoplayer.external.ae.b
        public final void a(androidx.media2.exoplayer.external.trackselection.f fVar) {
            char c2;
            int i;
            e eVar = e.this;
            MediaItem b2 = eVar.j.b();
            n nVar = eVar.i;
            boolean z = nVar.f4481b != b2;
            nVar.f4481b = b2;
            nVar.i = true;
            DefaultTrackSelector defaultTrackSelector = nVar.f4483d;
            DefaultTrackSelector.b a2 = nVar.f4483d.a();
            if (a2.f3955d.size() != 0) {
                a2.f3955d.clear();
            }
            defaultTrackSelector.a(a2);
            TrackGroup trackGroup = null;
            nVar.j = null;
            nVar.k = null;
            nVar.l = null;
            nVar.m = null;
            nVar.n = -1;
            nVar.f4482c.z();
            if (z) {
                nVar.e.clear();
                nVar.f.clear();
                nVar.g.clear();
                nVar.h.clear();
            }
            d.a aVar = nVar.f4483d.f3974a;
            if (aVar != null) {
                androidx.media2.exoplayer.external.trackselection.e eVar2 = fVar.f3984b[1];
                TrackGroup e = eVar2 == null ? null : eVar2.e();
                androidx.media2.exoplayer.external.trackselection.e eVar3 = fVar.f3984b[0];
                TrackGroup e2 = eVar3 == null ? null : eVar3.e();
                androidx.media2.exoplayer.external.trackselection.e eVar4 = fVar.f3984b[3];
                TrackGroup e3 = eVar4 == null ? null : eVar4.e();
                androidx.media2.exoplayer.external.trackselection.e eVar5 = fVar.f3984b[2];
                if (eVar5 != null) {
                    trackGroup = eVar5.e();
                }
                TrackGroupArray trackGroupArray = aVar.f3978d[1];
                for (int size = nVar.e.size(); size < trackGroupArray.length; size++) {
                    TrackGroup trackGroup2 = trackGroupArray.get(size);
                    MediaFormat a3 = androidx.media2.player.d.a(trackGroup2.getFormat(0));
                    int i2 = nVar.f4480a;
                    nVar.f4480a = i2 + 1;
                    n.b bVar = new n.b(size, 2, a3, i2);
                    nVar.e.put(bVar.e.f2754a, bVar);
                    if (trackGroup2.equals(e)) {
                        nVar.j = bVar;
                    }
                }
                TrackGroupArray trackGroupArray2 = aVar.f3978d[0];
                for (int size2 = nVar.f.size(); size2 < trackGroupArray2.length; size2++) {
                    TrackGroup trackGroup3 = trackGroupArray2.get(size2);
                    MediaFormat a4 = androidx.media2.player.d.a(trackGroup3.getFormat(0));
                    int i3 = nVar.f4480a;
                    nVar.f4480a = i3 + 1;
                    n.b bVar2 = new n.b(size2, 1, a4, i3);
                    nVar.f.put(bVar2.e.f2754a, bVar2);
                    if (trackGroup3.equals(e2)) {
                        nVar.k = bVar2;
                    }
                }
                TrackGroupArray trackGroupArray3 = aVar.f3978d[3];
                for (int size3 = nVar.g.size(); size3 < trackGroupArray3.length; size3++) {
                    TrackGroup trackGroup4 = trackGroupArray3.get(size3);
                    MediaFormat a5 = androidx.media2.player.d.a(trackGroup4.getFormat(0));
                    int i4 = nVar.f4480a;
                    nVar.f4480a = i4 + 1;
                    n.b bVar3 = new n.b(size3, 5, a5, i4);
                    nVar.g.put(bVar3.e.f2754a, bVar3);
                    if (trackGroup4.equals(e3)) {
                        nVar.l = bVar3;
                    }
                }
                TrackGroupArray trackGroupArray4 = aVar.f3978d[2];
                for (int size4 = nVar.h.size(); size4 < trackGroupArray4.length; size4++) {
                    TrackGroup trackGroup5 = trackGroupArray4.get(size4);
                    Format format = (Format) androidx.core.e.d.a(trackGroup5.getFormat(0));
                    String str = format.sampleMimeType;
                    str.hashCode();
                    switch (str.hashCode()) {
                        case -1004728940:
                            if (str.equals("text/vtt")) {
                                c2 = 0;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 1566015601:
                            if (str.equals("application/cea-608")) {
                                c2 = 1;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 1566016562:
                            if (str.equals("application/cea-708")) {
                                c2 = 2;
                                break;
                            }
                            c2 = 65535;
                            break;
                        default:
                            c2 = 65535;
                            break;
                    }
                    switch (c2) {
                        case 0:
                            i = 2;
                            break;
                        case 1:
                            i = 0;
                            break;
                        case 2:
                            i = 1;
                            break;
                        default:
                            throw new IllegalArgumentException("Unexpected text MIME type ".concat(String.valueOf(str)));
                    }
                    int i5 = nVar.f4480a;
                    nVar.f4480a = i5 + 1;
                    n.a aVar2 = new n.a(size4, i, format, -1, i5);
                    nVar.h.put(aVar2.e.f2754a, aVar2);
                    if (trackGroup5.equals(trackGroup)) {
                        nVar.n = size4;
                    }
                }
            }
            if (eVar.i.a()) {
                eVar.f4424a.a(eVar.c());
            }
        }

        @Override // androidx.media2.exoplayer.external.video.g
        public final void a(String str, long j, long j2) {
        }

        @Override // androidx.media2.exoplayer.external.ae.a, androidx.media2.exoplayer.external.ae.b
        public final void a(boolean z, int i) {
            e eVar = e.this;
            eVar.f4424a.a(eVar.j.b(), eVar.d());
            if (i != 3 || !z) {
                C0096e eVar2 = eVar.j;
                if (eVar2.e != -1) {
                    eVar2.f += ((System.nanoTime() - eVar2.e) + 500) / 1000;
                    eVar2.e = -1L;
                }
            } else {
                eVar.j.d();
            }
            if (i == 3 || i == 2) {
                eVar.f4426c.post(eVar.e);
            } else {
                eVar.f4426c.removeCallbacks(eVar.e);
            }
            if (i == 1) {
                return;
            }
            if (i != 2) {
                if (i == 3) {
                    eVar.g();
                } else if (i == 4) {
                    if (eVar.p) {
                        eVar.p = false;
                        eVar.f4424a.r();
                    }
                    if (eVar.f.n()) {
                        C0096e eVar3 = eVar.j;
                        MediaItem b2 = eVar3.b();
                        eVar3.f4436a.h(b2);
                        eVar3.f4436a.j(b2);
                        eVar.f.a(false);
                    }
                } else {
                    throw new IllegalStateException();
                }
            } else if (eVar.m && !eVar.o) {
                eVar.o = true;
                if (eVar.j.c()) {
                    eVar.f4424a.b(eVar.j.b(), (int) (eVar.f4427d.a() / 1000));
                }
                eVar.f4424a.d(eVar.j.b());
            }
        }

        @Override // androidx.media2.player.l.b
        public final void a(byte[] bArr, long j) {
            e eVar = e.this;
            SessionPlayer.TrackInfo a2 = eVar.i.a(4);
            eVar.f4424a.a(eVar.j.b(), a2, new SubtitleData(j, 0L, bArr));
        }

        @Override // androidx.media2.exoplayer.external.ae.a, androidx.media2.exoplayer.external.ae.b
        public final void b() {
            e eVar = e.this;
            if (eVar.j.b() == null) {
                eVar.f4424a.r();
                return;
            }
            eVar.p = true;
            if (eVar.f.l() == 3) {
                eVar.g();
            }
        }

        @Override // androidx.media2.exoplayer.external.audio.f, androidx.media2.exoplayer.external.audio.g
        public final void b(int i) {
            e.this.l = i;
        }

        @Override // androidx.media2.exoplayer.external.video.g
        public final void b(androidx.media2.exoplayer.external.b.d dVar) {
            e.this.a(0, 0, 1.0f);
        }

        @Override // androidx.media2.exoplayer.external.audio.f
        public final void c() {
        }

        @Override // androidx.media2.exoplayer.external.audio.f
        public final void d() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/e$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final Map<FileDescriptor, a> f4431a = new HashMap();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:androidx/media2/player/e$b$a.class */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            public final Object f4432a = new Object();

            /* renamed from: b  reason: collision with root package name */
            public int f4433b;

            a() {
            }
        }

        b() {
        }

        public final Object a(FileDescriptor fileDescriptor) {
            if (!this.f4431a.containsKey(fileDescriptor)) {
                this.f4431a.put(fileDescriptor, new a());
            }
            a aVar = (a) androidx.core.e.d.a(this.f4431a.get(fileDescriptor));
            aVar.f4433b++;
            return aVar.f4432a;
        }

        public final void b(FileDescriptor fileDescriptor) {
            a aVar = (a) androidx.core.e.d.a(this.f4431a.get(fileDescriptor));
            int i = aVar.f4433b - 1;
            aVar.f4433b = i;
            if (i == 0) {
                this.f4431a.remove(fileDescriptor);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/e$c.class */
    public interface c {
        void a(MediaItem mediaItem, int i);

        void a(MediaItem mediaItem, int i, int i2);

        void a(MediaItem mediaItem, SessionPlayer.TrackInfo trackInfo, SubtitleData subtitleData);

        void a(MediaItem mediaItem, i iVar);

        void a(MediaItem mediaItem, m mVar);

        void a(List<SessionPlayer.TrackInfo> list);

        void b(MediaItem mediaItem, int i);

        void c(MediaItem mediaItem);

        void c(MediaItem mediaItem, int i);

        void d(MediaItem mediaItem);

        void e(MediaItem mediaItem);

        void f(MediaItem mediaItem);

        void g(MediaItem mediaItem);

        void h(MediaItem mediaItem);

        void i(MediaItem mediaItem);

        void j(MediaItem mediaItem);

        void r();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/e$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        final MediaItem f4434a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f4435b;

        d(MediaItem mediaItem, boolean z) {
            this.f4434a = mediaItem;
            this.f4435b = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.player.e$e  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/e$e.class */
    public static final class C0096e {

        /* renamed from: a  reason: collision with root package name */
        final c f4436a;

        /* renamed from: b  reason: collision with root package name */
        final ak f4437b;
        long f;
        private final Context g;
        private final f.a h;

        /* renamed from: c  reason: collision with root package name */
        final h f4438c = new h(new t[0]);

        /* renamed from: d  reason: collision with root package name */
        final ArrayDeque<d> f4439d = new ArrayDeque<>();
        private final b i = new b();
        long e = -1;

        C0096e(Context context, ak akVar, c cVar) {
            this.g = context;
            this.f4437b = akVar;
            this.f4436a = cVar;
            this.h = new androidx.media2.exoplayer.external.upstream.n(context, ac.a(context, "MediaPlayer2"));
        }

        /* JADX WARN: Code restructure failed: missing block: B:8:0x0065, code lost:
            if (r0 != 576460752303423487L) goto L_0x0068;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v10, types: [long] */
        /* JADX WARN: Type inference failed for: r21v0 */
        /* JADX WARN: Type inference failed for: r21v2 */
        /* JADX WARN: Unknown variable types count: 1 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void a(androidx.media2.common.MediaItem r12, java.util.Collection<androidx.media2.player.e.d> r13, java.util.Collection<androidx.media2.exoplayer.external.source.t> r14) {
            /*
                r11 = this;
                r0 = r11
                androidx.media2.exoplayer.external.upstream.f$a r0 = r0.h
                r15 = r0
                r0 = r12
                boolean r0 = r0 instanceof androidx.media2.common.FileMediaItem
                if (r0 == 0) goto L_0x003c
                r0 = r12
                androidx.media2.common.FileMediaItem r0 = (androidx.media2.common.FileMediaItem) r0
                r15 = r0
                r0 = r15
                r0.a()
                r0 = r15
                android.os.ParcelFileDescriptor r0 = r0.f2730a
                java.io.FileDescriptor r0 = r0.getFileDescriptor()
                r16 = r0
                r0 = r16
                r1 = r15
                long r1 = r1.f2731b
                r2 = r15
                long r2 = r2.f2732c
                r3 = r11
                androidx.media2.player.e$b r3 = r3.i
                r4 = r16
                java.lang.Object r3 = r3.a(r4)
                androidx.media2.exoplayer.external.upstream.f$a r0 = androidx.media2.player.f.a(r0, r1, r2, r3)
                r15 = r0
            L_0x003c:
                r0 = r11
                android.content.Context r0 = r0.g
                r1 = r15
                r2 = r12
                androidx.media2.exoplayer.external.source.t r0 = androidx.media2.player.d.a(r0, r1, r2)
                r16 = r0
                r0 = r12
                long r0 = r0.e
                r17 = r0
                r0 = r12
                long r0 = r0.f
                r19 = r0
                r0 = r17
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0068
                r0 = r16
                r15 = r0
                r0 = r19
                r1 = 576460752303423487(0x7ffffffffffffff, double:3.7857669957336787E-270)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x0092
            L_0x0068:
                r0 = r19
                r21 = r0
                r0 = r19
                r1 = 576460752303423487(0x7ffffffffffffff, double:3.7857669957336787E-270)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x007a
                r0 = -9223372036854775808
                r21 = r0
            L_0x007a:
                androidx.media2.exoplayer.external.source.ClippingMediaSource r0 = new androidx.media2.exoplayer.external.source.ClippingMediaSource
                r1 = r0
                r2 = r16
                r3 = r17
                long r3 = androidx.media2.exoplayer.external.c.b(r3)
                r4 = r21
                long r4 = androidx.media2.exoplayer.external.c.b(r4)
                r5 = 0
                r6 = 0
                r7 = 1
                r1.<init>(r2, r3, r4, r5, r6, r7)
                r15 = r0
            L_0x0092:
                r0 = r12
                boolean r0 = r0 instanceof androidx.media2.common.UriMediaItem
                if (r0 == 0) goto L_0x00ac
                r0 = r12
                androidx.media2.common.UriMediaItem r0 = (androidx.media2.common.UriMediaItem) r0
                android.net.Uri r0 = r0.f2764a
                boolean r0 = androidx.media2.exoplayer.external.util.ac.a(r0)
                if (r0 != 0) goto L_0x00ac
                r0 = 1
                r23 = r0
                goto L_0x00af
            L_0x00ac:
                r0 = 0
                r23 = r0
            L_0x00af:
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
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.player.e.C0096e.a(androidx.media2.common.MediaItem, java.util.Collection, java.util.Collection):void");
        }

        public final void a() {
            while (!this.f4439d.isEmpty()) {
                a(this.f4439d.remove());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void a(d dVar) {
            MediaItem mediaItem = dVar.f4434a;
            try {
                if (mediaItem instanceof FileMediaItem) {
                    this.i.b(((FileMediaItem) mediaItem).f2730a.getFileDescriptor());
                    ((FileMediaItem) mediaItem).b();
                } else if (mediaItem instanceof CallbackMediaItem) {
                    ((CallbackMediaItem) mediaItem).f2728a.close();
                }
            } catch (IOException e) {
                Log.w("ExoPlayerWrapper", "Error releasing media item ".concat(String.valueOf(mediaItem)), e);
            }
        }

        public final void a(List<MediaItem> list) {
            int i = this.f4438c.i();
            ArrayList<d> arrayList = new ArrayList(i > 1 ? i - 1 : 0);
            if (i > 1) {
                this.f4438c.a(1, i);
                while (this.f4439d.size() > 1) {
                    arrayList.add(this.f4439d.removeLast());
                }
            }
            ArrayList arrayList2 = new ArrayList(list.size());
            for (MediaItem mediaItem : list) {
                if (mediaItem == null) {
                    this.f4436a.c(null, 1);
                    return;
                }
                a(mediaItem, this.f4439d, arrayList2);
            }
            this.f4438c.a((Collection<t>) arrayList2);
            for (d dVar : arrayList) {
                a(dVar);
            }
        }

        public final void a(boolean z) {
            MediaItem b2 = b();
            if (z && this.f4437b.o() != 0) {
                this.f4436a.i(b2);
            }
            int c2 = this.f4437b.c();
            if (c2 > 0) {
                if (z) {
                    this.f4436a.h(b());
                }
                for (int i = 0; i < c2; i++) {
                    a(this.f4439d.removeFirst());
                }
                if (z) {
                    this.f4436a.g(b());
                }
                this.f4438c.a(0, c2);
                this.f = 0L;
                this.e = -1L;
                if (this.f4437b.l() == 3) {
                    d();
                }
            }
        }

        public final MediaItem b() {
            if (this.f4439d.isEmpty()) {
                return null;
            }
            return this.f4439d.peekFirst().f4434a;
        }

        public final boolean c() {
            return !this.f4439d.isEmpty() && this.f4439d.peekFirst().f4435b;
        }

        public final void d() {
            if (this.e == -1) {
                this.e = System.nanoTime();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/e$f.class */
    final class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            e eVar = e.this;
            if (eVar.j.c()) {
                c cVar = eVar.f4424a;
                MediaItem b2 = eVar.j.b();
                ak akVar = eVar.f;
                long f = akVar.f();
                long d2 = akVar.d();
                int i = 100;
                if (f == -9223372036854775807L || d2 == -9223372036854775807L) {
                    i = 0;
                } else if (d2 != 0) {
                    i = ac.a((int) ((f * 100) / d2), 0, 100);
                }
                cVar.a(b2, i);
            }
            eVar.f4426c.removeCallbacks(eVar.e);
            eVar.f4426c.postDelayed(eVar.e, 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Context context, c cVar, Looper looper) {
        this.t = context.getApplicationContext();
        this.f4424a = cVar;
        this.f4425b = looper;
        this.f4426c = new Handler(looper);
    }

    public final long a() {
        androidx.core.e.d.b(b() != 1001);
        return Math.max(0L, this.f.e());
    }

    final void a(int i, int i2, float f2) {
        int i3 = i;
        if (f2 != 1.0f) {
            i3 = (int) (f2 * i);
        }
        if (this.q != i3 || this.r != i2) {
            this.q = i3;
            this.r = i2;
            this.f4424a.a(this.j.b(), i3, i2);
        }
    }

    public final int b() {
        if (f()) {
            return WebSocketProtocol.CLOSE_NO_STATUS_CODE;
        }
        if (this.n) {
            return AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE;
        }
        int l = this.f.l();
        boolean n = this.f.n();
        if (l == 1) {
            return 1001;
        }
        if (l == 2) {
            return 1003;
        }
        if (l == 3) {
            return n ? 1004 : 1003;
        }
        if (l == 4) {
            return 1003;
        }
        throw new IllegalStateException();
    }

    public final List<SessionPlayer.TrackInfo> c() {
        return this.i.b();
    }

    public final i d() {
        return new i(this.f.l() == 1 ? 0L : androidx.media2.exoplayer.external.c.b(a()), System.nanoTime(), (this.f.l() != 3 || !this.f.n()) ? BitmapDescriptorFactory.HUE_RED : this.s.c().floatValue());
    }

    public final void e() {
        ak akVar = this.f;
        if (akVar != null) {
            akVar.a(false);
            if (b() != 1001) {
                this.f4424a.a(this.j.b(), d());
            }
            this.f.p();
            this.j.a();
        }
        a aVar = new a();
        this.h = new DefaultAudioSink(androidx.media2.exoplayer.external.audio.d.a(this.t), new AudioProcessor[0]);
        l lVar = new l(aVar);
        k kVar = new k(this.t, this.h, lVar);
        this.i = new n(lVar);
        this.f = new ak.a(this.t, kVar).a(this.i.f4483d).a(this.f4427d).a(this.f4425b).a();
        this.g = new Handler(this.f.b());
        this.j = new C0096e(this.t, this.f, this.f4424a);
        this.f.a((ae.b) aVar);
        this.f.a((g) aVar);
        this.f.a((androidx.media2.exoplayer.external.metadata.d) aVar);
        this.q = 0;
        this.r = 0;
        this.m = false;
        this.n = false;
        this.o = false;
        this.p = false;
        this.k = false;
        this.l = 0;
        this.u = 0;
        this.v = BitmapDescriptorFactory.HUE_RED;
        this.s = new j.a().a(1.0f).b().a().c();
    }

    public final boolean f() {
        return this.f.m() != null;
    }

    final void g() {
        MediaItem b2 = this.j.b();
        boolean z = this.m;
        boolean z2 = this.p;
        if (!z) {
            this.m = true;
            this.n = true;
            this.j.a(false);
            this.f4424a.c(b2);
        } else if (z2) {
            this.p = false;
            this.f4424a.r();
        }
        if (this.o) {
            this.o = false;
            if (this.j.c()) {
                this.f4424a.b(this.j.b(), (int) (this.f4427d.a() / 1000));
            }
            this.f4424a.e(this.j.b());
        }
    }
}

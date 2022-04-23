package androidx.media2.exoplayer.external.source.hls;

import android.net.Uri;
import android.os.SystemClock;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker;
import androidx.media2.exoplayer.external.source.hls.playlist.f;
import androidx.media2.exoplayer.external.upstream.f;
import androidx.media2.exoplayer.external.upstream.h;
import androidx.media2.exoplayer.external.upstream.w;
import androidx.media2.exoplayer.external.util.ab;
import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/d.class */
final class d {

    /* renamed from: a  reason: collision with root package name */
    final Uri[] f3646a;

    /* renamed from: b  reason: collision with root package name */
    final TrackGroup f3647b;

    /* renamed from: d  reason: collision with root package name */
    boolean f3649d;
    byte[] e;
    IOException f;
    Uri g;
    androidx.media2.exoplayer.external.trackselection.e h;
    boolean i;
    private final f j;
    private final f k;
    private final f l;
    private final o m;
    private final Format[] n;
    private final HlsPlaylistTracker o;
    private final List<Format> p;
    private boolean q;

    /* renamed from: c  reason: collision with root package name */
    final b f3648c = new b();
    private long r = -9223372036854775807L;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/d$a.class */
    public static final class a extends androidx.media2.exoplayer.external.source.a.c {
        byte[] j;

        public a(f fVar, h hVar, Format format, int i, Object obj, byte[] bArr) {
            super(fVar, hVar, 3, format, i, obj, bArr);
        }

        @Override // androidx.media2.exoplayer.external.source.a.c
        public final void a(byte[] bArr, int i) {
            this.j = Arrays.copyOf(bArr, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/d$b.class */
    public static final class b extends LinkedHashMap<Uri, byte[]> {
        public b() {
            super(8, 1.0f, false);
        }

        /* renamed from: a */
        public final byte[] put(Uri uri, byte[] bArr) {
            return (byte[]) super.put(uri, (byte[]) androidx.media2.exoplayer.external.util.a.a(bArr));
        }

        /* renamed from: a */
        public final byte[] get(Object obj) {
            if (obj == null) {
                return null;
            }
            return (byte[]) super.get(obj);
        }

        @Override // java.util.LinkedHashMap
        protected final boolean removeEldestEntry(Map.Entry<Uri, byte[]> entry) {
            return size() > 4;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/d$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public androidx.media2.exoplayer.external.source.a.b f3650a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f3651b;

        /* renamed from: c  reason: collision with root package name */
        public Uri f3652c;

        public c() {
            a();
        }

        public final void a() {
            this.f3650a = null;
            this.f3651b = false;
            this.f3652c = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.source.hls.d$d  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/d$d.class */
    public static final class C0085d extends androidx.media2.exoplayer.external.source.a.a {

        /* renamed from: b  reason: collision with root package name */
        private final androidx.media2.exoplayer.external.source.hls.playlist.f f3653b;

        /* renamed from: c  reason: collision with root package name */
        private final long f3654c;

        public C0085d(androidx.media2.exoplayer.external.source.hls.playlist.f fVar, long j, int i) {
            super(i, fVar.l.size() - 1);
            this.f3653b = fVar;
            this.f3654c = j;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/d$e.class */
    static final class e extends androidx.media2.exoplayer.external.trackselection.b {

        /* renamed from: a  reason: collision with root package name */
        private int f3655a;

        public e(TrackGroup trackGroup, int[] iArr) {
            super(trackGroup, iArr);
            this.f3655a = a(trackGroup.getFormat(0));
        }

        @Override // androidx.media2.exoplayer.external.trackselection.e
        public final int a() {
            return this.f3655a;
        }

        @Override // androidx.media2.exoplayer.external.trackselection.b, androidx.media2.exoplayer.external.trackselection.e
        public final void a(long j, long j2, long j3) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (b(this.f3655a, elapsedRealtime)) {
                for (int i = this.f3971c - 1; i >= 0; i--) {
                    if (!b(i, elapsedRealtime)) {
                        this.f3655a = i;
                        return;
                    }
                }
                throw new IllegalStateException();
            }
        }

        @Override // androidx.media2.exoplayer.external.trackselection.e
        public final int b() {
            return 0;
        }

        @Override // androidx.media2.exoplayer.external.trackselection.e
        public final Object c() {
            return null;
        }
    }

    public d(f fVar, HlsPlaylistTracker hlsPlaylistTracker, Uri[] uriArr, Format[] formatArr, androidx.media2.exoplayer.external.source.hls.e eVar, w wVar, o oVar, List<Format> list) {
        this.j = fVar;
        this.o = hlsPlaylistTracker;
        this.f3646a = uriArr;
        this.n = formatArr;
        this.m = oVar;
        this.p = list;
        f a2 = eVar.a();
        this.k = a2;
        if (wVar != null) {
            a2.a(wVar);
        }
        this.l = eVar.a();
        this.f3647b = new TrackGroup(formatArr);
        int[] iArr = new int[uriArr.length];
        for (int i = 0; i < uriArr.length; i++) {
            iArr[i] = i;
        }
        this.h = new e(this.f3647b, iArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0, types: [long] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [long] */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long a(androidx.media2.exoplayer.external.source.hls.h r8, boolean r9, androidx.media2.exoplayer.external.source.hls.playlist.f r10, long r11, long r13) {
        /*
            r7 = this;
            r0 = r8
            if (r0 == 0) goto L_0x0010
            r0 = r9
            if (r0 == 0) goto L_0x000b
            goto L_0x0010
        L_0x000b:
            r0 = r8
            long r0 = r0.f()
            return r0
        L_0x0010:
            r0 = r10
            long r0 = r0.m
            r15 = r0
            r0 = r13
            r17 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0032
            r0 = r7
            boolean r0 = r0.q
            if (r0 == 0) goto L_0x002c
            r0 = r13
            r17 = r0
            goto L_0x0032
        L_0x002c:
            r0 = r8
            long r0 = r0.f
            r17 = r0
        L_0x0032:
            r0 = r10
            boolean r0 = r0.i
            if (r0 != 0) goto L_0x005c
            r0 = r17
            r1 = r15
            r2 = r11
            long r1 = r1 + r2
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x005c
            r0 = r10
            long r0 = r0.f
            r11 = r0
            r0 = r10
            java.util.List<androidx.media2.exoplayer.external.source.hls.playlist.f$a> r0 = r0.l
            int r0 = r0.size()
            long r0 = (long) r0
            r13 = r0
        L_0x0056:
            r0 = r11
            r1 = r13
            long r0 = r0 + r1
            return r0
        L_0x005c:
            r0 = r10
            java.util.List<androidx.media2.exoplayer.external.source.hls.playlist.f$a> r0 = r0.l
            r19 = r0
            r0 = r7
            androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker r0 = r0.o
            boolean r0 = r0.e()
            if (r0 == 0) goto L_0x007a
            r0 = r8
            if (r0 != 0) goto L_0x0075
            goto L_0x007a
        L_0x0075:
            r0 = 0
            r9 = r0
            goto L_0x007c
        L_0x007a:
            r0 = 1
            r9 = r0
        L_0x007c:
            r0 = r19
            r1 = r17
            r2 = r11
            long r1 = r1 - r2
            java.lang.Long r1 = java.lang.Long.valueOf(r1)
            r2 = r9
            int r0 = androidx.media2.exoplayer.external.util.ac.a(r0, r1, r2)
            long r0 = (long) r0
            r11 = r0
            r0 = r10
            long r0 = r0.f
            r13 = r0
            goto L_0x0056
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.hls.d.a(androidx.media2.exoplayer.external.source.hls.h, boolean, androidx.media2.exoplayer.external.source.hls.playlist.f, long, long):long");
    }

    private static Uri a(androidx.media2.exoplayer.external.source.hls.playlist.f fVar, f.a aVar) {
        if (aVar == null || aVar.h == null) {
            return null;
        }
        return ab.a(fVar.n, aVar.h);
    }

    private androidx.media2.exoplayer.external.source.a.b a(Uri uri, int i) {
        if (uri == null) {
            return null;
        }
        if (this.f3648c.containsKey(uri)) {
            b bVar = this.f3648c;
            bVar.put(uri, (byte[]) bVar.remove(uri));
            return null;
        }
        return new a(this.l, new h(uri, 0L, -1L, null, 1), this.n[i], this.h.b(), this.h.c(), this.e);
    }

    public final void a() throws IOException {
        IOException iOException = this.f;
        if (iOException == null) {
            Uri uri = this.g;
            if (uri != null && this.i) {
                this.o.b(uri);
                return;
            }
            return;
        }
        throw iOException;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v111, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [androidx.media2.exoplayer.external.trackselection.e] */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r30v1, types: [long] */
    /* JADX WARN: Type inference failed for: r30v2 */
    /* JADX WARN: Type inference failed for: r30v4 */
    /* JADX WARN: Type inference failed for: r37v0 */
    /* JADX WARN: Type inference failed for: r37v1, types: [long] */
    /* JADX WARN: Type inference failed for: r37v2 */
    /* JADX WARN: Type inference failed for: r37v3 */
    /* JADX WARN: Type inference failed for: r37v5 */
    /* JADX WARN: Unknown variable types count: 4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(long r20, long r22, java.util.List<androidx.media2.exoplayer.external.source.hls.h> r24, boolean r25, androidx.media2.exoplayer.external.source.hls.d.c r26) {
        /*
            Method dump skipped, instructions count: 759
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.hls.d.a(long, long, java.util.List, boolean, androidx.media2.exoplayer.external.source.hls.d$c):void");
    }

    public final androidx.media2.exoplayer.external.source.a.e[] a(h hVar, long j) {
        int indexOf = hVar == null ? -1 : this.f3647b.indexOf(hVar.f3500c);
        int f = this.h.f();
        androidx.media2.exoplayer.external.source.a.e[] eVarArr = new androidx.media2.exoplayer.external.source.a.e[f];
        for (int i = 0; i < f; i++) {
            int b2 = this.h.b(i);
            Uri uri = this.f3646a[b2];
            if (!this.o.a(uri)) {
                eVarArr[i] = androidx.media2.exoplayer.external.source.a.e.f3502a;
            } else {
                androidx.media2.exoplayer.external.source.hls.playlist.f a2 = this.o.a(uri, false);
                long c2 = a2.f3708c - this.o.c();
                long a3 = a(hVar, b2 != indexOf, a2, c2, j);
                if (a3 < a2.f) {
                    eVarArr[i] = androidx.media2.exoplayer.external.source.a.e.f3502a;
                } else {
                    eVarArr[i] = new C0085d(a2, c2, (int) (a3 - a2.f));
                }
            }
        }
        return eVarArr;
    }
}

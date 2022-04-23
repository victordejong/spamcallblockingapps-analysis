package androidx.media2.exoplayer.external.trackselection;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.trackselection.e;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/a.class */
public final class a extends androidx.media2.exoplayer.external.trackselection.b {

    /* renamed from: a  reason: collision with root package name */
    final AbstractC0092a f3960a;
    private final long f;
    private final long g;
    private final long h;
    private final float i;
    private final long j;
    private final androidx.media2.exoplayer.external.util.b k;
    private float l;
    private int m;
    private int n;
    private long o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.trackselection.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/a$a.class */
    public interface AbstractC0092a {
        long a();
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/a$b.class */
    static final class b implements AbstractC0092a {

        /* renamed from: a  reason: collision with root package name */
        long[][] f3961a;

        /* renamed from: b  reason: collision with root package name */
        private final androidx.media2.exoplayer.external.upstream.c f3962b;

        /* renamed from: c  reason: collision with root package name */
        private final float f3963c;

        /* renamed from: d  reason: collision with root package name */
        private final long f3964d;

        b(androidx.media2.exoplayer.external.upstream.c cVar, float f, long j) {
            this.f3962b = cVar;
            this.f3963c = f;
            this.f3964d = j;
        }

        @Override // androidx.media2.exoplayer.external.trackselection.a.AbstractC0092a
        public final long a() {
            long[][] jArr;
            long max = Math.max(0L, (((float) this.f3962b.a()) * this.f3963c) - this.f3964d);
            if (this.f3961a == null) {
                return max;
            }
            int i = 1;
            while (true) {
                jArr = this.f3961a;
                if (i >= jArr.length - 1 || jArr[i][0] >= max) {
                    break;
                }
                i++;
            }
            long[] jArr2 = jArr[i - 1];
            long[] jArr3 = jArr[i];
            return jArr2[1] + ((((float) (max - jArr2[0])) / ((float) (jArr3[0] - jArr2[0]))) * ((float) (jArr3[1] - jArr2[1])));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/a$c.class */
    public static final class c implements e.b {

        /* renamed from: a  reason: collision with root package name */
        private final androidx.media2.exoplayer.external.upstream.c f3965a;

        /* renamed from: b  reason: collision with root package name */
        private final int f3966b;

        /* renamed from: c  reason: collision with root package name */
        private final int f3967c;

        /* renamed from: d  reason: collision with root package name */
        private final int f3968d;
        private final float e;
        private final float f;
        private final long g;
        private final androidx.media2.exoplayer.external.util.b h;

        public c() {
            this(10000, 25000, 25000, 0.75f, 0.75f, 2000L, androidx.media2.exoplayer.external.util.b.f4124a);
        }

        public c(int i, int i2, int i3, float f) {
            this(i, i2, i3, f, 0.75f, 2000L, androidx.media2.exoplayer.external.util.b.f4124a);
        }

        public c(int i, int i2, int i3, float f, float f2, long j, androidx.media2.exoplayer.external.util.b bVar) {
            this(null, i, i2, i3, f, f2, j, bVar);
        }

        @Deprecated
        public c(androidx.media2.exoplayer.external.upstream.c cVar) {
            this(cVar, 10000, 25000, 25000, 0.75f, 0.75f, 2000L, androidx.media2.exoplayer.external.util.b.f4124a);
        }

        @Deprecated
        public c(androidx.media2.exoplayer.external.upstream.c cVar, int i, int i2, int i3, float f) {
            this(cVar, i, i2, i3, f, 0.75f, 2000L, androidx.media2.exoplayer.external.util.b.f4124a);
        }

        @Deprecated
        public c(androidx.media2.exoplayer.external.upstream.c cVar, int i, int i2, int i3, float f, float f2, long j, androidx.media2.exoplayer.external.util.b bVar) {
            this.f3965a = cVar;
            this.f3966b = i;
            this.f3967c = i2;
            this.f3968d = i3;
            this.e = f;
            this.f = f2;
            this.g = j;
            this.h = bVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v20, types: [long[], long[][]] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // androidx.media2.exoplayer.external.trackselection.e.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final androidx.media2.exoplayer.external.trackselection.e[] a(androidx.media2.exoplayer.external.trackselection.e.a[] r18, androidx.media2.exoplayer.external.upstream.c r19) {
            /*
                Method dump skipped, instructions count: 475
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.a.c.a(androidx.media2.exoplayer.external.trackselection.e$a[], androidx.media2.exoplayer.external.upstream.c):androidx.media2.exoplayer.external.trackselection.e[]");
        }
    }

    private a(TrackGroup trackGroup, int[] iArr, AbstractC0092a aVar, long j, long j2, long j3, float f, long j4, androidx.media2.exoplayer.external.util.b bVar) {
        super(trackGroup, iArr);
        this.f3960a = aVar;
        this.f = j * 1000;
        this.g = j2 * 1000;
        this.h = j3 * 1000;
        this.i = f;
        this.j = j4;
        this.k = bVar;
        this.l = 1.0f;
        this.n = 0;
        this.o = -9223372036854775807L;
    }

    public a(TrackGroup trackGroup, int[] iArr, androidx.media2.exoplayer.external.upstream.c cVar) {
        this(trackGroup, iArr, cVar, 0L, 10000L, 25000L, 25000L, 0.75f, 0.75f, 2000L, androidx.media2.exoplayer.external.util.b.f4124a);
    }

    public a(TrackGroup trackGroup, int[] iArr, androidx.media2.exoplayer.external.upstream.c cVar, long j, long j2, long j3, long j4, float f, float f2, long j5, androidx.media2.exoplayer.external.util.b bVar) {
        this(trackGroup, iArr, new b(cVar, f, j), j2, j3, j4, f2, j5, bVar);
    }

    private int a(long j) {
        long a2 = this.f3960a.a();
        int i = 0;
        for (int i2 = 0; i2 < this.f3971c; i2++) {
            if (j == Long.MIN_VALUE || !b(i2, j)) {
                if (a(this.e[i2].bitrate, this.l, a2)) {
                    return i2;
                }
                i = i2;
            }
        }
        return i;
    }

    private static void a(long[][][] jArr, int i, long[][] jArr2, int[] iArr) {
        long j = 0;
        for (int i2 = 0; i2 < jArr.length; i2++) {
            jArr[i2][i][1] = jArr2[i2][iArr[i2]];
            j += jArr[i2][i][1];
        }
        for (long[][] jArr3 : jArr) {
            jArr3[i][0] = j;
        }
    }

    private static boolean a(int i, float f, long j) {
        return ((long) Math.round(((float) i) * f)) <= j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v100 */
    /* JADX WARN: Type inference failed for: r0v3, types: [double[]] */
    /* JADX WARN: Type inference failed for: r0v53 */
    /* JADX WARN: Type inference failed for: r0v54, types: [double] */
    /* JADX WARN: Type inference failed for: r0v65 */
    /* JADX WARN: Type inference failed for: r0v68 */
    /* JADX WARN: Type inference failed for: r0v69, types: [double] */
    /* JADX WARN: Type inference failed for: r0v7, types: [double[]] */
    /* JADX WARN: Type inference failed for: r0v75 */
    /* JADX WARN: Type inference failed for: r0v76, types: [double] */
    /* JADX WARN: Type inference failed for: r0v78 */
    /* JADX WARN: Type inference failed for: r0v82, types: [double] */
    /* JADX WARN: Type inference failed for: r0v84 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [double] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v35 */
    /* JADX WARN: Type inference failed for: r1v39 */
    /* JADX WARN: Type inference failed for: r1v40, types: [double] */
    /* JADX WARN: Type inference failed for: r1v42 */
    /* JADX WARN: Type inference failed for: r1v56 */
    /* JADX WARN: Type inference failed for: r1v57, types: [double] */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Unknown variable types count: 6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ long[][][] a(long[][] r7) {
        /*
            Method dump skipped, instructions count: 493
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.a.a(long[][]):long[][][]");
    }

    @Override // androidx.media2.exoplayer.external.trackselection.e
    public final int a() {
        return this.m;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.b, androidx.media2.exoplayer.external.trackselection.e
    public final void a(float f) {
        this.l = f;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.b, androidx.media2.exoplayer.external.trackselection.e
    public final void a(long j, long j2, long j3) {
        long a2 = this.k.a();
        boolean z = true;
        if (this.n == 0) {
            this.n = 1;
            this.m = a(a2);
            return;
        }
        int i = this.m;
        int a3 = a(a2);
        this.m = a3;
        if (a3 != i) {
            if (!b(i, a2)) {
                Format format = this.e[i];
                Format format2 = this.e[this.m];
                if (format2.bitrate > format.bitrate) {
                    if (j3 == -9223372036854775807L || j3 > this.f) {
                        z = false;
                    }
                    if (j2 < (z ? ((float) j3) * this.i : this.f)) {
                        this.m = i;
                    }
                }
                if (format2.bitrate < format.bitrate && j2 >= this.g) {
                    this.m = i;
                }
            }
            if (this.m != i) {
                this.n = 3;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.trackselection.e
    public final int b() {
        return this.n;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.e
    public final Object c() {
        return null;
    }

    @Override // androidx.media2.exoplayer.external.trackselection.b, androidx.media2.exoplayer.external.trackselection.e
    public final void d() {
        this.o = -9223372036854775807L;
    }
}

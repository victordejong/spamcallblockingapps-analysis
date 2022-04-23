package com.google.android.exoplayer2.extractor.i;

import com.explorestack.protobuf.openrtb.LossReason;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.h;
import com.google.android.exoplayer2.extractor.i;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.u;
import java.io.IOException;
import okhttp3.internal.http.StatusLine;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/i/a.class */
public final class a implements h {

    /* renamed from: a  reason: collision with root package name */
    public static final l f21285a = _$$Lambda$a$Ejz2n3Nq7tms0sJTN0x6WDywUm4.INSTANCE;

    /* renamed from: b  reason: collision with root package name */
    private j f21286b;

    /* renamed from: c  reason: collision with root package name */
    private x f21287c;

    /* renamed from: d  reason: collision with root package name */
    private b f21288d;
    private int e = -1;
    private long f = -1;

    /* renamed from: com.google.android.exoplayer2.extractor.i.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/i/a$a.class */
    static final class C0431a implements b {

        /* renamed from: a  reason: collision with root package name */
        private static final int[] f21289a = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};

        /* renamed from: b  reason: collision with root package name */
        private static final int[] f21290b = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, 173, 190, LossReason.LOSS_REASON_CREATIVE_FILTERED_CREATIVE_ATTRIBUTE_EXCLUSIONS_VALUE, 230, 253, 279, StatusLine.HTTP_TEMP_REDIRECT, 337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};

        /* renamed from: c  reason: collision with root package name */
        private final j f21291c;

        /* renamed from: d  reason: collision with root package name */
        private final x f21292d;
        private final com.google.android.exoplayer2.extractor.i.b e;
        private final int f;
        private final byte[] g;
        private final u h;
        private final int i;
        private final Format j;
        private int k;
        private long l;
        private int m;
        private long n;

        public C0431a(j jVar, x xVar, com.google.android.exoplayer2.extractor.i.b bVar) throws ParserException {
            this.f21291c = jVar;
            this.f21292d = xVar;
            this.e = bVar;
            int max = Math.max(1, bVar.f21299c / 10);
            this.i = max;
            u uVar = new u(bVar.g);
            uVar.e();
            int e = uVar.e();
            this.f = e;
            int i = bVar.f21298b;
            int i2 = (((bVar.e - (i * 4)) * 8) / (bVar.f * i)) + 1;
            if (e == i2) {
                int a2 = af.a(max, e);
                this.g = new byte[bVar.e * a2];
                this.h = new u(a2 * e * 2 * i);
                int i3 = ((bVar.f21299c * bVar.e) * 8) / e;
                Format.a aVar = new Format.a();
                aVar.k = "audio/raw";
                aVar.f = i3;
                aVar.g = i3;
                aVar.l = max * 2 * i;
                aVar.x = bVar.f21298b;
                aVar.y = bVar.f21299c;
                aVar.z = 2;
                this.j = aVar.a();
                return;
            }
            throw new ParserException("Expected frames per block: " + i2 + "; got: " + e);
        }

        private void a(int i) {
            long j = this.l;
            long b2 = af.b(this.n, 1000000L, this.e.f21299c);
            int c2 = c(i);
            this.f21292d.a(j + b2, 1, c2, this.m - c2, null);
            this.n += i;
            this.m -= c2;
        }

        private int b(int i) {
            return i / (this.e.f21298b * 2);
        }

        private int c(int i) {
            return i * 2 * this.e.f21298b;
        }

        @Override // com.google.android.exoplayer2.extractor.i.a.b
        public final void a(int i, long j) {
            this.f21291c.a(new d(this.e, this.f, i, j));
            this.f21292d.a(this.j);
        }

        @Override // com.google.android.exoplayer2.extractor.i.a.b
        public final void a(long j) {
            this.k = 0;
            this.l = j;
            this.m = 0;
            this.n = 0L;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0067 A[LOOP:0: B:6:0x002d->B:12:0x0067, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0088  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0024 A[SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0061 -> B:4:0x0024). Please submit an issue!!! */
        @Override // com.google.android.exoplayer2.extractor.i.a.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean a(com.google.android.exoplayer2.extractor.i r6, long r7) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 674
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.i.a.C0431a.a(com.google.android.exoplayer2.extractor.i, long):boolean");
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/i/a$b.class */
    interface b {
        void a(int i, long j) throws ParserException;

        void a(long j);

        boolean a(i iVar, long j) throws IOException;
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/i/a$c.class */
    static final class c implements b {

        /* renamed from: a  reason: collision with root package name */
        private final j f21293a;

        /* renamed from: b  reason: collision with root package name */
        private final x f21294b;

        /* renamed from: c  reason: collision with root package name */
        private final com.google.android.exoplayer2.extractor.i.b f21295c;

        /* renamed from: d  reason: collision with root package name */
        private final Format f21296d;
        private final int e;
        private long f;
        private int g;
        private long h;

        public c(j jVar, x xVar, com.google.android.exoplayer2.extractor.i.b bVar, String str, int i) throws ParserException {
            this.f21293a = jVar;
            this.f21294b = xVar;
            this.f21295c = bVar;
            int i2 = (bVar.f21298b * bVar.f) / 8;
            if (bVar.e == i2) {
                int i3 = bVar.f21299c * i2 * 8;
                int max = Math.max(i2, (bVar.f21299c * i2) / 10);
                this.e = max;
                Format.a aVar = new Format.a();
                aVar.k = str;
                aVar.f = i3;
                aVar.g = i3;
                aVar.l = max;
                aVar.x = bVar.f21298b;
                aVar.y = bVar.f21299c;
                aVar.z = i;
                this.f21296d = aVar.a();
                return;
            }
            throw new ParserException("Expected block size: " + i2 + "; got: " + bVar.e);
        }

        @Override // com.google.android.exoplayer2.extractor.i.a.b
        public final void a(int i, long j) {
            this.f21293a.a(new d(this.f21295c, 1, i, j));
            this.f21294b.a(this.f21296d);
        }

        @Override // com.google.android.exoplayer2.extractor.i.a.b
        public final void a(long j) {
            this.f = j;
            this.g = 0;
            this.h = 0L;
        }

        @Override // com.google.android.exoplayer2.extractor.i.a.b
        public final boolean a(i iVar, long j) throws IOException {
            int i;
            int i2;
            int i3;
            while (true) {
                i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
                if (i <= 0 || (i2 = this.g) >= (i3 = this.e)) {
                    break;
                }
                int b2 = this.f21294b.b(iVar, (int) Math.min(i3 - i2, j), true);
                if (b2 == -1) {
                    j = 0;
                } else {
                    this.g += b2;
                    j -= b2;
                }
            }
            int i4 = this.f21295c.e;
            int i5 = this.g / i4;
            if (i5 > 0) {
                long j2 = this.f;
                long b3 = af.b(this.h, 1000000L, this.f21295c.f21299c);
                int i6 = i5 * i4;
                int i7 = this.g - i6;
                this.f21294b.a(j2 + b3, 1, i6, i7, null);
                this.h += i5;
                this.g = i7;
            }
            return i <= 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h[] a() {
        return new h[]{new a()};
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00a6, code lost:
        if (r0 != 65534) goto L_0x00a9;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e3  */
    @Override // com.google.android.exoplayer2.extractor.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(com.google.android.exoplayer2.extractor.i r10, com.google.android.exoplayer2.extractor.u r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.i.a.a(com.google.android.exoplayer2.extractor.i, com.google.android.exoplayer2.extractor.u):int");
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final void a(long j, long j2) {
        b bVar = this.f21288d;
        if (bVar != null) {
            bVar.a(j2);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final void a(j jVar) {
        this.f21286b = jVar;
        this.f21287c = jVar.a(0, 1);
        jVar.a();
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final boolean a(i iVar) throws IOException {
        return com.google.android.exoplayer2.extractor.i.c.a(iVar) != null;
    }
}

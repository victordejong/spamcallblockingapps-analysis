package com.google.android.exoplayer2.extractor.a;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.d;
import com.google.android.exoplayer2.extractor.h;
import com.google.android.exoplayer2.extractor.i;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.u;
import com.google.android.exoplayer2.extractor.v;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.util.af;
import com.mopub.mobileads.VastVideoViewController;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/a/a.class */
public final class a implements h {

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f20915c;
    private static final int f;
    private final byte[] g;
    private final int h;
    private boolean i;
    private long j;
    private int k;
    private int l;
    private boolean m;
    private long n;
    private int o;
    private int p;
    private long q;
    private j r;
    private x s;
    private v t;
    private boolean u;

    /* renamed from: a  reason: collision with root package name */
    public static final l f20913a = _$$Lambda$a$zojJddZNnAE5hwIEZlpwWg0xDGY.INSTANCE;

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f20914b = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    /* renamed from: d  reason: collision with root package name */
    private static final byte[] f20916d = af.c("#!AMR\n");
    private static final byte[] e = af.c("#!AMR-WB\n");

    static {
        int[] iArr = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        f20915c = iArr;
        f = iArr[8];
    }

    public a() {
        this(0);
    }

    public a(int i) {
        this.h = i;
        this.g = new byte[1];
        this.o = -1;
    }

    private static boolean a(i iVar, byte[] bArr) throws IOException {
        iVar.a();
        byte[] bArr2 = new byte[bArr.length];
        iVar.d(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h[] a() {
        return new h[]{new a()};
    }

    private boolean b(i iVar) throws IOException {
        byte[] bArr = f20916d;
        if (a(iVar, bArr)) {
            this.i = false;
            iVar.b(bArr.length);
            return true;
        }
        byte[] bArr2 = e;
        if (!a(iVar, bArr2)) {
            return false;
        }
        this.i = true;
        iVar.b(bArr2.length);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0074, code lost:
        if ((!r0 && (r0 < 12 || r0 > 14)) != false) goto L_0x0077;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0082 A[Catch: EOFException -> 0x012b, TRY_ENTER, TryCatch #0 {EOFException -> 0x012b, blocks: (B:4:0x0007, B:11:0x0039, B:35:0x0082, B:40:0x00a3, B:41:0x00c5, B:43:0x00c7, B:45:0x00cd, B:46:0x00d6, B:48:0x00dd, B:55:0x0118, B:56:0x012a), top: B:67:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c6  */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"trackOutput"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int c(com.google.android.exoplayer2.extractor.i r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.a.a.c(com.google.android.exoplayer2.extractor.i):int");
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final int a(i iVar, u uVar) throws IOException {
        int i;
        com.google.android.exoplayer2.util.a.a(this.s);
        af.a(this.r);
        if (iVar.c() != 0 || b(iVar)) {
            if (!this.u) {
                this.u = true;
                boolean z = this.i;
                String str = z ? "audio/amr-wb" : "audio/3gpp";
                int i2 = z ? VastVideoViewController.MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON : 8000;
                x xVar = this.s;
                Format.a aVar = new Format.a();
                aVar.k = str;
                aVar.l = f;
                aVar.x = 1;
                aVar.y = i2;
                xVar.a(aVar.a());
            }
            int c2 = c(iVar);
            long d2 = iVar.d();
            if (!this.m) {
                if ((this.h & 1) == 0 || d2 == -1 || !((i = this.o) == -1 || i == this.k)) {
                    v.b bVar = new v.b(-9223372036854775807L);
                    this.t = bVar;
                    this.r.a(bVar);
                    this.m = true;
                } else if (this.p >= 20 || c2 == -1) {
                    d dVar = new d(d2, this.n, (int) (((i * 8) * 1000000) / 20000), i);
                    this.t = dVar;
                    this.r.a(dVar);
                    this.m = true;
                }
            }
            return c2;
        }
        throw new ParserException("Could not find AMR header.");
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final void a(long j, long j2) {
        this.j = 0L;
        this.k = 0;
        this.l = 0;
        if (j != 0) {
            v vVar = this.t;
            if (vVar instanceof d) {
                this.q = ((d) vVar).b(j);
                return;
            }
        }
        this.q = 0L;
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final void a(j jVar) {
        this.r = jVar;
        this.s = jVar.a(0, 1);
        jVar.a();
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final boolean a(i iVar) throws IOException {
        return b(iVar);
    }
}

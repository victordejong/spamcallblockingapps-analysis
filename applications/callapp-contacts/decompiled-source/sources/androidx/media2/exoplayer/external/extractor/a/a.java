package androidx.media2.exoplayer.external.extractor.a;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.c;
import androidx.media2.exoplayer.external.extractor.g;
import androidx.media2.exoplayer.external.extractor.h;
import androidx.media2.exoplayer.external.extractor.i;
import androidx.media2.exoplayer.external.extractor.j;
import androidx.media2.exoplayer.external.extractor.n;
import androidx.media2.exoplayer.external.extractor.o;
import androidx.media2.exoplayer.external.extractor.q;
import androidx.media2.exoplayer.external.util.ac;
import com.mopub.mobileads.VastVideoViewController;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/a/a.class */
public final class a implements g {

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f3014c;
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
    private i r;
    private q s;
    private o t;
    private boolean u;

    /* renamed from: a  reason: collision with root package name */
    public static final j f3012a = b.f3016a;

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f3013b = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    /* renamed from: d  reason: collision with root package name */
    private static final byte[] f3015d = ac.c("#!AMR\n");
    private static final byte[] e = ac.c("#!AMR-WB\n");

    static {
        int[] iArr = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        f3014c = iArr;
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

    private static boolean a(h hVar, byte[] bArr) throws IOException, InterruptedException {
        hVar.a();
        byte[] bArr2 = new byte[bArr.length];
        hVar.c(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ g[] a() {
        return new g[]{new a()};
    }

    private boolean b(h hVar) throws IOException, InterruptedException {
        byte[] bArr = f3015d;
        if (a(hVar, bArr)) {
            this.i = false;
            hVar.b(bArr.length);
            return true;
        }
        byte[] bArr2 = e;
        if (!a(hVar, bArr2)) {
            return false;
        }
        this.i = true;
        hVar.b(bArr2.length);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0074, code lost:
        if ((!r0 && (r0 < 12 || r0 > 14)) != false) goto L_0x0077;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0082 A[Catch: EOFException -> 0x014f, TRY_ENTER, TryCatch #0 {EOFException -> 0x014f, blocks: (B:4:0x0007, B:11:0x0039, B:35:0x0082, B:40:0x0097, B:41:0x00d4, B:43:0x00d6, B:45:0x00dc, B:46:0x00e5, B:48:0x00ec, B:55:0x0127, B:56:0x014e), top: B:67:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int c(androidx.media2.exoplayer.external.extractor.h r9) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 424
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.a.a.c(androidx.media2.exoplayer.external.extractor.h):int");
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final int a(h hVar, n nVar) throws IOException, InterruptedException {
        int i;
        if (hVar.c() != 0 || b(hVar)) {
            if (!this.u) {
                this.u = true;
                boolean z = this.i;
                this.s.a(Format.createAudioSampleFormat(null, z ? "audio/amr-wb" : "audio/3gpp", null, -1, f, 1, z ? VastVideoViewController.MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON : 8000, -1, null, null, 0, null));
            }
            int c2 = c(hVar);
            long d2 = hVar.d();
            if (!this.m) {
                if ((this.h & 1) == 0 || d2 == -1 || !((i = this.o) == -1 || i == this.k)) {
                    o.b bVar = new o.b(-9223372036854775807L);
                    this.t = bVar;
                    this.r.a(bVar);
                    this.m = true;
                } else if (this.p >= 20 || c2 == -1) {
                    c cVar = new c(d2, this.n, (int) (((i * 8) * 1000000) / 20000), i);
                    this.t = cVar;
                    this.r.a(cVar);
                    this.m = true;
                }
            }
            return c2;
        }
        throw new ParserException("Could not find AMR header.");
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final void a(long j, long j2) {
        this.j = 0L;
        this.k = 0;
        this.l = 0;
        if (j != 0) {
            o oVar = this.t;
            if (oVar instanceof c) {
                this.q = ((c) oVar).b(j);
                return;
            }
        }
        this.q = 0L;
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final void a(i iVar) {
        this.r = iVar;
        this.s = iVar.a(0, 1);
        iVar.a();
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final boolean a(h hVar) throws IOException, InterruptedException {
        return b(hVar);
    }
}

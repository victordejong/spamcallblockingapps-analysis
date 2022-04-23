package androidx.media2.exoplayer.external.source.hls;

import android.net.Uri;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.extractor.g;
import androidx.media2.exoplayer.external.extractor.n;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.id3.PrivFrame;
import androidx.media2.exoplayer.external.metadata.id3.a;
import androidx.media2.exoplayer.external.source.a.d;
import androidx.media2.exoplayer.external.source.hls.f;
import androidx.media2.exoplayer.external.source.hls.playlist.f;
import androidx.media2.exoplayer.external.upstream.f;
import androidx.media2.exoplayer.external.util.ab;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.p;
import androidx.media2.exoplayer.external.util.z;
import java.io.EOFException;
import java.io.IOException;
import java.math.BigInteger;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/h.class */
public final class h extends d {
    private static final AtomicInteger o = new AtomicInteger();
    private final p A;
    private final boolean B;
    private final boolean C;
    private g D;
    private boolean E;
    private int F;
    private boolean G;
    private volatile boolean H;
    public final int j;
    public final int k;
    public final Uri l;
    k m;
    boolean n;
    private final f p;
    private final androidx.media2.exoplayer.external.upstream.h q;
    private final boolean r;
    private final boolean s;
    private final z t;
    private final boolean u;
    private final f v;
    private final List<Format> w;
    private final DrmInitData x;
    private final g y;
    private final a z;

    private h(f fVar, f fVar2, androidx.media2.exoplayer.external.upstream.h hVar, Format format, boolean z, f fVar3, androidx.media2.exoplayer.external.upstream.h hVar2, boolean z2, Uri uri, List<Format> list, int i, Object obj, long j, long j2, long j3, int i2, boolean z3, boolean z4, z zVar, DrmInitData drmInitData, g gVar, a aVar, p pVar, boolean z5) {
        super(fVar2, hVar, format, i, obj, j, j2, j3);
        this.B = z;
        this.k = i2;
        this.p = fVar3;
        this.q = hVar2;
        this.C = z2;
        this.l = uri;
        this.r = z4;
        this.t = zVar;
        this.s = z3;
        this.v = fVar;
        this.w = list;
        this.x = drmInitData;
        this.y = gVar;
        this.z = aVar;
        this.A = pVar;
        this.u = z5;
        this.G = hVar2 != null;
        this.j = o.getAndIncrement();
    }

    private long a(androidx.media2.exoplayer.external.extractor.h hVar) throws IOException, InterruptedException {
        hVar.a();
        try {
            hVar.c(this.A.f4166a, 0, 10);
            this.A.a(10);
            if (this.A.f() != 4801587) {
                return -9223372036854775807L;
            }
            this.A.d(3);
            int m = this.A.m();
            int i = m + 10;
            if (i > this.A.f4166a.length) {
                byte[] bArr = this.A.f4166a;
                this.A.a(i);
                System.arraycopy(bArr, 0, this.A.f4166a, 0, 10);
            }
            hVar.c(this.A.f4166a, 10, m);
            Metadata a2 = this.z.a(this.A.f4166a, m);
            if (a2 == null) {
                return -9223372036854775807L;
            }
            int length = a2.length();
            for (int i2 = 0; i2 < length; i2++) {
                Metadata.Entry entry = a2.get(i2);
                if (entry instanceof PrivFrame) {
                    PrivFrame privFrame = (PrivFrame) entry;
                    if ("com.apple.streaming.transportStreamTimestamp".equals(privFrame.owner)) {
                        System.arraycopy(privFrame.privateData, 0, this.A.f4166a, 0, 8);
                        this.A.a(8);
                        return this.A.k() & 8589934591L;
                    }
                }
            }
            return -9223372036854775807L;
        } catch (EOFException e) {
            return -9223372036854775807L;
        }
    }

    private androidx.media2.exoplayer.external.extractor.d a(f fVar, androidx.media2.exoplayer.external.upstream.h hVar) throws IOException, InterruptedException {
        androidx.media2.exoplayer.external.extractor.d dVar = new androidx.media2.exoplayer.external.extractor.d(fVar, hVar.e, fVar.a(hVar));
        if (this.D == null) {
            long a2 = a(dVar);
            dVar.f3076a = 0;
            f fVar2 = this.v;
            g gVar = this.y;
            Uri uri = hVar.f4064a;
            Format format = this.f3500c;
            List<Format> list = this.w;
            DrmInitData drmInitData = this.x;
            z zVar = this.t;
            fVar.b();
            f.a a3 = fVar2.a(gVar, uri, format, list, drmInitData, zVar, dVar);
            this.D = a3.f3657a;
            this.E = a3.f3659c;
            if (a3.f3658b) {
                this.m.b(a2 != -9223372036854775807L ? this.t.b(a2) : this.f);
            }
            this.m.a(this.j, this.u, false);
            this.D.a(this.m);
        }
        return dVar;
    }

    public static h a(f fVar, androidx.media2.exoplayer.external.upstream.f fVar2, Format format, long j, androidx.media2.exoplayer.external.source.hls.playlist.f fVar3, int i, Uri uri, List<Format> list, int i2, Object obj, boolean z, o oVar, h hVar, byte[] bArr, byte[] bArr2) {
        boolean z2;
        androidx.media2.exoplayer.external.upstream.h hVar2;
        androidx.media2.exoplayer.external.upstream.f fVar4;
        boolean z3;
        p pVar;
        g gVar;
        a aVar;
        f.a aVar2 = fVar3.l.get(i);
        androidx.media2.exoplayer.external.upstream.h hVar3 = new androidx.media2.exoplayer.external.upstream.h(ab.a(fVar3.n, aVar2.f3710a), aVar2.j, aVar2.k, null);
        boolean z4 = bArr != null;
        androidx.media2.exoplayer.external.upstream.f a2 = a(fVar2, bArr, z4 ? a(aVar2.i) : null);
        f.a aVar3 = aVar2.f3711b;
        if (aVar3 != null) {
            boolean z5 = bArr2 != null;
            byte[] a3 = z5 ? a(aVar3.i) : null;
            hVar2 = new androidx.media2.exoplayer.external.upstream.h(ab.a(fVar3.n, aVar3.f3710a), aVar3.j, aVar3.k, null);
            fVar4 = a(fVar2, bArr2, a3);
            z2 = z5;
        } else {
            hVar2 = null;
            z2 = false;
            fVar4 = null;
        }
        long j2 = j + aVar2.f;
        long j3 = aVar2.f3712c;
        int i3 = fVar3.e + aVar2.e;
        if (hVar != null) {
            aVar = hVar.z;
            pVar = hVar.A;
            z3 = !uri.equals(hVar.l) || !hVar.n;
            gVar = (!hVar.E || hVar.k != i3 || z3) ? null : hVar.D;
        } else {
            aVar = new a();
            pVar = new p(10);
            gVar = null;
            z3 = false;
        }
        long j4 = fVar3.f;
        long j5 = i;
        boolean z6 = aVar2.l;
        z zVar = oVar.f3676a.get(i3);
        z zVar2 = zVar;
        if (zVar == null) {
            zVar2 = new z(Long.MAX_VALUE);
            oVar.f3676a.put(i3, zVar2);
        }
        return new h(fVar, a2, hVar3, format, z4, fVar4, hVar2, z2, uri, list, i2, obj, j2, j2 + j3, j4 + j5, i3, z6, z, zVar2, aVar2.g, gVar, aVar, pVar, z3);
    }

    private static androidx.media2.exoplayer.external.upstream.f a(androidx.media2.exoplayer.external.upstream.f fVar, byte[] bArr, byte[] bArr2) {
        return bArr != null ? new a(fVar, bArr, bArr2) : fVar;
    }

    private void a(androidx.media2.exoplayer.external.upstream.f fVar, androidx.media2.exoplayer.external.upstream.h hVar, boolean z) throws IOException, InterruptedException {
        androidx.media2.exoplayer.external.upstream.h hVar2;
        boolean z2;
        if (z) {
            z2 = this.F != 0;
            hVar2 = hVar;
        } else {
            hVar2 = hVar.a(this.F);
            z2 = false;
        }
        try {
            androidx.media2.exoplayer.external.extractor.d a2 = a(fVar, hVar2);
            int i = 0;
            if (z2) {
                a2.b(this.F);
                i = 0;
            }
            while (i == 0 && !this.H) {
                i = this.D.a(a2, (n) null);
            }
            this.F = (int) (a2.c() - hVar.e);
        } finally {
            ac.a(fVar);
        }
    }

    private static byte[] a(String str) {
        String str2 = str;
        if (ac.d(str).startsWith("0x")) {
            str2 = str.substring(2);
        }
        byte[] byteArray = new BigInteger(str2, 16).toByteArray();
        byte[] bArr = new byte[16];
        int length = byteArray.length > 16 ? byteArray.length - 16 : 0;
        System.arraycopy(byteArray, length, bArr, (16 - byteArray.length) + length, byteArray.length - length);
        return bArr;
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.d
    public final void a() {
        this.H = true;
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.d
    public final void b() throws IOException, InterruptedException {
        g gVar;
        if (this.D == null && (gVar = this.y) != null) {
            this.D = gVar;
            this.E = true;
            this.G = false;
            this.m.a(this.j, this.u, true);
        }
        if (this.G) {
            a(this.p, this.q, this.C);
            this.F = 0;
            this.G = false;
        }
        if (!this.H) {
            if (!this.s) {
                if (!this.r) {
                    this.t.b();
                } else if (this.t.f4191a == Long.MAX_VALUE) {
                    this.t.a(this.f);
                }
                a(this.h, this.f3498a, this.B);
            }
            this.n = true;
        }
    }
}

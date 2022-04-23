package com.google.android.exoplayer2.extractor.h;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.h.ad;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.t;
import com.google.android.exoplayer2.util.u;
import java.util.Arrays;
import java.util.Collections;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/l.class */
public final class l implements j {

    /* renamed from: a  reason: collision with root package name */
    private static final float[] f21210a = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};

    /* renamed from: b  reason: collision with root package name */
    private final af f21211b;

    /* renamed from: c  reason: collision with root package name */
    private final u f21212c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean[] f21213d;
    private final a e;
    private final r f;
    private b g;
    private long h;
    private String i;
    private x j;
    private boolean k;
    private long l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/l$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final byte[] f21214a = {0, 0, 1};

        /* renamed from: b  reason: collision with root package name */
        boolean f21215b;

        /* renamed from: c  reason: collision with root package name */
        int f21216c;

        /* renamed from: d  reason: collision with root package name */
        public int f21217d;
        public int e;
        public byte[] f;

        public a(int i) {
            this.f = new byte[i];
        }

        public final void a() {
            this.f21215b = false;
            this.f21217d = 0;
            this.f21216c = 0;
        }

        public final void a(byte[] bArr, int i, int i2) {
            if (this.f21215b) {
                int i3 = i2 - i;
                byte[] bArr2 = this.f;
                int length = bArr2.length;
                int i4 = this.f21217d;
                if (length < i4 + i3) {
                    this.f = Arrays.copyOf(bArr2, (i4 + i3) * 2);
                }
                System.arraycopy(bArr, i, this.f, this.f21217d, i3);
                this.f21217d += i3;
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/l$b.class */
    static final class b {

        /* renamed from: a  reason: collision with root package name */
        final x f21218a;

        /* renamed from: b  reason: collision with root package name */
        boolean f21219b;

        /* renamed from: c  reason: collision with root package name */
        boolean f21220c;

        /* renamed from: d  reason: collision with root package name */
        boolean f21221d;
        int e;
        int f;
        long g;
        long h;

        public b(x xVar) {
            this.f21218a = xVar;
        }

        public final void a(byte[] bArr, int i, int i2) {
            if (this.f21220c) {
                int i3 = this.f;
                int i4 = (i + 1) - i3;
                if (i4 < i2) {
                    this.f21221d = ((bArr[i4] & 192) >> 6) == 0;
                    this.f21220c = false;
                    return;
                }
                this.f = i3 + (i2 - i);
            }
        }
    }

    public l() {
        this(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(af afVar) {
        this.f21211b = afVar;
        this.f21213d = new boolean[4];
        this.e = new a(128);
        if (afVar != null) {
            this.f = new r(178, 128);
            this.f21212c = new u();
            return;
        }
        this.f = null;
        this.f21212c = null;
    }

    private static Format a(a aVar, int i, String str) {
        float f;
        byte[] copyOf = Arrays.copyOf(aVar.f, aVar.f21217d);
        t tVar = new t(copyOf);
        tVar.d(i);
        tVar.d(4);
        tVar.d();
        tVar.b(8);
        if (tVar.e()) {
            tVar.b(4);
            tVar.b(3);
        }
        int c2 = tVar.c(4);
        if (c2 == 15) {
            int c3 = tVar.c(8);
            int c4 = tVar.c(8);
            if (c4 != 0) {
                f = c3 / c4;
            }
            n.a("H263Reader", "Invalid aspect ratio");
            f = 1.0f;
        } else {
            float[] fArr = f21210a;
            if (c2 < fArr.length) {
                f = fArr[c2];
            }
            n.a("H263Reader", "Invalid aspect ratio");
            f = 1.0f;
        }
        if (tVar.e()) {
            tVar.b(2);
            tVar.b(1);
            if (tVar.e()) {
                tVar.b(15);
                tVar.d();
                tVar.b(15);
                tVar.d();
                tVar.b(15);
                tVar.d();
                tVar.b(3);
                tVar.b(11);
                tVar.d();
                tVar.b(15);
                tVar.d();
            }
        }
        if (tVar.c(2) != 0) {
            n.a("H263Reader", "Unhandled video object layer shape");
        }
        tVar.d();
        int c5 = tVar.c(16);
        tVar.d();
        if (tVar.e()) {
            if (c5 == 0) {
                n.a("H263Reader", "Invalid vop_increment_time_resolution");
            } else {
                int i2 = 0;
                for (int i3 = c5 - 1; i3 > 0; i3 >>= 1) {
                    i2++;
                }
                tVar.b(i2);
            }
        }
        tVar.d();
        int c6 = tVar.c(13);
        tVar.d();
        int c7 = tVar.c(13);
        tVar.d();
        tVar.d();
        Format.a aVar2 = new Format.a();
        aVar2.f20603a = str;
        aVar2.k = "video/mp4v-es";
        aVar2.p = c6;
        aVar2.q = c7;
        aVar2.t = f;
        aVar2.m = Collections.singletonList(copyOf);
        return aVar2.a();
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a() {
        s.a(this.f21213d);
        this.e.a();
        b bVar = this.g;
        if (bVar != null) {
            bVar.f21219b = false;
            bVar.f21220c = false;
            bVar.f21221d = false;
            bVar.e = -1;
        }
        r rVar = this.f;
        if (rVar != null) {
            rVar.a();
        }
        this.h = 0L;
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a(long j, int i) {
        this.l = j;
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a(j jVar, ad.d dVar) {
        dVar.a();
        this.i = dVar.c();
        x a2 = jVar.a(dVar.b(), 2);
        this.j = a2;
        this.g = new b(a2);
        af afVar = this.f21211b;
        if (afVar != null) {
            afVar.a(jVar, dVar);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x01b3  */
    @Override // com.google.android.exoplayer2.extractor.h.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.google.android.exoplayer2.util.u r9) {
        /*
            Method dump skipped, instructions count: 844
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.h.l.a(com.google.android.exoplayer2.util.u):void");
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void b() {
    }
}

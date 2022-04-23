package com.google.android.exoplayer2.extractor.h;

import com.google.android.exoplayer2.extractor.h.ad;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.u;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/k.class */
public final class k implements j {

    /* renamed from: c  reason: collision with root package name */
    private static final double[] f21202c = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    /* renamed from: a  reason: collision with root package name */
    private String f21203a;

    /* renamed from: b  reason: collision with root package name */
    private x f21204b;

    /* renamed from: d  reason: collision with root package name */
    private final af f21205d;
    private final u e;
    private final r f;
    private final boolean[] g;
    private final a h;
    private long i;
    private boolean j;
    private boolean k;
    private long l;
    private long m;
    private long n;
    private long o;
    private boolean p;
    private boolean q;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/k$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final byte[] f21206a = {0, 0, 1};

        /* renamed from: b  reason: collision with root package name */
        boolean f21207b;

        /* renamed from: c  reason: collision with root package name */
        public int f21208c;

        /* renamed from: d  reason: collision with root package name */
        public int f21209d;
        public byte[] e;

        public a(int i) {
            this.e = new byte[i];
        }

        public final void a(byte[] bArr, int i, int i2) {
            if (this.f21207b) {
                int i3 = i2 - i;
                byte[] bArr2 = this.e;
                int length = bArr2.length;
                int i4 = this.f21208c;
                if (length < i4 + i3) {
                    this.e = Arrays.copyOf(bArr2, (i4 + i3) * 2);
                }
                System.arraycopy(bArr, i, this.e, this.f21208c, i3);
                this.f21208c += i3;
            }
        }
    }

    public k() {
        this(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(af afVar) {
        this.f21205d = afVar;
        this.g = new boolean[4];
        this.h = new a(128);
        if (afVar != null) {
            this.f = new r(178, 128);
            this.e = new u();
            return;
        }
        this.f = null;
        this.e = null;
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a() {
        s.a(this.g);
        a aVar = this.h;
        aVar.f21207b = false;
        aVar.f21208c = 0;
        aVar.f21209d = 0;
        r rVar = this.f;
        if (rVar != null) {
            rVar.a();
        }
        this.i = 0L;
        this.j = false;
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a(long j, int i) {
        this.m = j;
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a(j jVar, ad.d dVar) {
        dVar.a();
        this.f21203a = dVar.c();
        this.f21204b = jVar.a(dVar.b(), 2);
        af afVar = this.f21205d;
        if (afVar != null) {
            afVar.a(jVar, dVar);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x021b  */
    @Override // com.google.android.exoplayer2.extractor.h.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.google.android.exoplayer2.util.u r9) {
        /*
            Method dump skipped, instructions count: 1051
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.h.k.a(com.google.android.exoplayer2.util.u):void");
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void b() {
    }
}

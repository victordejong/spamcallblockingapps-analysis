package com.google.android.exoplayer2.extractor.h;

import android.util.SparseArray;
import com.google.android.exoplayer2.extractor.h.ad;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.u;
import com.google.android.exoplayer2.util.v;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/m.class */
public final class m implements j {

    /* renamed from: a  reason: collision with root package name */
    private final z f21222a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f21223b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f21224c;
    private long g;
    private String i;
    private x j;
    private a k;
    private boolean l;
    private long m;
    private boolean n;
    private final boolean[] h = new boolean[3];

    /* renamed from: d  reason: collision with root package name */
    private final r f21225d = new r(7, 128);
    private final r e = new r(8, 128);
    private final r f = new r(6, 128);
    private final u o = new u();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/m$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final x f21226a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f21227b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f21228c;

        /* renamed from: d  reason: collision with root package name */
        int f21229d;
        int e;
        long f;
        boolean g;
        long h;
        boolean k;
        long l;
        long m;
        boolean n;
        private final v q;
        private byte[] r;
        private final SparseArray<s.b> o = new SparseArray<>();
        private final SparseArray<s.a> p = new SparseArray<>();
        C0430a i = new C0430a();
        C0430a j = new C0430a();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.google.android.exoplayer2.extractor.h.m$a$a  reason: collision with other inner class name */
        /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/m$a$a.class */
        public static final class C0430a {

            /* renamed from: a  reason: collision with root package name */
            boolean f21230a;

            /* renamed from: b  reason: collision with root package name */
            boolean f21231b;

            /* renamed from: c  reason: collision with root package name */
            s.b f21232c;

            /* renamed from: d  reason: collision with root package name */
            int f21233d;
            int e;
            int f;
            int g;
            boolean h;
            boolean i;
            boolean j;
            boolean k;
            int l;
            int m;
            int n;
            int o;
            int p;

            private C0430a() {
            }

            public final void a() {
                this.f21231b = false;
                this.f21230a = false;
            }

            public final void a(int i) {
                this.e = i;
                this.f21231b = true;
            }

            public final void a(s.b bVar, int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, boolean z4, int i5, int i6, int i7, int i8, int i9) {
                this.f21232c = bVar;
                this.f21233d = i;
                this.e = i2;
                this.f = i3;
                this.g = i4;
                this.h = z;
                this.i = z2;
                this.j = z3;
                this.k = z4;
                this.l = i5;
                this.m = i6;
                this.n = i7;
                this.o = i8;
                this.p = i9;
                this.f21230a = true;
                this.f21231b = true;
            }
        }

        public a(x xVar, boolean z, boolean z2) {
            this.f21226a = xVar;
            this.f21227b = z;
            this.f21228c = z2;
            byte[] bArr = new byte[128];
            this.r = bArr;
            this.q = new v(bArr, 0, 0);
            a();
        }

        public final void a() {
            this.g = false;
            this.k = false;
            this.j.a();
        }

        public final void a(s.a aVar) {
            this.p.append(aVar.f22324a, aVar);
        }

        public final void a(s.b bVar) {
            this.o.append(bVar.f22330d, bVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:52:0x018d  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x0193  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x019b  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x01b2  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x01bd  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x01ff  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a(byte[] r17, int r18, int r19) {
            /*
                Method dump skipped, instructions count: 643
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.h.m.a.a(byte[], int, int):void");
        }
    }

    public m(z zVar, boolean z, boolean z2) {
        this.f21222a = zVar;
        this.f21223b = z;
        this.f21224c = z2;
    }

    @RequiresNonNull({"sampleReader"})
    private void a(byte[] bArr, int i, int i2) {
        if (!this.l || this.k.f21228c) {
            this.f21225d.a(bArr, i, i2);
            this.e.a(bArr, i, i2);
        }
        this.f.a(bArr, i, i2);
        this.k.a(bArr, i, i2);
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a() {
        this.g = 0L;
        this.n = false;
        s.a(this.h);
        this.f21225d.a();
        this.e.a();
        this.f.a();
        a aVar = this.k;
        if (aVar != null) {
            aVar.a();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a(long j, int i) {
        this.m = j;
        this.n |= (i & 2) != 0;
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a(j jVar, ad.d dVar) {
        dVar.a();
        this.i = dVar.c();
        x a2 = jVar.a(dVar.b(), 2);
        this.j = a2;
        this.k = new a(a2, this.f21223b, this.f21224c);
        this.f21222a.a(jVar, dVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0312, code lost:
        if (r0.j == r0.j) goto L_0x0315;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x032f, code lost:
        if (r0.f21233d != 0) goto L_0x0332;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0359, code lost:
        if (r0.n == r0.n) goto L_0x035c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0385, code lost:
        if (r0.p == r0.p) goto L_0x0388;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x03a7, code lost:
        if (r0.l == r0.l) goto L_0x03ad;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x03b0, code lost:
        if (r10 == false) goto L_0x0420;
     */
    /* JADX WARN: Removed duplicated region for block: B:112:0x048c  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0428  */
    @Override // com.google.android.exoplayer2.extractor.h.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.google.android.exoplayer2.util.u r9) {
        /*
            Method dump skipped, instructions count: 1353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.h.m.a(com.google.android.exoplayer2.util.u):void");
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void b() {
    }
}

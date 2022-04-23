package com.google.android.exoplayer2.extractor.h;

import com.google.android.exoplayer2.extractor.h.ad;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.u;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/n.class */
public final class n implements j {

    /* renamed from: a  reason: collision with root package name */
    private final z f21234a;

    /* renamed from: b  reason: collision with root package name */
    private String f21235b;

    /* renamed from: c  reason: collision with root package name */
    private x f21236c;

    /* renamed from: d  reason: collision with root package name */
    private a f21237d;
    private boolean e;
    private long l;
    private long m;
    private final boolean[] f = new boolean[3];
    private final r g = new r(32, 128);
    private final r h = new r(33, 128);
    private final r i = new r(34, 128);
    private final r j = new r(39, 128);
    private final r k = new r(40, 128);
    private final u n = new u();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/n$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        long f21238a;

        /* renamed from: b  reason: collision with root package name */
        boolean f21239b;

        /* renamed from: c  reason: collision with root package name */
        int f21240c;

        /* renamed from: d  reason: collision with root package name */
        long f21241d;
        boolean e;
        boolean f;
        boolean g;
        boolean h;
        boolean i;
        long j;
        long k;
        boolean l;
        private final x m;

        public a(x xVar) {
            this.m = xVar;
        }

        final void a(int i) {
            boolean z = this.l;
            this.m.a(this.k, z ? 1 : 0, (int) (this.f21238a - this.j), i, null);
        }

        public final void a(byte[] bArr, int i, int i2) {
            if (this.e) {
                int i3 = this.f21240c;
                int i4 = (i + 2) - i3;
                if (i4 < i2) {
                    this.f = (bArr[i4] & 128) != 0;
                    this.e = false;
                    return;
                }
                this.f21240c = i3 + (i2 - i);
            }
        }
    }

    public n(z zVar) {
        this.f21234a = zVar;
    }

    @RequiresNonNull({"sampleReader"})
    private void a(byte[] bArr, int i, int i2) {
        this.f21237d.a(bArr, i, i2);
        if (!this.e) {
            this.g.a(bArr, i, i2);
            this.h.a(bArr, i, i2);
            this.i.a(bArr, i, i2);
        }
        this.j.a(bArr, i, i2);
        this.k.a(bArr, i, i2);
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a() {
        this.l = 0L;
        s.a(this.f);
        this.g.a();
        this.h.a();
        this.i.a();
        this.j.a();
        this.k.a();
        a aVar = this.f21237d;
        if (aVar != null) {
            aVar.e = false;
            aVar.f = false;
            aVar.g = false;
            aVar.h = false;
            aVar.i = false;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a(long j, int i) {
        this.m = j;
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void a(j jVar, ad.d dVar) {
        dVar.a();
        this.f21235b = dVar.c();
        x a2 = jVar.a(dVar.b(), 2);
        this.f21236c = a2;
        this.f21237d = new a(a2);
        this.f21234a.a(jVar, dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:171:0x0630  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0672  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x06f0  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x078a  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x07a5 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.google.android.exoplayer2.extractor.h.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.google.android.exoplayer2.util.u r7) {
        /*
            Method dump skipped, instructions count: 1987
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.h.n.a(com.google.android.exoplayer2.util.u):void");
    }

    @Override // com.google.android.exoplayer2.extractor.h.j
    public final void b() {
    }
}

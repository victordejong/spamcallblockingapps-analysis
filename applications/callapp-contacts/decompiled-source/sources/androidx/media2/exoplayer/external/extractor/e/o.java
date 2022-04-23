package androidx.media2.exoplayer.external.extractor.e;

import android.util.SparseArray;
import androidx.media2.exoplayer.external.extractor.e.ah;
import androidx.media2.exoplayer.external.extractor.i;
import androidx.media2.exoplayer.external.extractor.q;
import androidx.media2.exoplayer.external.util.n;
import androidx.media2.exoplayer.external.util.p;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/o.class */
public final class o implements m {

    /* renamed from: a  reason: collision with root package name */
    private final ab f3226a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f3227b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f3228c;
    private long g;
    private String i;
    private q j;
    private a k;
    private boolean l;
    private long m;
    private boolean n;
    private final boolean[] h = new boolean[3];

    /* renamed from: d  reason: collision with root package name */
    private final t f3229d = new t(7, 128);
    private final t e = new t(8, 128);
    private final t f = new t(6, 128);
    private final p o = new p();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/o$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final q f3230a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f3231b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f3232c;

        /* renamed from: d  reason: collision with root package name */
        int f3233d;
        int e;
        long f;
        boolean g;
        long h;
        boolean k;
        long l;
        long m;
        boolean n;
        private final androidx.media2.exoplayer.external.util.q q;
        private byte[] r;
        private final SparseArray<n.b> o = new SparseArray<>();
        private final SparseArray<n.a> p = new SparseArray<>();
        C0080a i = new C0080a();
        C0080a j = new C0080a();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.media2.exoplayer.external.extractor.e.o$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/o$a$a.class */
        public static final class C0080a {

            /* renamed from: a  reason: collision with root package name */
            boolean f3234a;

            /* renamed from: b  reason: collision with root package name */
            boolean f3235b;

            /* renamed from: c  reason: collision with root package name */
            n.b f3236c;

            /* renamed from: d  reason: collision with root package name */
            int f3237d;
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

            private C0080a() {
            }

            public final void a() {
                this.f3235b = false;
                this.f3234a = false;
            }

            public final void a(int i) {
                this.e = i;
                this.f3235b = true;
            }

            public final void a(n.b bVar, int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, boolean z4, int i5, int i6, int i7, int i8, int i9) {
                this.f3236c = bVar;
                this.f3237d = i;
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
                this.f3234a = true;
                this.f3235b = true;
            }
        }

        public a(q qVar, boolean z, boolean z2) {
            this.f3230a = qVar;
            this.f3231b = z;
            this.f3232c = z2;
            byte[] bArr = new byte[128];
            this.r = bArr;
            this.q = new androidx.media2.exoplayer.external.util.q(bArr, 0, 0);
            a();
        }

        public final void a() {
            this.g = false;
            this.k = false;
            this.j.a();
        }

        public final void a(n.a aVar) {
            this.p.append(aVar.f4155a, aVar);
        }

        public final void a(n.b bVar) {
            this.o.append(bVar.f4161d, bVar);
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
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.e.o.a.a(byte[], int, int):void");
        }
    }

    public o(ab abVar, boolean z, boolean z2) {
        this.f3226a = abVar;
        this.f3227b = z;
        this.f3228c = z2;
    }

    private void a(byte[] bArr, int i, int i2) {
        if (!this.l || this.k.f3232c) {
            this.f3229d.a(bArr, i, i2);
            this.e.a(bArr, i, i2);
        }
        this.f.a(bArr, i, i2);
        this.k.a(bArr, i, i2);
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a() {
        n.a(this.h);
        this.f3229d.a();
        this.e.a();
        this.f.a();
        this.k.a();
        this.g = 0L;
        this.n = false;
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a(long j, int i) {
        this.m = j;
        this.n |= (i & 2) != 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a(i iVar, ah.d dVar) {
        dVar.a();
        this.i = dVar.c();
        q a2 = iVar.a(dVar.b(), 2);
        this.j = a2;
        this.k = new a(a2, this.f3227b, this.f3228c);
        this.f3226a.a(iVar, dVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:87:0x0367, code lost:
        if ((r0.f3234a && !(r0.f3234a && r0.f == r0.f && r0.g == r0.g && r0.h == r0.h && ((!r0.i || !r0.i || r0.j == r0.j) && ((r0.f3237d == r0.f3237d || (r0.f3237d != 0 && r0.f3237d != 0)) && ((r0.f3236c.k != 0 || r0.f3236c.k != 0 || (r0.m == r0.m && r0.n == r0.n)) && ((r0.f3236c.k != 1 || r0.f3236c.k != 1 || (r0.o == r0.o && r0.p == r0.p)) && r0.k == r0.k && (!r0.k || !r0.k || r0.l == r0.l))))))) != false) goto L_0x036a;
     */
    /* JADX WARN: Removed duplicated region for block: B:114:0x043a  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x03d6  */
    @Override // androidx.media2.exoplayer.external.extractor.e.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(androidx.media2.exoplayer.external.util.p r15) {
        /*
            Method dump skipped, instructions count: 1271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.e.o.a(androidx.media2.exoplayer.external.util.p):void");
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void b() {
    }
}

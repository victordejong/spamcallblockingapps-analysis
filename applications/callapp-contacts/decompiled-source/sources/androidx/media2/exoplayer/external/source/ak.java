package androidx.media2.exoplayer.external.source;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.h;
import androidx.media2.exoplayer.external.extractor.q;
import androidx.media2.exoplayer.external.source.aj;
import androidx.media2.exoplayer.external.util.p;
import java.io.EOFException;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ak.class */
public class ak implements q {

    /* renamed from: a  reason: collision with root package name */
    public final aj f3578a = new aj();

    /* renamed from: b  reason: collision with root package name */
    final aj.a f3579b = new aj.a();

    /* renamed from: c  reason: collision with root package name */
    final p f3580c = new p(32);

    /* renamed from: d  reason: collision with root package name */
    Format f3581d;
    public boolean e;
    public b f;
    private final androidx.media2.exoplayer.external.upstream.b g;
    private final int h;
    private a i;
    private a j;
    private a k;
    private boolean l;
    private Format m;
    private long n;
    private long o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ak$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f3582a;

        /* renamed from: b  reason: collision with root package name */
        public final long f3583b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f3584c;

        /* renamed from: d  reason: collision with root package name */
        public androidx.media2.exoplayer.external.upstream.a f3585d;
        public a e;

        public a(long j, int i) {
            this.f3582a = j;
            this.f3583b = j + i;
        }

        public final int a(long j) {
            return ((int) (j - this.f3582a)) + this.f3585d.f4051b;
        }

        public final a a() {
            this.f3585d = null;
            a aVar = this.e;
            this.e = null;
            return aVar;
        }

        public final void a(androidx.media2.exoplayer.external.upstream.a aVar, a aVar2) {
            this.f3585d = aVar;
            this.e = aVar2;
            this.f3584c = true;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ak$b.class */
    public interface b {
        void i();
    }

    public ak(androidx.media2.exoplayer.external.upstream.b bVar) {
        this.g = bVar;
        int c2 = bVar.c();
        this.h = c2;
        a aVar = new a(0L, c2);
        this.i = aVar;
        this.j = aVar;
        this.k = aVar;
    }

    private void a(a aVar) {
        if (aVar.f3584c) {
            int i = (this.k.f3584c ? 1 : 0) + (((int) (this.k.f3582a - aVar.f3582a)) / this.h);
            androidx.media2.exoplayer.external.upstream.a[] aVarArr = new androidx.media2.exoplayer.external.upstream.a[i];
            for (int i2 = 0; i2 < i; i2++) {
                aVarArr[i2] = aVar.f3585d;
                aVar = aVar.a();
            }
            this.g.a(aVarArr);
        }
    }

    private int b(int i) {
        if (!this.k.f3584c) {
            this.k.a(this.g.a(), new a(this.k.f3583b, this.h));
        }
        return Math.min(i, (int) (this.k.f3583b - this.o));
    }

    private void b(long j) {
        while (j >= this.j.f3583b) {
            this.j = this.j.e;
        }
    }

    private void c(int i) {
        long j = this.o + i;
        this.o = j;
        if (j == this.k.f3583b) {
            this.k = this.k.e;
        }
    }

    private void c(long j) {
        if (j != -1) {
            while (j >= this.i.f3583b) {
                this.g.a(this.i.f3585d);
                this.i = this.i.a();
            }
            if (this.j.f3582a < this.i.f3582a) {
                this.j = this.i;
            }
        }
    }

    public final int a() {
        aj ajVar = this.f3578a;
        return ajVar.c() ? ajVar.f3571a[ajVar.a(ajVar.f3572b)] : ajVar.f3573c;
    }

    public final int a(long j, boolean z) {
        return this.f3578a.a(j, true, z);
    }

    @Override // androidx.media2.exoplayer.external.extractor.q
    public final int a(h hVar, int i, boolean z) throws IOException, InterruptedException {
        int a2 = hVar.a(this.k.f3585d.f4050a, this.k.a(this.o), b(i));
        if (a2 != -1) {
            c(a2);
            return a2;
        } else if (z) {
            return -1;
        } else {
            throw new EOFException();
        }
    }

    public final void a(int i) {
        this.f3578a.f3573c = i;
    }

    public final void a(long j) {
        if (this.n != j) {
            this.n = j;
            this.l = true;
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.q
    public final void a(long j, int i, int i2, int i3, q.a aVar) {
        if (this.l) {
            a(this.m);
        }
        long j2 = j + this.n;
        if (this.e) {
            if ((i & 1) != 0 && this.f3578a.a(j2)) {
                this.e = false;
            } else {
                return;
            }
        }
        this.f3578a.a(j2, i, (this.o - i2) - i3, i2, aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(long r7, java.nio.ByteBuffer r9, int r10) {
        /*
            r6 = this;
            r0 = r6
            r1 = r7
            r0.b(r1)
        L_0x0005:
            r0 = r10
            if (r0 <= 0) goto L_0x006b
            r0 = r10
            r1 = r6
            androidx.media2.exoplayer.external.source.ak$a r1 = r1.j
            long r1 = r1.f3583b
            r2 = r7
            long r1 = r1 - r2
            int r1 = (int) r1
            int r0 = java.lang.Math.min(r0, r1)
            r11 = r0
            r0 = r9
            r1 = r6
            androidx.media2.exoplayer.external.source.ak$a r1 = r1.j
            androidx.media2.exoplayer.external.upstream.a r1 = r1.f3585d
            byte[] r1 = r1.f4050a
            r2 = r6
            androidx.media2.exoplayer.external.source.ak$a r2 = r2.j
            r3 = r7
            int r2 = r2.a(r3)
            r3 = r11
            java.nio.ByteBuffer r0 = r0.put(r1, r2, r3)
            r0 = r10
            r1 = r11
            int r0 = r0 - r1
            r12 = r0
            r0 = r7
            r1 = r11
            long r1 = (long) r1
            long r0 = r0 + r1
            r13 = r0
            r0 = r13
            r7 = r0
            r0 = r12
            r10 = r0
            r0 = r13
            r1 = r6
            androidx.media2.exoplayer.external.source.ak$a r1 = r1.j
            long r1 = r1.f3583b
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0005
            r0 = r6
            r1 = r6
            androidx.media2.exoplayer.external.source.ak$a r1 = r1.j
            androidx.media2.exoplayer.external.source.ak$a r1 = r1.e
            r0.j = r1
            r0 = r13
            r7 = r0
            r0 = r12
            r10 = r0
            goto L_0x0005
        L_0x006b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.ak.a(long, java.nio.ByteBuffer, int):void");
    }

    public final void a(long j, boolean z, boolean z2) {
        c(this.f3578a.b(j, z, z2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(long r7, byte[] r9, int r10) {
        /*
            r6 = this;
            r0 = r6
            r1 = r7
            r0.b(r1)
            r0 = r10
            r11 = r0
        L_0x0009:
            r0 = r11
            if (r0 <= 0) goto L_0x0073
            r0 = r11
            r1 = r6
            androidx.media2.exoplayer.external.source.ak$a r1 = r1.j
            long r1 = r1.f3583b
            r2 = r7
            long r1 = r1 - r2
            int r1 = (int) r1
            int r0 = java.lang.Math.min(r0, r1)
            r12 = r0
            r0 = r6
            androidx.media2.exoplayer.external.source.ak$a r0 = r0.j
            androidx.media2.exoplayer.external.upstream.a r0 = r0.f3585d
            byte[] r0 = r0.f4050a
            r1 = r6
            androidx.media2.exoplayer.external.source.ak$a r1 = r1.j
            r2 = r7
            int r1 = r1.a(r2)
            r2 = r9
            r3 = r10
            r4 = r11
            int r3 = r3 - r4
            r4 = r12
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            r0 = r11
            r1 = r12
            int r0 = r0 - r1
            r13 = r0
            r0 = r7
            r1 = r12
            long r1 = (long) r1
            long r0 = r0 + r1
            r14 = r0
            r0 = r13
            r11 = r0
            r0 = r14
            r7 = r0
            r0 = r14
            r1 = r6
            androidx.media2.exoplayer.external.source.ak$a r1 = r1.j
            long r1 = r1.f3583b
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0009
            r0 = r6
            r1 = r6
            androidx.media2.exoplayer.external.source.ak$a r1 = r1.j
            androidx.media2.exoplayer.external.source.ak$a r1 = r1.e
            r0.j = r1
            r0 = r13
            r11 = r0
            r0 = r14
            r7 = r0
            goto L_0x0009
        L_0x0073:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.ak.a(long, byte[], int):void");
    }

    @Override // androidx.media2.exoplayer.external.extractor.q
    public void a(Format format) {
        long j = this.n;
        boolean b2 = this.f3578a.b(format == null ? null : (j == 0 || format.subsampleOffsetUs == Long.MAX_VALUE) ? format : format.copyWithSubsampleOffsetUs(format.subsampleOffsetUs + j));
        this.m = format;
        this.l = false;
        b bVar = this.f;
        if (bVar != null && b2) {
            bVar.i();
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.q
    public final void a(p pVar, int i) {
        while (i > 0) {
            int b2 = b(i);
            pVar.a(this.k.f3585d.f4050a, this.k.a(this.o), b2);
            i -= b2;
            c(b2);
        }
    }

    public final void a(boolean z) {
        this.f3578a.a(z);
        a(this.i);
        a aVar = new a(0L, this.h);
        this.i = aVar;
        this.j = aVar;
        this.k = aVar;
        this.o = 0L;
        this.g.b();
    }

    public final void b() {
        this.f3578a.g();
        this.j = this.i;
    }

    public final void c() {
        c(this.f3578a.i());
    }
}

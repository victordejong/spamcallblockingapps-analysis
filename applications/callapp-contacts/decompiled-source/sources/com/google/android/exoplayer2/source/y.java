package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.upstream.b;
import com.google.android.exoplayer2.util.u;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/y.class */
final class y {

    /* renamed from: a  reason: collision with root package name */
    final u f21680a = new u(32);

    /* renamed from: b  reason: collision with root package name */
    a f21681b;

    /* renamed from: c  reason: collision with root package name */
    a f21682c;

    /* renamed from: d  reason: collision with root package name */
    a f21683d;
    long e;
    private final b f;
    private final int g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/y$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f21684a;

        /* renamed from: b  reason: collision with root package name */
        public final long f21685b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f21686c;

        /* renamed from: d  reason: collision with root package name */
        public com.google.android.exoplayer2.upstream.a f21687d;
        public a e;

        public a(long j, int i) {
            this.f21684a = j;
            this.f21685b = j + i;
        }

        public final int a(long j) {
            return ((int) (j - this.f21684a)) + this.f21687d.f22130b;
        }

        public final a a() {
            this.f21687d = null;
            a aVar = this.e;
            this.e = null;
            return aVar;
        }
    }

    public y(b bVar) {
        this.f = bVar;
        int c2 = bVar.c();
        this.g = c2;
        a aVar = new a(0L, c2);
        this.f21681b = aVar;
        this.f21682c = aVar;
        this.f21683d = aVar;
    }

    private static a a(a aVar, long j) {
        while (j >= aVar.f21685b) {
            aVar = aVar.e;
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.source.y.a a(com.google.android.exoplayer2.source.y.a r6, long r7, java.nio.ByteBuffer r9, int r10) {
        /*
            r0 = r6
            r1 = r7
            com.google.android.exoplayer2.source.y$a r0 = a(r0, r1)
            r6 = r0
        L_0x0006:
            r0 = r10
            if (r0 <= 0) goto L_0x005a
            r0 = r10
            r1 = r6
            long r1 = r1.f21685b
            r2 = r7
            long r1 = r1 - r2
            int r1 = (int) r1
            int r0 = java.lang.Math.min(r0, r1)
            r11 = r0
            r0 = r9
            r1 = r6
            com.google.android.exoplayer2.upstream.a r1 = r1.f21687d
            byte[] r1 = r1.f22129a
            r2 = r6
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
            long r1 = r1.f21685b
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0006
            r0 = r6
            com.google.android.exoplayer2.source.y$a r0 = r0.e
            r6 = r0
            r0 = r13
            r7 = r0
            r0 = r12
            r10 = r0
            goto L_0x0006
        L_0x005a:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.y.a(com.google.android.exoplayer2.source.y$a, long, java.nio.ByteBuffer, int):com.google.android.exoplayer2.source.y$a");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.source.y.a a(com.google.android.exoplayer2.source.y.a r6, long r7, byte[] r9, int r10) {
        /*
            r0 = r6
            r1 = r7
            com.google.android.exoplayer2.source.y$a r0 = a(r0, r1)
            r6 = r0
            r0 = r10
            r11 = r0
        L_0x000a:
            r0 = r11
            if (r0 <= 0) goto L_0x0062
            r0 = r11
            r1 = r6
            long r1 = r1.f21685b
            r2 = r7
            long r1 = r1 - r2
            int r1 = (int) r1
            int r0 = java.lang.Math.min(r0, r1)
            r12 = r0
            r0 = r6
            com.google.android.exoplayer2.upstream.a r0 = r0.f21687d
            byte[] r0 = r0.f22129a
            r1 = r6
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
            long r1 = r1.f21685b
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x000a
            r0 = r6
            com.google.android.exoplayer2.source.y$a r0 = r0.e
            r6 = r0
            r0 = r13
            r11 = r0
            r0 = r14
            r7 = r0
            goto L_0x000a
        L_0x0062:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.y.a(com.google.android.exoplayer2.source.y$a, long, byte[], int):com.google.android.exoplayer2.source.y$a");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(int i) {
        if (!this.f21683d.f21686c) {
            a aVar = this.f21683d;
            com.google.android.exoplayer2.upstream.a a2 = this.f.a();
            a aVar2 = new a(this.f21683d.f21685b, this.g);
            aVar.f21687d = a2;
            aVar.e = aVar2;
            aVar.f21686c = true;
        }
        return Math.min(i, (int) (this.f21683d.f21685b - this.e));
    }

    public final void a() {
        a aVar = this.f21681b;
        if (aVar.f21686c) {
            int i = (this.f21683d.f21686c ? 1 : 0) + (((int) (this.f21683d.f21684a - aVar.f21684a)) / this.g);
            com.google.android.exoplayer2.upstream.a[] aVarArr = new com.google.android.exoplayer2.upstream.a[i];
            for (int i2 = 0; i2 < i; i2++) {
                aVarArr[i2] = aVar.f21687d;
                aVar = aVar.a();
            }
            this.f.a(aVarArr);
        }
        a aVar2 = new a(0L, this.g);
        this.f21681b = aVar2;
        this.f21682c = aVar2;
        this.f21683d = aVar2;
        this.e = 0L;
        this.f.b();
    }

    public final void a(long j) {
        if (j != -1) {
            while (j >= this.f21681b.f21685b) {
                this.f.a(this.f21681b.f21687d);
                this.f21681b = this.f21681b.a();
            }
            if (this.f21682c.f21684a < this.f21681b.f21684a) {
                this.f21682c = this.f21681b;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(int i) {
        long j = this.e + i;
        this.e = j;
        if (j == this.f21683d.f21685b) {
            this.f21683d = this.f21683d.e;
        }
    }
}

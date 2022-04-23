package b;

import java.io.EOFException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:b/m.class */
public final class m implements e {

    /* renamed from: a  reason: collision with root package name */
    public final c f337a;

    /* renamed from: b  reason: collision with root package name */
    public final q f338b;
    private boolean c;

    public m(q qVar) {
        this(qVar, new c());
    }

    private m(q qVar, c cVar) {
        if (qVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        this.f337a = cVar;
        this.f338b = qVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0041, code lost:
        r0 = r5.f337a.a(r6, r9);
        r9 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0054, code lost:
        if (r0 != (-1)) goto L_0x003e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0057, code lost:
        r9 = r5.f337a.f318b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0074, code lost:
        if (r5.f338b.a(r5.f337a, 2048) != (-1)) goto L_0x0041;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0077, code lost:
        r9 = -1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // b.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(byte r6) {
        /*
            r5 = this;
            r0 = 0
            r7 = r0
            r0 = r5
            boolean r0 = r0.c
            if (r0 == 0) goto L_0x0013
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "closed"
            r1.<init>(r2)
            throw r0
        L_0x0013:
            r0 = r7
            r9 = r0
            r0 = 0
            r1 = r5
            b.c r1 = r1.f337a
            long r1 = r1.f318b
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0041
            r0 = r5
            b.q r0 = r0.f338b
            r1 = r5
            b.c r1 = r1.f337a
            r2 = 2048(0x800, double:1.0118E-320)
            long r0 = r0.a(r1, r2)
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0013
            r0 = -1
            r9 = r0
        L_0x003e:
            r0 = r9
            return r0
        L_0x0041:
            r0 = r5
            b.c r0 = r0.f337a
            r1 = r6
            r2 = r9
            long r0 = r0.a(r1, r2)
            r7 = r0
            r0 = r7
            r9 = r0
            r0 = r7
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x003e
            r0 = r5
            b.c r0 = r0.f337a
            long r0 = r0.f318b
            r9 = r0
            r0 = r5
            b.q r0 = r0.f338b
            r1 = r5
            b.c r1 = r1.f337a
            r2 = 2048(0x800, double:1.0118E-320)
            long r0 = r0.a(r1, r2)
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0041
            r0 = -1
            r9 = r0
            goto L_0x003e
        */
        throw new UnsupportedOperationException("Method not decompiled: b.m.a(byte):long");
    }

    @Override // b.q
    public final long a(c cVar, long j) {
        long a2 = -1;
        if (cVar == null) {
            throw new IllegalArgumentException("sink == null");
        } else if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (this.c) {
            throw new IllegalStateException("closed");
        } else {
            if (this.f337a.f318b != 0 || this.f338b.a(this.f337a, 2048L) != -1) {
                a2 = this.f337a.a(cVar, Math.min(j, this.f337a.f318b));
            }
            return a2;
        }
    }

    @Override // b.q
    public final r a() {
        return this.f338b.a();
    }

    @Override // b.e
    public final void a(long j) {
        if (!b(j)) {
            throw new EOFException();
        }
    }

    @Override // b.e
    public final c b() {
        return this.f337a;
    }

    @Override // b.e
    public final boolean b(long j) {
        boolean z;
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (this.c) {
            throw new IllegalStateException("closed");
        } else {
            while (true) {
                if (this.f337a.f318b < j) {
                    if (this.f338b.a(this.f337a, 2048L) == -1) {
                        z = false;
                        break;
                    }
                } else {
                    z = true;
                    break;
                }
            }
            return z;
        }
    }

    @Override // b.q, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (!this.c) {
            this.c = true;
            this.f338b.close();
            this.f337a.n();
        }
    }

    @Override // b.e
    public final f d(long j) {
        a(j);
        return this.f337a.d(j);
    }

    @Override // b.e
    public final boolean d() {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        return this.f337a.d() && this.f338b.a(this.f337a, 2048L) == -1;
    }

    @Override // b.e
    public final byte e() {
        a(1L);
        return this.f337a.e();
    }

    @Override // b.e
    public final short f() {
        a(2L);
        return this.f337a.f();
    }

    @Override // b.e
    public final byte[] f(long j) {
        a(j);
        return this.f337a.f(j);
    }

    @Override // b.e
    public final int g() {
        a(4L);
        return this.f337a.g();
    }

    @Override // b.e
    public final void g(long j) {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        while (j > 0) {
            if (this.f337a.f318b == 0 && this.f338b.a(this.f337a, 2048L) == -1) {
                throw new EOFException();
            }
            long min = Math.min(j, this.f337a.f318b);
            this.f337a.g(min);
            j -= min;
        }
    }

    @Override // b.e
    public final short h() {
        a(2L);
        return s.a(this.f337a.f());
    }

    @Override // b.e
    public final int i() {
        a(4L);
        return s.a(this.f337a.g());
    }

    @Override // b.e
    public final long j() {
        a(1L);
        for (int i = 0; b(i + 1); i++) {
            byte c = this.f337a.c(i);
            if ((c < 48 || c > 57) && ((c < 97 || c > 102) && (c < 65 || c > 70))) {
                if (i == 0) {
                    throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", Byte.valueOf(c)));
                }
                return this.f337a.j();
            }
        }
        return this.f337a.j();
    }

    @Override // b.e
    public final String l() {
        long a2 = a((byte) 10);
        if (a2 != -1) {
            return this.f337a.e(a2);
        }
        c cVar = new c();
        this.f337a.a(cVar, 0L, Math.min(32L, this.f337a.f318b));
        throw new EOFException("\\n not found: size=" + this.f337a.f318b + " content=" + cVar.k().b() + "...");
    }

    @Override // b.e
    public final byte[] m() {
        this.f337a.a(this.f338b);
        return this.f337a.m();
    }

    public final String toString() {
        return "buffer(" + this.f338b + ")";
    }
}

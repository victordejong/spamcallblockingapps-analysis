package b;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:b/l.class */
public final class l implements d {

    /* renamed from: a  reason: collision with root package name */
    public final c f335a;

    /* renamed from: b  reason: collision with root package name */
    public final p f336b;
    private boolean c;

    public l(p pVar) {
        this(pVar, new c());
    }

    private l(p pVar, c cVar) {
        if (pVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        this.f335a = cVar;
        this.f336b = pVar;
    }

    @Override // b.d
    public final long a(q qVar) {
        if (qVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = 0;
        while (true) {
            long a2 = qVar.a(this.f335a, 2048L);
            if (a2 == -1) {
                return j;
            }
            j += a2;
            p();
        }
    }

    @Override // b.p
    public final r a() {
        return this.f336b.a();
    }

    @Override // b.p
    public final void a_(c cVar, long j) {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.f335a.a_(cVar, j);
        p();
    }

    @Override // b.d, b.e
    public final c b() {
        return this.f335a;
    }

    @Override // b.d
    public final d b(f fVar) {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.f335a.b(fVar);
        return p();
    }

    @Override // b.d
    public final d b(String str) {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.f335a.b(str);
        return p();
    }

    @Override // b.d
    public final d b(byte[] bArr) {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.f335a.b(bArr);
        return p();
    }

    @Override // b.d
    public final d c() {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        long j = this.f335a.f318b;
        if (j > 0) {
            this.f336b.a_(this.f335a, j);
        }
        return this;
    }

    @Override // b.d
    public final d c(byte[] bArr, int i, int i2) {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.f335a.c(bArr, i, i2);
        return p();
    }

    @Override // b.p, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Throwable th;
        if (!this.c) {
            Throwable th2 = null;
            try {
                if (this.f335a.f318b > 0) {
                    this.f336b.a_(this.f335a, this.f335a.f318b);
                    th2 = null;
                }
            } catch (Throwable th3) {
                th2 = th3;
            }
            try {
                this.f336b.close();
                th = th2;
            } catch (Throwable th4) {
                th = th4;
                th = th2;
                if (th2 == null) {
                }
            }
            this.c = true;
            if (th != null) {
                s.a(th);
            }
        }
    }

    @Override // b.d
    public final d e(int i) {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.f335a.e(i);
        return p();
    }

    @Override // b.d
    public final d f(int i) {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.f335a.f(i);
        return p();
    }

    @Override // b.p, java.io.Flushable
    public final void flush() {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        if (this.f335a.f318b > 0) {
            this.f336b.a_(this.f335a, this.f335a.f318b);
        }
        this.f336b.flush();
    }

    @Override // b.d
    public final d g(int i) {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.f335a.g(i);
        return p();
    }

    @Override // b.d
    public final d i(long j) {
        if (this.c) {
            throw new IllegalStateException("closed");
        }
        this.f335a.i(j);
        return p();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // b.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final b.d p() {
        /*
            r5 = this;
            r0 = r5
            boolean r0 = r0.c
            if (r0 == 0) goto L_0x0011
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "closed"
            r1.<init>(r2)
            throw r0
        L_0x0011:
            r0 = r5
            b.c r0 = r0.f335a
            r6 = r0
            r0 = r6
            long r0 = r0.f318b
            r7 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x003c
            r0 = 0
            r9 = r0
        L_0x0024:
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x003a
            r0 = r5
            b.p r0 = r0.f336b
            r1 = r5
            b.c r1 = r1.f335a
            r2 = r9
            r0.a_(r1, r2)
        L_0x003a:
            r0 = r5
            return r0
        L_0x003c:
            r0 = r6
            b.n r0 = r0.f317a
            b.n r0 = r0.g
            r6 = r0
            r0 = r7
            r9 = r0
            r0 = r6
            int r0 = r0.c
            r1 = 2048(0x800, float:2.87E-42)
            if (r0 >= r1) goto L_0x0024
            r0 = r7
            r9 = r0
            r0 = r6
            boolean r0 = r0.e
            if (r0 == 0) goto L_0x0024
            r0 = r7
            r1 = r6
            int r1 = r1.c
            r2 = r6
            int r2 = r2.f340b
            int r1 = r1 - r2
            long r1 = (long) r1
            long r0 = r0 - r1
            r9 = r0
            goto L_0x0024
        */
        throw new UnsupportedOperationException("Method not decompiled: b.l.p():b.d");
    }

    public final String toString() {
        return "buffer(" + this.f336b + ")";
    }
}

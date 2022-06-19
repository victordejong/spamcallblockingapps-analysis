package p000a;

import java.io.EOFException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* renamed from: a.n */
/* loaded from: classes-dex2jar.jar:a/n.class */
public final class C0019n implements AbstractC0007e {

    /* renamed from: a */
    public final C0005c f41a = new C0005c();

    /* renamed from: b */
    public final AbstractC0024s f42b;

    /* renamed from: c */
    boolean f43c;

    public C0019n(AbstractC0024s abstractC0024s) {
        if (abstractC0024s == null) {
            throw new NullPointerException("source == null");
        }
        this.f42b = abstractC0024s;
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: a */
    public long mo22504a(byte b) {
        return m22503a(b, 0L, Long.MAX_VALUE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x008f, code lost:
        r11 = 65535;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [a.c] */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m22503a(byte r10, long r11, long r13) {
        /*
            r9 = this;
            r0 = r9
            boolean r0 = r0.f43c
            if (r0 == 0) goto L11
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "closed"
            r1.<init>(r2)
            throw r0
        L11:
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L1e
            r0 = r13
            r1 = r11
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L9d
        L1e:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "fromIndex=%s toIndex=%s"
            r3 = 2
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = r3
            r5 = 0
            r6 = r11
            java.lang.Long r6 = java.lang.Long.valueOf(r6)
            r4[r5] = r6
            r4 = r3
            r5 = 1
            r6 = r13
            java.lang.Long r6 = java.lang.Long.valueOf(r6)
            r4[r5] = r6
            java.lang.String r2 = java.lang.String.format(r2, r3)
            r1.<init>(r2)
            throw r0
        L3e:
            r0 = r11
            r1 = r15
            long r0 = java.lang.Math.max(r0, r1)
            r11 = r0
        L45:
            r0 = r11
            r1 = r13
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L96
            r0 = r9
            a.c r0 = r0.f41a
            r1 = r10
            r2 = r11
            r3 = r13
            long r0 = r0.m22573a(r1, r2, r3)
            r15 = r0
            r0 = r15
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L67
            r0 = r15
            r11 = r0
        L65:
            r0 = r11
            return r0
        L67:
            r0 = r9
            a.c r0 = r0.f41a
            long r0 = r0.f14b
            r15 = r0
            r0 = r15
            r1 = r13
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L8f
            r0 = r9
            a.s r0 = r0.f42b
            r1 = r9
            a.c r1 = r1.f41a
            r2 = 8192(0x2000, double:4.0474E-320)
            long r0 = r0.mo90a(r1, r2)
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L3e
        L8f:
            r0 = -1
            r11 = r0
            goto L65
        L96:
            r0 = -1
            r11 = r0
            goto L65
        L9d:
            goto L45
        */
        throw new UnsupportedOperationException("Method not decompiled: p000a.C0019n.m22503a(byte, long, long):long");
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    @Override // p000a.AbstractC0024s
    /* renamed from: a */
    public long mo90a(C0005c c0005c, long j) {
        char mo90a;
        if (c0005c == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.f43c) {
            throw new IllegalStateException("closed");
        }
        if (this.f41a.f14b == 0 && this.f42b.mo90a(this.f41a, 8192L) == -1) {
            mo90a = 65535;
        } else {
            mo90a = this.f41a.mo90a(c0005c, Math.min(j, this.f41a.f14b));
        }
        return mo90a;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    @Override // p000a.AbstractC0007e
    /* renamed from: a */
    public long mo22499a(AbstractC0023r abstractC0023r) {
        if (abstractC0023r == null) {
            throw new IllegalArgumentException("sink == null");
        }
        char c = 0;
        while (this.f42b.mo90a(this.f41a, 8192L) != -1) {
            long m22552f = this.f41a.m22552f();
            if (m22552f > 0) {
                c += m22552f;
                abstractC0023r.mo406a_(this.f41a, m22552f);
            }
        }
        char c2 = c;
        if (this.f41a.m22562b() > 0) {
            c2 = c + this.f41a.m22562b();
            abstractC0023r.mo406a_(this.f41a, this.f41a.m22562b());
        }
        return c2;
    }

    @Override // p000a.AbstractC0024s
    /* renamed from: a */
    public C0025t mo405a() {
        return this.f42b.mo405a();
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: a */
    public String mo22498a(Charset charset) {
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        this.f41a.m22567a(this.f42b);
        return this.f41a.mo22498a(charset);
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: a */
    public void mo22502a(long j) {
        if (!m22496b(j)) {
            throw new EOFException();
        }
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: a */
    public void mo22497a(byte[] bArr) {
        try {
            mo22502a(bArr.length);
            this.f41a.mo22497a(bArr);
        } catch (EOFException e) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (this.f41a.f14b <= 0) {
                    throw e;
                }
                int m22563a = this.f41a.m22563a(bArr, i2, (int) this.f41a.f14b);
                if (m22563a == -1) {
                    throw new AssertionError();
                }
                i = i2 + m22563a;
            }
        }
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: a */
    public boolean mo22501a(long j, C0008f c0008f) {
        return m22500a(j, c0008f, 0, c0008f.mo22462g());
    }

    /* renamed from: a */
    public boolean m22500a(long j, C0008f c0008f, int i, int i2) {
        if (this.f43c) {
            throw new IllegalStateException("closed");
        }
        boolean z = false;
        if (j >= 0) {
            z = false;
            if (i >= 0) {
                z = false;
                if (i2 >= 0) {
                    if (c0008f.mo22462g() - i >= i2) {
                        int i3 = 0;
                        while (true) {
                            if (i3 >= i2) {
                                z = true;
                                break;
                            }
                            long j2 = i3 + j;
                            z = false;
                            if (!m22496b(1 + j2)) {
                                break;
                            }
                            z = false;
                            if (this.f41a.m22560b(j2) != c0008f.mo22473a(i + i3)) {
                                break;
                            }
                            i3++;
                        }
                    } else {
                        z = false;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    public boolean m22496b(long j) {
        boolean z;
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.f43c) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            if (this.f41a.f14b >= j) {
                z = true;
                break;
            } else if (this.f42b.mo90a(this.f41a, 8192L) == -1) {
                z = false;
                break;
            }
        }
        return z;
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: c */
    public C0005c mo22495c() {
        return this.f41a;
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: c */
    public C0008f mo22494c(long j) {
        mo22502a(j);
        return this.f41a.mo22494c(j);
    }

    @Override // p000a.AbstractC0024s, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f43c) {
            return;
        }
        this.f43c = true;
        this.f42b.close();
        this.f41a.m22544q();
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    @Override // p000a.AbstractC0007e
    /* renamed from: e */
    public String mo22492e(long j) {
        String m22550f;
        if (j < 0) {
            throw new IllegalArgumentException("limit < 0: " + j);
        }
        char c = j == Long.MAX_VALUE ? (char) 65535 : j + 1;
        long m22503a = m22503a((byte) 10, 0L, c);
        if (m22503a != -1) {
            m22550f = this.f41a.m22550f(m22503a);
        } else if (c >= Long.MAX_VALUE || !m22496b(c) || this.f41a.m22560b(c - 1) != 13 || !m22496b(1 + c) || this.f41a.m22560b((long) c) != 10) {
            C0005c c0005c = new C0005c();
            this.f41a.m22569a(c0005c, 0L, Math.min(32L, this.f41a.m22562b()));
            throw new EOFException("\\n not found: limit=" + Math.min(this.f41a.m22562b(), j) + " content=" + c0005c.m22547m().mo22464e() + (char) 8230);
        } else {
            m22550f = this.f41a.m22550f((long) c);
        }
        return m22550f;
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: e */
    public boolean mo22493e() {
        if (this.f43c) {
            throw new IllegalStateException("closed");
        }
        return this.f41a.mo22493e() && this.f42b.mo90a(this.f41a, 8192L) == -1;
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: g */
    public byte mo22491g() {
        mo22502a(1L);
        return this.f41a.mo22491g();
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: g */
    public byte[] mo22490g(long j) {
        mo22502a(j);
        return this.f41a.mo22490g(j);
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: h */
    public short mo22489h() {
        mo22502a(2L);
        return this.f41a.mo22489h();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    @Override // p000a.AbstractC0007e
    /* renamed from: h */
    public void mo22488h(long j) {
        ?? r6 = j;
        if (this.f43c) {
            throw new IllegalStateException("closed");
        }
        while (r6 > 0) {
            if (this.f41a.f14b == 0 && this.f42b.mo90a(this.f41a, 8192L) == -1) {
                throw new EOFException();
            }
            long min = Math.min((long) r6, this.f41a.m22562b());
            this.f41a.mo22488h(min);
            r6 -= min;
        }
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: i */
    public int mo22487i() {
        mo22502a(4L);
        return this.f41a.mo22487i();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f43c;
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: j */
    public short mo22486j() {
        mo22502a(2L);
        return this.f41a.mo22486j();
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: k */
    public int mo22485k() {
        mo22502a(4L);
        return this.f41a.mo22485k();
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: l */
    public long mo22484l() {
        mo22502a(1L);
        for (int i = 0; m22496b(i + 1); i++) {
            byte m22560b = this.f41a.m22560b(i);
            if ((m22560b < 48 || m22560b > 57) && ((m22560b < 97 || m22560b > 102) && (m22560b < 65 || m22560b > 70))) {
                if (i == 0) {
                    throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", Byte.valueOf(m22560b)));
                }
                return this.f41a.mo22484l();
            }
        }
        return this.f41a.mo22484l();
    }

    @Override // p000a.AbstractC0007e
    /* renamed from: o */
    public String mo22483o() {
        return mo22492e(Long.MAX_VALUE);
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) {
        return (this.f41a.f14b == 0 && this.f42b.mo90a(this.f41a, 8192L) == -1) ? -1 : this.f41a.read(byteBuffer);
    }

    public String toString() {
        return "buffer(" + this.f42b + ")";
    }
}

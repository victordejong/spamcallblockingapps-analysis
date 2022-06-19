package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ul3.class */
final class ul3 {

    /* renamed from: a */
    private final C6694la f30663a = new C6694la(32);

    /* renamed from: b */
    private tl3 f30664b;

    /* renamed from: c */
    private tl3 f30665c;

    /* renamed from: d */
    private tl3 f30666d;

    /* renamed from: e */
    private long f30667e;

    /* renamed from: f */
    private final tn3 f30668f;

    public ul3(tn3 tn3Var, byte[] bArr) {
        this.f30668f = tn3Var;
        tl3 tl3Var = new tl3(0L, 65536);
        this.f30664b = tl3Var;
        this.f30665c = tl3Var;
        this.f30666d = tl3Var;
    }

    /* renamed from: i */
    private final int m10309i(int i) {
        tl3 tl3Var = this.f30666d;
        if (!tl3Var.f30051c) {
            in3 m10599c = this.f30668f.m10599c();
            tl3 tl3Var2 = new tl3(this.f30666d.f30050b, 65536);
            tl3Var.f30052d = m10599c;
            tl3Var.f30053e = tl3Var2;
            tl3Var.f30051c = true;
        }
        return Math.min(i, (int) (this.f30666d.f30050b - this.f30667e));
    }

    /* renamed from: j */
    private final void m10308j(int i) {
        long j = this.f30667e + i;
        this.f30667e = j;
        tl3 tl3Var = this.f30666d;
        if (j == tl3Var.f30050b) {
            this.f30666d = tl3Var.f30053e;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x00bb, code lost:
        if (r0.length < r18) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00d9, code lost:
        if (r0.length < r18) goto L21;
     */
    /* JADX WARN: Type inference failed for: r0v108, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.tl3 m10307k(com.google.android.gms.internal.ads.tl3 r10, com.google.android.gms.internal.ads.C7205z3 r11, com.google.android.gms.internal.ads.xl3 r12, com.google.android.gms.internal.ads.C6694la r13) {
        /*
            Method dump skipped, instructions count: 606
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ul3.m10307k(com.google.android.gms.internal.ads.tl3, com.google.android.gms.internal.ads.z3, com.google.android.gms.internal.ads.xl3, com.google.android.gms.internal.ads.la):com.google.android.gms.internal.ads.tl3");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* renamed from: l */
    private static tl3 m10306l(tl3 tl3Var, long j, ByteBuffer byteBuffer, int i) {
        tl3 m10304n = m10304n(tl3Var, j);
        while (i > 0) {
            int min = Math.min(i, (int) (m10304n.f30050b - j));
            byteBuffer.put(m10304n.f30052d.f24365a, m10304n.m10630a(j), min);
            int i2 = i - min;
            ?? r0 = j + min;
            j = r0;
            i = i2;
            if (r0 == m10304n.f30050b) {
                m10304n = m10304n.f30053e;
                j = r0;
                i = i2;
            }
        }
        return m10304n;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* renamed from: m */
    private static tl3 m10305m(tl3 tl3Var, long j, byte[] bArr, int i) {
        tl3 m10304n = m10304n(tl3Var, j);
        int i2 = i;
        while (i2 > 0) {
            int min = Math.min(i2, (int) (m10304n.f30050b - j));
            System.arraycopy(m10304n.f30052d.f24365a, m10304n.m10630a(j), bArr, i - i2, min);
            int i3 = i2 - min;
            ?? r0 = j + min;
            i2 = i3;
            j = r0;
            if (r0 == m10304n.f30050b) {
                m10304n = m10304n.f30053e;
                i2 = i3;
                j = r0;
            }
        }
        return m10304n;
    }

    /* renamed from: n */
    private static tl3 m10304n(tl3 tl3Var, long j) {
        while (j >= tl3Var.f30050b) {
            tl3Var = tl3Var.f30053e;
        }
        return tl3Var;
    }

    /* renamed from: a */
    public final void m10317a() {
        tl3 tl3Var = this.f30664b;
        if (tl3Var.f30051c) {
            tl3 tl3Var2 = this.f30666d;
            int i = (tl3Var2.f30051c ? 1 : 0) + (((int) (tl3Var2.f30049a - tl3Var.f30049a)) / 65536);
            in3[] in3VarArr = new in3[i];
            for (int i2 = 0; i2 < i; i2++) {
                in3VarArr[i2] = tl3Var.f30052d;
                tl3Var = tl3Var.m10629b();
            }
            this.f30668f.m10597e(in3VarArr);
        }
        tl3 tl3Var3 = new tl3(0L, 65536);
        this.f30664b = tl3Var3;
        this.f30665c = tl3Var3;
        this.f30666d = tl3Var3;
        this.f30667e = 0L;
        this.f30668f.m10596f();
    }

    /* renamed from: b */
    public final void m10316b() {
        this.f30665c = this.f30664b;
    }

    /* renamed from: c */
    public final void m10315c(C7205z3 c7205z3, xl3 xl3Var) {
        this.f30665c = m10307k(this.f30665c, c7205z3, xl3Var, this.f30663a);
    }

    /* renamed from: d */
    public final void m10314d(C7205z3 c7205z3, xl3 xl3Var) {
        m10307k(this.f30665c, c7205z3, xl3Var, this.f30663a);
    }

    /* renamed from: e */
    public final void m10313e(long j) {
        tl3 tl3Var;
        if (j != -1) {
            while (true) {
                tl3Var = this.f30664b;
                if (j < tl3Var.f30050b) {
                    break;
                }
                this.f30668f.m10598d(tl3Var.f30052d);
                this.f30664b = this.f30664b.m10629b();
            }
            if (this.f30665c.f30049a >= tl3Var.f30049a) {
                return;
            }
            this.f30665c = tl3Var;
        }
    }

    /* renamed from: f */
    public final long m10312f() {
        return this.f30667e;
    }

    /* renamed from: g */
    public final int m10311g(AbstractC7207z5 abstractC7207z5, int i, boolean z) {
        int m10309i = m10309i(i);
        tl3 tl3Var = this.f30666d;
        int mo8335c = abstractC7207z5.mo8335c(tl3Var.f30052d.f24365a, tl3Var.m10630a(this.f30667e), m10309i);
        if (mo8335c != -1) {
            m10308j(mo8335c);
            return mo8335c;
        } else if (!z) {
            throw new EOFException();
        } else {
            return -1;
        }
    }

    /* renamed from: h */
    public final void m10310h(C6694la c6694la, int i) {
        while (i > 0) {
            int m10309i = m10309i(i);
            tl3 tl3Var = this.f30666d;
            c6694la.m13630u(tl3Var.f30052d.f24365a, tl3Var.m10630a(this.f30667e), m10309i);
            i -= m10309i;
            m10308j(m10309i);
        }
    }
}

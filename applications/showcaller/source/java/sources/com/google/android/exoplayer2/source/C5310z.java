package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.p242b1.C4858e;
import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.source.C5203a0;
import com.google.android.exoplayer2.upstream.AbstractC5472e;
import com.google.android.exoplayer2.upstream.C5471d;
import com.google.android.exoplayer2.util.C5536v;
import java.io.EOFException;
import java.nio.ByteBuffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.exoplayer2.source.z */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/z.class */
public class C5310z {

    /* renamed from: a */
    private final AbstractC5472e f16881a;

    /* renamed from: b */
    private final int f16882b;

    /* renamed from: c */
    private final C5536v f16883c = new C5536v(32);

    /* renamed from: d */
    private C5311a f16884d;

    /* renamed from: e */
    private C5311a f16885e;

    /* renamed from: f */
    private C5311a f16886f;

    /* renamed from: g */
    private long f16887g;

    /* renamed from: com.google.android.exoplayer2.source.z$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/z$a.class */
    public static final class C5311a {

        /* renamed from: a */
        public final long f16888a;

        /* renamed from: b */
        public final long f16889b;

        /* renamed from: c */
        public boolean f16890c;

        /* renamed from: d */
        public C5471d f16891d;

        /* renamed from: e */
        public C5311a f16892e;

        public C5311a(long j, int i) {
            this.f16888a = j;
            this.f16889b = j + i;
        }

        /* renamed from: a */
        public C5311a m19705a() {
            this.f16891d = null;
            C5311a c5311a = this.f16892e;
            this.f16892e = null;
            return c5311a;
        }

        /* renamed from: b */
        public void m19704b(C5471d c5471d, C5311a c5311a) {
            this.f16891d = c5471d;
            this.f16892e = c5311a;
            this.f16890c = true;
        }

        /* renamed from: c */
        public int m19703c(long j) {
            return ((int) (j - this.f16888a)) + this.f16891d.f17731b;
        }
    }

    public C5310z(AbstractC5472e abstractC5472e) {
        this.f16881a = abstractC5472e;
        int mo19009e = abstractC5472e.mo19009e();
        this.f16882b = mo19009e;
        C5311a c5311a = new C5311a(0L, mo19009e);
        this.f16884d = c5311a;
        this.f16885e = c5311a;
        this.f16886f = c5311a;
    }

    /* renamed from: a */
    private void m19719a(long j) {
        while (true) {
            C5311a c5311a = this.f16885e;
            if (j >= c5311a.f16889b) {
                this.f16885e = c5311a.f16892e;
            } else {
                return;
            }
        }
    }

    /* renamed from: b */
    private void m19718b(C5311a c5311a) {
        if (!c5311a.f16890c) {
            return;
        }
        C5311a c5311a2 = this.f16886f;
        int i = (c5311a2.f16890c ? 1 : 0) + (((int) (c5311a2.f16888a - c5311a.f16888a)) / this.f16882b);
        C5471d[] c5471dArr = new C5471d[i];
        for (int i2 = 0; i2 < i; i2++) {
            c5471dArr[i2] = c5311a.f16891d;
            c5311a = c5311a.m19705a();
        }
        this.f16881a.mo19010d(c5471dArr);
    }

    /* renamed from: e */
    private void m19715e(int i) {
        long j = this.f16887g + i;
        this.f16887g = j;
        C5311a c5311a = this.f16886f;
        if (j == c5311a.f16889b) {
            this.f16886f = c5311a.f16892e;
        }
    }

    /* renamed from: f */
    private int m19714f(int i) {
        C5311a c5311a = this.f16886f;
        if (!c5311a.f16890c) {
            c5311a.m19704b(this.f16881a.mo19012b(), new C5311a(this.f16886f.f16889b, this.f16882b));
        }
        return Math.min(i, (int) (this.f16886f.f16889b - this.f16887g));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.exoplayer2.source.z$a] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* renamed from: g */
    private void m19713g(long j, ByteBuffer byteBuffer, int i) {
        m19719a(j);
        while (i > 0) {
            int min = Math.min(i, (int) (this.f16885e.f16889b - j));
            ?? r0 = this.f16885e;
            byteBuffer.put(r0.f16891d.f17730a, r0.m19703c(j), min);
            int i2 = i - min;
            ?? r02 = j + min;
            C5311a c5311a = this.f16885e;
            j = r02;
            i = i2;
            if (r02 == c5311a.f16889b) {
                this.f16885e = c5311a.f16892e;
                j = r02;
                i = i2;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.google.android.exoplayer2.source.z$a] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* renamed from: h */
    private void m19712h(long j, byte[] bArr, int i) {
        m19719a(j);
        int i2 = i;
        while (i2 > 0) {
            int min = Math.min(i2, (int) (this.f16885e.f16889b - j));
            ?? r0 = this.f16885e;
            System.arraycopy(r0.f16891d.f17730a, r0.m19703c(j), bArr, i - i2, min);
            int i3 = i2 - min;
            ?? r02 = j + min;
            C5311a c5311a = this.f16885e;
            i2 = i3;
            j = r02;
            if (r02 == c5311a.f16889b) {
                this.f16885e = c5311a.f16892e;
                i2 = i3;
                j = r02;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x00bf, code lost:
        if (r0.length < r17) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00dc, code lost:
        if (r0.length < r17) goto L23;
     */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r0v74, types: [long] */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m19711i(com.google.android.exoplayer2.p242b1.C4858e r11, com.google.android.exoplayer2.source.C5203a0.C5204a r12) {
        /*
            Method dump skipped, instructions count: 418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.C5310z.m19711i(com.google.android.exoplayer2.b1.e, com.google.android.exoplayer2.source.a0$a):void");
    }

    /* renamed from: c */
    public void m19717c(long j) {
        C5311a c5311a;
        if (j == -1) {
            return;
        }
        while (true) {
            c5311a = this.f16884d;
            if (j < c5311a.f16889b) {
                break;
            }
            this.f16881a.mo19013a(c5311a.f16891d);
            this.f16884d = this.f16884d.m19705a();
        }
        if (this.f16885e.f16888a >= c5311a.f16888a) {
            return;
        }
        this.f16885e = c5311a;
    }

    /* renamed from: d */
    public long m19716d() {
        return this.f16887g;
    }

    /* renamed from: j */
    public void m19710j(C4858e c4858e, C5203a0.C5204a c5204a) {
        if (c4858e.m21426j()) {
            m19711i(c4858e, c5204a);
        }
        if (!c4858e.hasSupplementalData()) {
            c4858e.m21428h(c5204a.f16343a);
            m19713g(c5204a.f16344b, c4858e.f14775e, c5204a.f16343a);
            return;
        }
        this.f16883c.m18684I(4);
        m19712h(c5204a.f16344b, this.f16883c.f17941a, 4);
        int m18689D = this.f16883c.m18689D();
        c5204a.f16344b += 4;
        c5204a.f16343a -= 4;
        c4858e.m21428h(m18689D);
        m19713g(c5204a.f16344b, c4858e.f14775e, m18689D);
        c5204a.f16344b += m18689D;
        int i = c5204a.f16343a - m18689D;
        c5204a.f16343a = i;
        c4858e.m21423m(i);
        m19713g(c5204a.f16344b, c4858e.f14777g, c5204a.f16343a);
    }

    /* renamed from: k */
    public void m19709k() {
        m19718b(this.f16884d);
        C5311a c5311a = new C5311a(0L, this.f16882b);
        this.f16884d = c5311a;
        this.f16885e = c5311a;
        this.f16886f = c5311a;
        this.f16887g = 0L;
        this.f16881a.mo19011c();
    }

    /* renamed from: l */
    public void m19708l() {
        this.f16885e = this.f16884d;
    }

    /* renamed from: m */
    public int m19707m(AbstractC4979i abstractC4979i, int i, boolean z) {
        int m19714f = m19714f(i);
        C5311a c5311a = this.f16886f;
        int read = abstractC4979i.read(c5311a.f16891d.f17730a, c5311a.m19703c(this.f16887g), m19714f);
        if (read != -1) {
            m19715e(read);
            return read;
        } else if (!z) {
            throw new EOFException();
        } else {
            return -1;
        }
    }

    /* renamed from: n */
    public void m19706n(C5536v c5536v, int i) {
        while (i > 0) {
            int m19714f = m19714f(i);
            C5311a c5311a = this.f16886f;
            c5536v.m18671h(c5311a.f16891d.f17730a, c5311a.m19703c(this.f16887g), m19714f);
            i -= m19714f;
            m19715e(m19714f);
        }
    }
}

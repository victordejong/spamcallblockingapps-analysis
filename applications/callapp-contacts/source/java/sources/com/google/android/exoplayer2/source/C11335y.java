package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.upstream.AbstractC11533b;
import com.google.android.exoplayer2.upstream.C11532a;
import com.google.android.exoplayer2.util.C11628u;
import java.nio.ByteBuffer;
/* renamed from: com.google.android.exoplayer2.source.y */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/y.class */
final class C11335y {

    /* renamed from: a */
    final C11628u f37255a = new C11628u(32);

    /* renamed from: b */
    C11336a f37256b;

    /* renamed from: c */
    C11336a f37257c;

    /* renamed from: d */
    C11336a f37258d;

    /* renamed from: e */
    long f37259e;

    /* renamed from: f */
    private final AbstractC11533b f37260f;

    /* renamed from: g */
    private final int f37261g;

    /* renamed from: com.google.android.exoplayer2.source.y$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/y$a.class */
    public static final class C11336a {

        /* renamed from: a */
        public final long f37262a;

        /* renamed from: b */
        public final long f37263b;

        /* renamed from: c */
        public boolean f37264c;

        /* renamed from: d */
        public C11532a f37265d;

        /* renamed from: e */
        public C11336a f37266e;

        public C11336a(long j, int i) {
            this.f37262a = j;
            this.f37263b = j + i;
        }

        /* renamed from: a */
        public final int m20840a(long j) {
            return ((int) (j - this.f37262a)) + this.f37265d.f38391b;
        }

        /* renamed from: a */
        public final C11336a m20841a() {
            this.f37265d = null;
            C11336a c11336a = this.f37266e;
            this.f37266e = null;
            return c11336a;
        }
    }

    public C11335y(AbstractC11533b abstractC11533b) {
        this.f37260f = abstractC11533b;
        int mo20066c = abstractC11533b.mo20066c();
        this.f37261g = mo20066c;
        C11336a c11336a = new C11336a(0L, mo20066c);
        this.f37256b = c11336a;
        this.f37257c = c11336a;
        this.f37258d = c11336a;
    }

    /* renamed from: a */
    private static C11336a m20845a(C11336a c11336a, long j) {
        while (j >= c11336a.f37263b) {
            c11336a = c11336a.f37266e;
        }
        return c11336a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* renamed from: a */
    public static C11336a m20844a(C11336a c11336a, long j, ByteBuffer byteBuffer, int i) {
        C11336a m20845a = m20845a(c11336a, j);
        while (i > 0) {
            int min = Math.min(i, (int) (m20845a.f37263b - j));
            byteBuffer.put(m20845a.f37265d.f38390a, m20845a.m20840a(j), min);
            int i2 = i - min;
            ?? r0 = j + min;
            j = r0;
            i = i2;
            if (r0 == m20845a.f37263b) {
                m20845a = m20845a.f37266e;
                j = r0;
                i = i2;
            }
        }
        return m20845a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* renamed from: a */
    public static C11336a m20843a(C11336a c11336a, long j, byte[] bArr, int i) {
        C11336a m20845a = m20845a(c11336a, j);
        int i2 = i;
        while (i2 > 0) {
            int min = Math.min(i2, (int) (m20845a.f37263b - j));
            System.arraycopy(m20845a.f37265d.f38390a, m20845a.m20840a(j), bArr, i - i2, min);
            int i3 = i2 - min;
            ?? r0 = j + min;
            i2 = i3;
            j = r0;
            if (r0 == m20845a.f37263b) {
                m20845a = m20845a.f37266e;
                i2 = i3;
                j = r0;
            }
        }
        return m20845a;
    }

    /* renamed from: a */
    public final int m20847a(int i) {
        if (!this.f37258d.f37264c) {
            C11336a c11336a = this.f37258d;
            C11532a mo20071a = this.f37260f.mo20071a();
            C11336a c11336a2 = new C11336a(this.f37258d.f37263b, this.f37261g);
            c11336a.f37265d = mo20071a;
            c11336a.f37266e = c11336a2;
            c11336a.f37264c = true;
        }
        return Math.min(i, (int) (this.f37258d.f37263b - this.f37259e));
    }

    /* renamed from: a */
    public final void m20848a() {
        C11336a c11336a = this.f37256b;
        if (c11336a.f37264c) {
            int i = (this.f37258d.f37264c ? 1 : 0) + (((int) (this.f37258d.f37262a - c11336a.f37262a)) / this.f37261g);
            C11532a[] c11532aArr = new C11532a[i];
            for (int i2 = 0; i2 < i; i2++) {
                c11532aArr[i2] = c11336a.f37265d;
                c11336a = c11336a.m20841a();
            }
            this.f37260f.mo20068a(c11532aArr);
        }
        C11336a c11336a2 = new C11336a(0L, this.f37261g);
        this.f37256b = c11336a2;
        this.f37257c = c11336a2;
        this.f37258d = c11336a2;
        this.f37259e = 0L;
        this.f37260f.mo20067b();
    }

    /* renamed from: a */
    public final void m20846a(long j) {
        if (j == -1) {
            return;
        }
        while (j >= this.f37256b.f37263b) {
            this.f37260f.mo20069a(this.f37256b.f37265d);
            this.f37256b = this.f37256b.m20841a();
        }
        if (this.f37257c.f37262a >= this.f37256b.f37262a) {
            return;
        }
        this.f37257c = this.f37256b;
    }

    /* renamed from: b */
    public final void m20842b(int i) {
        long j = this.f37259e + i;
        this.f37259e = j;
        if (j == this.f37258d.f37263b) {
            this.f37258d = this.f37258d.f37266e;
        }
    }
}

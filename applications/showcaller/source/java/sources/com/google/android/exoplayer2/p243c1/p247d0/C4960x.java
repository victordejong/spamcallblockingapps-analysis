package com.google.android.exoplayer2.p243c1.p247d0;

import com.google.android.exoplayer2.p243c1.AbstractC4866a;
import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.util.C5509e0;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5536v;
/* renamed from: com.google.android.exoplayer2.c1.d0.x */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/x.class */
public final class C4960x extends AbstractC4866a {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.exoplayer2.c1.d0.x$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/x$b.class */
    public static final class C4962b implements AbstractC4866a.AbstractC4872f {

        /* renamed from: a */
        private final C5509e0 f15405a;

        /* renamed from: b */
        private final C5536v f15406b;

        private C4962b(C5509e0 c5509e0) {
            this.f15405a = c5509e0;
            this.f15406b = new C5536v();
        }

        /* JADX WARN: Type inference failed for: r0v28, types: [long] */
        /* renamed from: c */
        private AbstractC4866a.C4871e m21052c(C5536v c5536v, long j, long j2) {
            int i = -1;
            char c = 1;
            int i2 = -1;
            while (c5536v.m18678a() >= 4) {
                if (C4960x.m21053k(c5536v.f17941a, c5536v.m18676c()) != 442) {
                    c5536v.m18679N(1);
                } else {
                    c5536v.m18679N(4);
                    long m21039l = C4963y.m21039l(c5536v);
                    int i3 = i2;
                    char c2 = c;
                    if (m21039l != -9223372036854775807L) {
                        c2 = this.f15405a.m18905b(m21039l);
                        if (c2 > j) {
                            return c == -9223372036854775807L ? AbstractC4866a.C4871e.m21337d(c2, j2) : AbstractC4866a.C4871e.m21336e(j2 + i2);
                        } else if (34464 + c2 > j) {
                            return AbstractC4866a.C4871e.m21336e(j2 + c5536v.m18676c());
                        } else {
                            i3 = c5536v.m18676c();
                        }
                    }
                    m21051d(c5536v);
                    i = c5536v.m18676c();
                    i2 = i3;
                    c = c2;
                }
            }
            return c != -9223372036854775807L ? AbstractC4866a.C4871e.m21335f(c, j2 + i) : AbstractC4866a.C4871e.f14852a;
        }

        /* renamed from: d */
        private static void m21051d(C5536v c5536v) {
            int m21053k;
            int m18675d = c5536v.m18675d();
            if (c5536v.m18678a() < 10) {
                c5536v.m18680M(m18675d);
                return;
            }
            c5536v.m18679N(9);
            int m18653z = c5536v.m18653z() & 7;
            if (c5536v.m18678a() < m18653z) {
                c5536v.m18680M(m18675d);
                return;
            }
            c5536v.m18679N(m18653z);
            if (c5536v.m18678a() < 4) {
                c5536v.m18680M(m18675d);
                return;
            }
            if (C4960x.m21053k(c5536v.f17941a, c5536v.m18676c()) == 443) {
                c5536v.m18679N(4);
                int m18687F = c5536v.m18687F();
                if (c5536v.m18678a() < m18687F) {
                    c5536v.m18680M(m18675d);
                    return;
                }
                c5536v.m18679N(m18687F);
            }
            while (c5536v.m18678a() >= 4 && (m21053k = C4960x.m21053k(c5536v.f17941a, c5536v.m18676c())) != 442 && m21053k != 441 && (m21053k >>> 8) == 1) {
                c5536v.m18679N(4);
                if (c5536v.m18678a() < 2) {
                    c5536v.m18680M(m18675d);
                    return;
                }
                c5536v.m18680M(Math.min(c5536v.m18675d(), c5536v.m18676c() + c5536v.m18687F()));
            }
        }

        @Override // com.google.android.exoplayer2.p243c1.AbstractC4866a.AbstractC4872f
        /* renamed from: a */
        public void mo20933a() {
            this.f15406b.m18683J(C5515h0.f17881f);
        }

        @Override // com.google.android.exoplayer2.p243c1.AbstractC4866a.AbstractC4872f
        /* renamed from: b */
        public AbstractC4866a.C4871e mo20932b(AbstractC4979i abstractC4979i, long j) {
            long mo20999k = abstractC4979i.mo20999k();
            int min = (int) Math.min(20000L, abstractC4979i.getLength() - mo20999k);
            this.f15406b.m18684I(min);
            abstractC4979i.mo21000j(this.f15406b.f17941a, 0, min);
            return m21052c(this.f15406b, j, mo20999k);
        }
    }

    public C4960x(C5509e0 c5509e0, long j, long j2) {
        super(new AbstractC4866a.C4868b(), new C4962b(c5509e0), j, 0L, j + 1, 0L, j2, 188L, 1000);
    }

    /* renamed from: k */
    public static int m21053k(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }
}

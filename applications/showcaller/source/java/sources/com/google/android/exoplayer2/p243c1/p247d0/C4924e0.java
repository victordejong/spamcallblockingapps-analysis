package com.google.android.exoplayer2.p243c1.p247d0;

import com.google.android.exoplayer2.p243c1.AbstractC4866a;
import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.util.C5509e0;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5536v;
/* renamed from: com.google.android.exoplayer2.c1.d0.e0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/e0.class */
public final class C4924e0 extends AbstractC4866a {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.exoplayer2.c1.d0.e0$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/e0$a.class */
    public static final class C4925a implements AbstractC4866a.AbstractC4872f {

        /* renamed from: a */
        private final C5509e0 f15114a;

        /* renamed from: b */
        private final C5536v f15115b = new C5536v();

        /* renamed from: c */
        private final int f15116c;

        public C4925a(int i, C5509e0 c5509e0) {
            this.f15116c = i;
            this.f15114a = c5509e0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v21 */
        /* JADX WARN: Type inference failed for: r0v27, types: [long] */
        /* JADX WARN: Type inference failed for: r0v28 */
        /* JADX WARN: Type inference failed for: r0v29 */
        /* JADX WARN: Type inference failed for: r0v32, types: [long] */
        /* JADX WARN: Type inference failed for: r0v4 */
        /* JADX WARN: Type inference failed for: r0v49, types: [long] */
        /* JADX WARN: Type inference failed for: r0v5 */
        /* JADX WARN: Type inference failed for: r14v0 */
        /* JADX WARN: Type inference failed for: r14v1 */
        /* JADX WARN: Type inference failed for: r14v3 */
        /* JADX WARN: Type inference failed for: r16v0 */
        /* JADX WARN: Type inference failed for: r16v1 */
        /* JADX WARN: Type inference failed for: r16v2 */
        /* JADX WARN: Type inference failed for: r18v0, types: [long] */
        /* JADX WARN: Type inference failed for: r1v14, types: [long] */
        /* JADX WARN: Type inference failed for: r22v0 */
        /* JADX WARN: Type inference failed for: r22v1 */
        /* JADX WARN: Type inference failed for: r22v2 */
        /* JADX WARN: Type inference failed for: r24v0 */
        /* JADX WARN: Type inference failed for: r24v1 */
        /* JADX WARN: Type inference failed for: r24v2, types: [long] */
        /* JADX WARN: Type inference failed for: r2v0 */
        /* renamed from: c */
        private AbstractC4866a.C4871e m21198c(C5536v c5536v, long j, long j2) {
            ?? r18;
            int m21152a;
            int m21152a2;
            int m18675d = c5536v.m18675d();
            ?? r14 = true;
            ?? r16 = 65535;
            ?? r0 = -9223372036854775807;
            while (true) {
                r18 = r0;
                if (c5536v.m18678a() < 188 || (m21152a2 = (m21152a = C4939i0.m21152a(c5536v.f17941a, c5536v.m18676c(), m18675d)) + 188) > m18675d) {
                    break;
                }
                long m21151b = C4939i0.m21151b(c5536v, m21152a, this.f15116c);
                ?? r22 = r16;
                ?? r24 = r18;
                if (m21151b != -9223372036854775807L) {
                    r24 = this.f15114a.m18905b(m21151b);
                    if (r24 > j) {
                        return r18 == -9223372036854775807L ? AbstractC4866a.C4871e.m21337d(r24, j2) : AbstractC4866a.C4871e.m21336e(j2 + r16);
                    } else if (34464 + r24 > j) {
                        return AbstractC4866a.C4871e.m21336e(j2 + m21152a);
                    } else {
                        r22 = m21152a;
                    }
                }
                c5536v.m18680M(m21152a2);
                r14 = m21152a2;
                r16 = r22;
                r0 = r24;
            }
            return r18 != -9223372036854775807L ? AbstractC4866a.C4871e.m21335f(r18, j2 + (r14 == true ? 1L : 0L)) : AbstractC4866a.C4871e.f14852a;
        }

        @Override // com.google.android.exoplayer2.p243c1.AbstractC4866a.AbstractC4872f
        /* renamed from: a */
        public void mo20933a() {
            this.f15115b.m18683J(C5515h0.f17881f);
        }

        @Override // com.google.android.exoplayer2.p243c1.AbstractC4866a.AbstractC4872f
        /* renamed from: b */
        public AbstractC4866a.C4871e mo20932b(AbstractC4979i abstractC4979i, long j) {
            long mo20999k = abstractC4979i.mo20999k();
            int min = (int) Math.min(112800L, abstractC4979i.getLength() - mo20999k);
            this.f15115b.m18684I(min);
            abstractC4979i.mo21000j(this.f15115b.f17941a, 0, min);
            return m21198c(this.f15115b, j, mo20999k);
        }
    }

    public C4924e0(C5509e0 c5509e0, long j, long j2, int i) {
        super(new AbstractC4866a.C4868b(), new C4925a(i, c5509e0), j, 0L, j + 1, 0L, j2, 188L, 940);
    }
}

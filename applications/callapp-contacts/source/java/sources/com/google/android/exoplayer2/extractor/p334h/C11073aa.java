package com.google.android.exoplayer2.extractor.p334h;

import com.google.android.exoplayer2.extractor.AbstractC10977a;
import com.google.android.exoplayer2.extractor.AbstractC11121i;
import com.google.android.exoplayer2.util.C11597ad;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11628u;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.extractor.h.aa */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/aa.class */
final class C11073aa extends AbstractC10977a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.extractor.h.aa$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/aa$a.class */
    public static final class C11074a implements AbstractC10977a.AbstractC10983f {

        /* renamed from: a */
        private final C11597ad f36072a;

        /* renamed from: b */
        private final C11628u f36073b = new C11628u();

        /* renamed from: c */
        private final int f36074c;

        /* renamed from: d */
        private final int f36075d;

        public C11074a(int i, C11597ad c11597ad, int i2) {
            this.f36074c = i;
            this.f36072a = c11597ad;
            this.f36075d = i2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v16 */
        /* JADX WARN: Type inference failed for: r0v17 */
        /* JADX WARN: Type inference failed for: r0v33 */
        /* JADX WARN: Type inference failed for: r0v39, types: [long] */
        /* JADX WARN: Type inference failed for: r0v40 */
        /* JADX WARN: Type inference failed for: r0v41 */
        /* JADX WARN: Type inference failed for: r0v44, types: [long] */
        /* JADX WARN: Type inference failed for: r0v61, types: [long] */
        /* JADX WARN: Type inference failed for: r15v0 */
        /* JADX WARN: Type inference failed for: r15v1 */
        /* JADX WARN: Type inference failed for: r15v3 */
        /* JADX WARN: Type inference failed for: r17v0 */
        /* JADX WARN: Type inference failed for: r17v1 */
        /* JADX WARN: Type inference failed for: r17v2 */
        /* JADX WARN: Type inference failed for: r19v0, types: [long] */
        /* JADX WARN: Type inference failed for: r1v21, types: [long] */
        /* JADX WARN: Type inference failed for: r22v0 */
        /* JADX WARN: Type inference failed for: r22v1 */
        /* JADX WARN: Type inference failed for: r22v2 */
        /* JADX WARN: Type inference failed for: r24v0 */
        /* JADX WARN: Type inference failed for: r24v1 */
        /* JADX WARN: Type inference failed for: r24v2, types: [long] */
        /* JADX WARN: Type inference failed for: r2v2 */
        @Override // com.google.android.exoplayer2.extractor.AbstractC10977a.AbstractC10983f
        /* renamed from: a */
        public final AbstractC10977a.C10982e mo21454a(AbstractC11121i abstractC11121i, long j) throws IOException {
            ?? r19;
            int m21522a;
            int m21522a2;
            long mo21398c = abstractC11121i.mo21398c();
            int min = (int) Math.min(this.f36075d, abstractC11121i.mo21395d() - mo21398c);
            this.f36073b.m19811a(min);
            abstractC11121i.mo21394d(this.f36073b.f38733a, 0, min);
            C11628u c11628u = this.f36073b;
            int i = c11628u.f38735c;
            ?? r15 = true;
            ?? r17 = 65535;
            ?? r0 = -9223372036854775807;
            while (true) {
                r19 = r0;
                if (c11628u.m19812a() < 188 || (m21522a2 = (m21522a = C11084ae.m21522a(c11628u.f38733a, c11628u.f38734b, i)) + 188) > i) {
                    break;
                }
                long m21524a = C11084ae.m21524a(c11628u, m21522a, this.f36074c);
                ?? r22 = r17;
                ?? r24 = r19;
                if (m21524a != -9223372036854775807L) {
                    r24 = this.f36072a.m20006b(m21524a);
                    if (r24 > j) {
                        return r19 == -9223372036854775807L ? AbstractC10977a.C10982e.m21773a(r24, mo21398c) : AbstractC10977a.C10982e.m21774a(mo21398c + r17);
                    } else if (34464 + r24 > j) {
                        return AbstractC10977a.C10982e.m21774a(mo21398c + m21522a);
                    } else {
                        r22 = m21522a;
                    }
                }
                c11628u.m19801d(m21522a2);
                r15 = m21522a2;
                r17 = r22;
                r0 = r24;
            }
            return r19 != -9223372036854775807L ? AbstractC10977a.C10982e.m21771b(r19, mo21398c + (r15 == true ? 1L : 0L)) : AbstractC10977a.C10982e.f35523a;
        }

        @Override // com.google.android.exoplayer2.extractor.AbstractC10977a.AbstractC10983f
        /* renamed from: a */
        public final void mo21455a() {
            C11628u c11628u = this.f36073b;
            byte[] bArr = C11599af.f38653f;
            c11628u.m19808a(bArr, bArr.length);
        }
    }

    public C11073aa(C11597ad c11597ad, long j, long j2, int i, int i2) {
        super(new AbstractC10977a.C10979b(), new C11074a(i, c11597ad, i2), j, 0L, j + 1, 0L, j2, 188L, 940);
    }
}

package com.google.android.exoplayer2.extractor.p328b;

import com.google.android.exoplayer2.extractor.AbstractC10977a;
import com.google.android.exoplayer2.extractor.AbstractC11121i;
import com.google.android.exoplayer2.extractor.C11134m;
import com.google.android.exoplayer2.extractor.C11139p;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.extractor.b.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/b/a.class */
final class C10986a extends AbstractC10977a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.extractor.b.a$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/b/a$a.class */
    public static final class C10988a implements AbstractC10977a.AbstractC10983f {

        /* renamed from: a */
        private final C11139p f35548a;

        /* renamed from: b */
        private final int f35549b;

        /* renamed from: c */
        private final C11134m.C11135a f35550c;

        private C10988a(C11139p c11139p, int i) {
            this.f35548a = c11139p;
            this.f35549b = i;
            this.f35550c = new C11134m.C11135a();
        }

        /* renamed from: a */
        private long m21765a(AbstractC11121i abstractC11121i) throws IOException {
            while (abstractC11121i.mo21402b() < abstractC11121i.mo21395d() - 6 && !C11134m.m21421a(abstractC11121i, this.f35548a, this.f35549b, this.f35550c)) {
                abstractC11121i.mo21397c(1);
            }
            if (abstractC11121i.mo21402b() >= abstractC11121i.mo21395d() - 6) {
                abstractC11121i.mo21397c((int) (abstractC11121i.mo21395d() - abstractC11121i.mo21402b()));
                return this.f35548a.f36487j;
            }
            return this.f35550c.f36474a;
        }

        @Override // com.google.android.exoplayer2.extractor.AbstractC10977a.AbstractC10983f
        /* renamed from: a */
        public final AbstractC10977a.C10982e mo21454a(AbstractC11121i abstractC11121i, long j) throws IOException {
            long mo21398c = abstractC11121i.mo21398c();
            long m21765a = m21765a(abstractC11121i);
            long mo21402b = abstractC11121i.mo21402b();
            abstractC11121i.mo21397c(Math.max(6, this.f35548a.f36480c));
            long m21765a2 = m21765a(abstractC11121i);
            return (m21765a > j || m21765a2 <= j) ? m21765a2 <= j ? AbstractC10977a.C10982e.m21771b(m21765a2, abstractC11121i.mo21402b()) : AbstractC10977a.C10982e.m21773a(m21765a, mo21398c) : AbstractC10977a.C10982e.m21774a(mo21402b);
        }

        @Override // com.google.android.exoplayer2.extractor.AbstractC10977a.AbstractC10983f
        /* renamed from: a */
        public /* synthetic */ void mo21455a() {
            AbstractC10977a.AbstractC10983f._CC.$default$a(this);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r31v0 */
    /* JADX WARN: Type inference failed for: r31v1 */
    /* JADX WARN: Type inference failed for: r31v2 */
    /* JADX WARN: Type inference failed for: r31v3 */
    /* JADX WARN: Type inference failed for: r31v4 */
    /* JADX WARN: Type inference failed for: r31v5 */
    /* JADX WARN: Type inference failed for: r33v0 */
    /* JADX WARN: Type inference failed for: r33v1 */
    /* JADX WARN: Type inference failed for: r33v2 */
    /* JADX WARN: Type inference failed for: r8v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C10986a(final com.google.android.exoplayer2.extractor.C11139p r19, int r20, long r21, long r23) {
        /*
            r18 = this;
            r0 = r19
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            com.google.android.exoplayer2.extractor.b._$$Lambda$LmB_5M7T1dQwslEuP3JuOptba6c r0 = new com.google.android.exoplayer2.extractor.b._$$Lambda$LmB_5M7T1dQwslEuP3JuOptba6c
            r1 = r0
            r2 = r19
            r1.<init>()
            r25 = r0
            com.google.android.exoplayer2.extractor.b.a$a r0 = new com.google.android.exoplayer2.extractor.b.a$a
            r1 = r0
            r2 = r19
            r3 = r20
            r4 = 0
            r1.<init>(r2, r3)
            r26 = r0
            r0 = r19
            long r0 = r0.m21414a()
            r27 = r0
            r0 = r19
            long r0 = r0.f36487j
            r29 = r0
            r0 = r19
            int r0 = r0.f36481d
            if (r0 <= 0) goto L45
            r0 = r19
            int r0 = r0.f36481d
            long r0 = (long) r0
            r1 = r19
            int r1 = r1.f36480c
            long r1 = (long) r1
            long r0 = r0 + r1
            r1 = 2
            long r0 = r0 / r1
            r31 = r0
            r0 = 1
            r33 = r0
        L42:
            goto L82
        L45:
            r0 = r19
            int r0 = r0.f36478a
            r1 = r19
            int r1 = r1.f36479b
            if (r0 != r1) goto L61
            r0 = r19
            int r0 = r0.f36478a
            if (r0 <= 0) goto L61
            r0 = r19
            int r0 = r0.f36478a
            long r0 = (long) r0
            r31 = r0
            goto L66
        L61:
            r0 = 4096(0x1000, double:2.0237E-320)
            r31 = r0
        L66:
            r0 = r31
            r1 = r19
            int r1 = r1.f36484g
            long r1 = (long) r1
            long r0 = r0 * r1
            r1 = r19
            int r1 = r1.f36485h
            long r1 = (long) r1
            long r0 = r0 * r1
            r1 = 8
            long r0 = r0 / r1
            r31 = r0
            r0 = 64
            r33 = r0
            goto L42
        L82:
            r0 = r18
            r1 = r25
            r2 = r26
            r3 = r27
            r4 = 0
            r5 = r29
            r6 = r21
            r7 = r23
            r8 = r31
            r9 = r33
            long r8 = r8 + r9
            r9 = 6
            r10 = r19
            int r10 = r10.f36480c
            int r9 = java.lang.Math.max(r9, r10)
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p328b.C10986a.<init>(com.google.android.exoplayer2.extractor.p, int, long, long):void");
    }
}

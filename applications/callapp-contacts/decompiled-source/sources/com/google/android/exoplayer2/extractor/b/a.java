package com.google.android.exoplayer2.extractor.b;

import com.google.android.exoplayer2.extractor.a;
import com.google.android.exoplayer2.extractor.i;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.p;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/b/a.class */
final class a extends com.google.android.exoplayer2.extractor.a {

    /* renamed from: com.google.android.exoplayer2.extractor.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/b/a$a.class */
    static final class C0425a implements a.f {

        /* renamed from: a  reason: collision with root package name */
        private final p f20929a;

        /* renamed from: b  reason: collision with root package name */
        private final int f20930b;

        /* renamed from: c  reason: collision with root package name */
        private final m.a f20931c;

        private C0425a(p pVar, int i) {
            this.f20929a = pVar;
            this.f20930b = i;
            this.f20931c = new m.a();
        }

        private long a(i iVar) throws IOException {
            while (iVar.b() < iVar.d() - 6 && !m.a(iVar, this.f20929a, this.f20930b, this.f20931c)) {
                iVar.c(1);
            }
            if (iVar.b() < iVar.d() - 6) {
                return this.f20931c.f21309a;
            }
            iVar.c((int) (iVar.d() - iVar.b()));
            return this.f20929a.j;
        }

        @Override // com.google.android.exoplayer2.extractor.a.f
        public final a.e a(i iVar, long j) throws IOException {
            long c2 = iVar.c();
            long a2 = a(iVar);
            long b2 = iVar.b();
            iVar.c(Math.max(6, this.f20929a.f21315c));
            long a3 = a(iVar);
            return (a2 > j || a3 <= j) ? a3 <= j ? a.e.b(a3, iVar.b()) : a.e.a(a2, c2) : a.e.a(b2);
        }

        @Override // com.google.android.exoplayer2.extractor.a.f
        public /* synthetic */ void a() {
            a.f._CC.$default$a(this);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public a(final com.google.android.exoplayer2.extractor.p r19, int r20, long r21, long r23) {
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
            long r0 = r0.a()
            r27 = r0
            r0 = r19
            long r0 = r0.j
            r29 = r0
            r0 = r19
            int r0 = r0.f21316d
            if (r0 <= 0) goto L_0x0045
            r0 = r19
            int r0 = r0.f21316d
            long r0 = (long) r0
            r1 = r19
            int r1 = r1.f21315c
            long r1 = (long) r1
            long r0 = r0 + r1
            r1 = 2
            long r0 = r0 / r1
            r31 = r0
            r0 = 1
            r33 = r0
        L_0x0042:
            goto L_0x0082
        L_0x0045:
            r0 = r19
            int r0 = r0.f21313a
            r1 = r19
            int r1 = r1.f21314b
            if (r0 != r1) goto L_0x0061
            r0 = r19
            int r0 = r0.f21313a
            if (r0 <= 0) goto L_0x0061
            r0 = r19
            int r0 = r0.f21313a
            long r0 = (long) r0
            r31 = r0
            goto L_0x0066
        L_0x0061:
            r0 = 4096(0x1000, double:2.0237E-320)
            r31 = r0
        L_0x0066:
            r0 = r31
            r1 = r19
            int r1 = r1.g
            long r1 = (long) r1
            long r0 = r0 * r1
            r1 = r19
            int r1 = r1.h
            long r1 = (long) r1
            long r0 = r0 * r1
            r1 = 8
            long r0 = r0 / r1
            r31 = r0
            r0 = 64
            r33 = r0
            goto L_0x0042
        L_0x0082:
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
            int r10 = r10.f21315c
            int r9 = java.lang.Math.max(r9, r10)
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.b.a.<init>(com.google.android.exoplayer2.extractor.p, int, long, long):void");
    }
}

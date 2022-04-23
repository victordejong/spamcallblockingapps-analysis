package com.google.android.exoplayer2.extractor.h;

import com.google.android.exoplayer2.extractor.h;
import com.google.android.exoplayer2.extractor.h.ad;
import com.google.android.exoplayer2.extractor.i;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.v;
import com.google.android.exoplayer2.util.u;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/c.class */
public final class c implements h {

    /* renamed from: a  reason: collision with root package name */
    public static final l f21176a = _$$Lambda$c$bP2kFCwd2Mfea4B4vbNDeAHQqJE.INSTANCE;

    /* renamed from: b  reason: collision with root package name */
    private final d f21177b = new d();

    /* renamed from: c  reason: collision with root package name */
    private final u f21178c = new u(16384);

    /* renamed from: d  reason: collision with root package name */
    private boolean f21179d;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h[] a() {
        return new h[]{new c()};
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final int a(i iVar, com.google.android.exoplayer2.extractor.u uVar) throws IOException {
        int a2 = iVar.a(this.f21178c.f22335a, 0, 16384);
        if (a2 == -1) {
            return -1;
        }
        this.f21178c.d(0);
        this.f21178c.c(a2);
        if (!this.f21179d) {
            this.f21177b.f21180a = 0L;
            this.f21179d = true;
        }
        this.f21177b.a(this.f21178c);
        return 0;
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final void a(long j, long j2) {
        this.f21179d = false;
        this.f21177b.a();
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final void a(j jVar) {
        this.f21177b.a(jVar, new ad.d(0, 1));
        jVar.a();
        jVar.a(new v.b(-9223372036854775807L));
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x007e, code lost:
        r6.a();
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x008e, code lost:
        if ((r9 - r8) < 8192) goto L_0x0093;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0091, code lost:
        return false;
     */
    @Override // com.google.android.exoplayer2.extractor.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(com.google.android.exoplayer2.extractor.i r6) throws java.io.IOException {
        /*
            r5 = this;
            com.google.android.exoplayer2.util.u r0 = new com.google.android.exoplayer2.util.u
            r1 = r0
            r2 = 10
            r1.<init>(r2)
            r7 = r0
            r0 = 0
            r8 = r0
        L_0x000c:
            r0 = r6
            r1 = r7
            byte[] r1 = r1.f22335a
            r2 = 0
            r3 = 10
            r0.d(r1, r2, r3)
            r0 = r7
            r1 = 0
            r0.d(r1)
            r0 = r7
            int r0 = r0.g()
            r1 = 4801587(0x494433, float:6.728456E-39)
            if (r0 != r1) goto L_0x0045
            r0 = r7
            r1 = 3
            r0.e(r1)
            r0 = r7
            int r0 = r0.n()
            r9 = r0
            r0 = r8
            r1 = r9
            r2 = 10
            int r1 = r1 + r2
            int r0 = r0 + r1
            r8 = r0
            r0 = r6
            r1 = r9
            r0.c(r1)
            goto L_0x000c
        L_0x0045:
            r0 = r6
            r0.a()
            r0 = r6
            r1 = r8
            r0.c(r1)
            r0 = r8
            r9 = r0
        L_0x0055:
            r0 = 0
            r10 = r0
        L_0x0058:
            r0 = r6
            r1 = r7
            byte[] r1 = r1.f22335a
            r2 = 0
            r3 = 7
            r0.d(r1, r2, r3)
            r0 = r7
            r1 = 0
            r0.d(r1)
            r0 = r7
            int r0 = r0.d()
            r11 = r0
            r0 = r11
            r1 = 44096(0xac40, float:6.1792E-41)
            if (r0 == r1) goto L_0x009e
            r0 = r11
            r1 = 44097(0xac41, float:6.1793E-41)
            if (r0 == r1) goto L_0x009e
            r0 = r6
            r0.a()
            int r9 = r9 + 1
            r0 = r9
            r1 = r8
            int r0 = r0 - r1
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 < r1) goto L_0x0093
            r0 = 0
            return r0
        L_0x0093:
            r0 = r6
            r1 = r9
            r0.c(r1)
            goto L_0x0055
        L_0x009e:
            int r10 = r10 + 1
            r0 = r10
            r1 = 4
            if (r0 < r1) goto L_0x00a9
            r0 = 1
            return r0
        L_0x00a9:
            r0 = r7
            byte[] r0 = r0.f22335a
            r1 = r11
            int r0 = com.google.android.exoplayer2.audio.c.a(r0, r1)
            r11 = r0
            r0 = r11
            r1 = -1
            if (r0 != r1) goto L_0x00bc
            r0 = 0
            return r0
        L_0x00bc:
            r0 = r6
            r1 = r11
            r2 = 7
            int r1 = r1 - r2
            r0.c(r1)
            goto L_0x0058
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.h.c.a(com.google.android.exoplayer2.extractor.i):boolean");
    }
}

package com.google.android.exoplayer2.extractor.p334h;

import com.google.android.exoplayer2.extractor.AbstractC11071h;
import com.google.android.exoplayer2.extractor.AbstractC11121i;
import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11133l;
import com.google.android.exoplayer2.extractor.AbstractC11146v;
import com.google.android.exoplayer2.extractor.C11145u;
import com.google.android.exoplayer2.extractor.p334h.AbstractC11079ad;
import com.google.android.exoplayer2.util.C11628u;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.extractor.h.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/c.class */
public final class C11087c implements AbstractC11071h {

    /* renamed from: a */
    public static final AbstractC11133l f36138a = _$$Lambda$c$bP2kFCwd2Mfea4B4vbNDeAHQqJE.INSTANCE;

    /* renamed from: b */
    private final C11088d f36139b = new C11088d();

    /* renamed from: c */
    private final C11628u f36140c = new C11628u(16384);

    /* renamed from: d */
    private boolean f36141d;

    /* renamed from: a */
    public static /* synthetic */ AbstractC11071h[] m21516a() {
        return new AbstractC11071h[]{new C11087c()};
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final int mo21437a(AbstractC11121i abstractC11121i, C11145u c11145u) throws IOException {
        int mo20033a = abstractC11121i.mo20033a(this.f36140c.f38733a, 0, 16384);
        if (mo20033a == -1) {
            return -1;
        }
        this.f36140c.m19801d(0);
        this.f36140c.m19803c(mo20033a);
        if (!this.f36141d) {
            this.f36139b.f36142a = 0L;
            this.f36141d = true;
        }
        this.f36139b.mo21464a(this.f36140c);
        return 0;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final void mo21439a(long j, long j2) {
        this.f36141d = false;
        this.f36139b.mo21467a();
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final void mo21436a(AbstractC11130j abstractC11130j) {
        this.f36139b.mo21465a(abstractC11130j, new AbstractC11079ad.C11083d(0, 1));
        abstractC11130j.mo20907a();
        abstractC11130j.mo20901a(new AbstractC11146v.C11148b(-9223372036854775807L));
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x007e, code lost:
        r6.mo21406a();
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x008e, code lost:
        if ((r9 - r8) < 8192) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0091, code lost:
        return false;
     */
    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo21438a(com.google.android.exoplayer2.extractor.AbstractC11121i r6) throws java.io.IOException {
        /*
            r5 = this;
            com.google.android.exoplayer2.util.u r0 = new com.google.android.exoplayer2.util.u
            r1 = r0
            r2 = 10
            r1.<init>(r2)
            r7 = r0
            r0 = 0
            r8 = r0
        Lc:
            r0 = r6
            r1 = r7
            byte[] r1 = r1.f38733a
            r2 = 0
            r3 = 10
            r0.mo21394d(r1, r2, r3)
            r0 = r7
            r1 = 0
            r0.m19801d(r1)
            r0 = r7
            int r0 = r0.m19796g()
            r1 = 4801587(0x494433, float:6.728456E-39)
            if (r0 != r1) goto L45
            r0 = r7
            r1 = 3
            r0.m19799e(r1)
            r0 = r7
            int r0 = r0.m19788n()
            r9 = r0
            r0 = r8
            r1 = r9
            r2 = 10
            int r1 = r1 + r2
            int r0 = r0 + r1
            r8 = r0
            r0 = r6
            r1 = r9
            r0.mo21397c(r1)
            goto Lc
        L45:
            r0 = r6
            r0.mo21406a()
            r0 = r6
            r1 = r8
            r0.mo21397c(r1)
            r0 = r8
            r9 = r0
        L55:
            r0 = 0
            r10 = r0
        L58:
            r0 = r6
            r1 = r7
            byte[] r1 = r1.f38733a
            r2 = 0
            r3 = 7
            r0.mo21394d(r1, r2, r3)
            r0 = r7
            r1 = 0
            r0.m19801d(r1)
            r0 = r7
            int r0 = r0.m19802d()
            r11 = r0
            r0 = r11
            r1 = 44096(0xac40, float:6.1792E-41)
            if (r0 == r1) goto L9e
            r0 = r11
            r1 = 44097(0xac41, float:6.1793E-41)
            if (r0 == r1) goto L9e
            r0 = r6
            r0.mo21406a()
            int r9 = r9 + 1
            r0 = r9
            r1 = r8
            int r0 = r0 - r1
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 < r1) goto L93
            r0 = 0
            return r0
        L93:
            r0 = r6
            r1 = r9
            r0.mo21397c(r1)
            goto L55
        L9e:
            int r10 = r10 + 1
            r0 = r10
            r1 = 4
            if (r0 < r1) goto La9
            r0 = 1
            return r0
        La9:
            r0 = r7
            byte[] r0 = r0.f38733a
            r1 = r11
            int r0 = com.google.android.exoplayer2.audio.C10886c.m22071a(r0, r1)
            r11 = r0
            r0 = r11
            r1 = -1
            if (r0 != r1) goto Lbc
            r0 = 0
            return r0
        Lbc:
            r0 = r6
            r1 = r11
            r2 = 7
            int r1 = r1 - r2
            r0.mo21397c(r1)
            goto L58
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p334h.C11087c.mo21438a(com.google.android.exoplayer2.extractor.i):boolean");
    }
}

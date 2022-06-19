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
/* renamed from: com.google.android.exoplayer2.extractor.h.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/a.class */
public final class C11072a implements AbstractC11071h {

    /* renamed from: a */
    public static final AbstractC11133l f36068a = _$$Lambda$a$fehofdxcgjDTJc_I2LP7IF5BG7U.INSTANCE;

    /* renamed from: b */
    private final C11086b f36069b = new C11086b();

    /* renamed from: c */
    private final C11628u f36070c = new C11628u(2786);

    /* renamed from: d */
    private boolean f36071d;

    /* renamed from: a */
    public static /* synthetic */ AbstractC11071h[] m21547a() {
        return new AbstractC11071h[]{new C11072a()};
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final int mo21437a(AbstractC11121i abstractC11121i, C11145u c11145u) throws IOException {
        int mo20033a = abstractC11121i.mo20033a(this.f36070c.f38733a, 0, 2786);
        if (mo20033a == -1) {
            return -1;
        }
        this.f36070c.m19801d(0);
        this.f36070c.m19803c(mo20033a);
        if (!this.f36071d) {
            this.f36069b.f36126a = 0L;
            this.f36071d = true;
        }
        this.f36069b.mo21464a(this.f36070c);
        return 0;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final void mo21439a(long j, long j2) {
        this.f36071d = false;
        this.f36069b.mo21467a();
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final void mo21436a(AbstractC11130j abstractC11130j) {
        this.f36069b.mo21465a(abstractC11130j, new AbstractC11079ad.C11083d(0, 1));
        abstractC11130j.mo20907a();
        abstractC11130j.mo20901a(new AbstractC11146v.C11148b(-9223372036854775807L));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0074, code lost:
        r6.mo21406a();
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0084, code lost:
        if ((r9 - r8) < 8192) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0087, code lost:
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
            r3 = 6
            r0.mo21394d(r1, r2, r3)
            r0 = r7
            r1 = 0
            r0.m19801d(r1)
            r0 = r7
            int r0 = r0.m19802d()
            r1 = 2935(0xb77, float:4.113E-42)
            if (r0 == r1) goto L94
            r0 = r6
            r0.mo21406a()
            int r9 = r9 + 1
            r0 = r9
            r1 = r8
            int r0 = r0 - r1
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 < r1) goto L89
            r0 = 0
            return r0
        L89:
            r0 = r6
            r1 = r9
            r0.mo21397c(r1)
            goto L55
        L94:
            int r10 = r10 + 1
            r0 = r10
            r1 = 4
            if (r0 < r1) goto L9f
            r0 = 1
            return r0
        L9f:
            r0 = r7
            byte[] r0 = r0.f38733a
            int r0 = com.google.android.exoplayer2.audio.C10883b.m22079a(r0)
            r11 = r0
            r0 = r11
            r1 = -1
            if (r0 != r1) goto Lb0
            r0 = 0
            return r0
        Lb0:
            r0 = r6
            r1 = r11
            r2 = 6
            int r1 = r1 - r2
            r0.mo21397c(r1)
            goto L58
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p334h.C11072a.mo21438a(com.google.android.exoplayer2.extractor.i):boolean");
    }
}

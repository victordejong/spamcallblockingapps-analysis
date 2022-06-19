package com.google.android.exoplayer2.p243c1.p247d0;

import com.google.android.exoplayer2.p243c1.AbstractC4978h;
import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.AbstractC4982l;
import com.google.android.exoplayer2.p243c1.AbstractC4992t;
import com.google.android.exoplayer2.p243c1.C4991s;
import com.google.android.exoplayer2.p243c1.p247d0.AbstractC4933h0;
import com.google.android.exoplayer2.util.C5536v;
/* renamed from: com.google.android.exoplayer2.c1.d0.h */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/h.class */
public final class C4932h implements AbstractC4978h {

    /* renamed from: a */
    public static final AbstractC4982l f15167a = C4917b.f15099a;

    /* renamed from: b */
    private final C4938i f15168b = new C4938i();

    /* renamed from: c */
    private final C5536v f15169c = new C5536v(16384);

    /* renamed from: d */
    private boolean f15170d;

    /* renamed from: a */
    public static /* synthetic */ AbstractC4978h[] m21160a() {
        return new AbstractC4978h[]{new C4932h()};
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: b */
    public void mo19973b() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0060, code lost:
        r6.mo21003g();
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0070, code lost:
        if ((r9 - r8) < 8192) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0073, code lost:
        return false;
     */
    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo19972c(com.google.android.exoplayer2.p243c1.AbstractC4979i r6) {
        /*
            r5 = this;
            com.google.android.exoplayer2.util.v r0 = new com.google.android.exoplayer2.util.v
            r1 = r0
            r2 = 10
            r1.<init>(r2)
            r7 = r0
            r0 = 0
            r8 = r0
        Lc:
            r0 = r6
            r1 = r7
            byte[] r1 = r1.f17941a
            r2 = 0
            r3 = 10
            r0.mo21000j(r1, r2, r3)
            r0 = r7
            r1 = 0
            r0.m18680M(r1)
            r0 = r7
            int r0 = r0.m18690C()
            r1 = 4801587(0x494433, float:6.728456E-39)
            if (r0 == r1) goto Lac
            r0 = r6
            r0.mo21003g()
            r0 = r6
            r1 = r8
            r0.mo21006d(r1)
            r0 = r8
            r9 = r0
        L37:
            r0 = 0
            r10 = r0
        L3a:
            r0 = r6
            r1 = r7
            byte[] r1 = r1.f17941a
            r2 = 0
            r3 = 7
            r0.mo21000j(r1, r2, r3)
            r0 = r7
            r1 = 0
            r0.m18680M(r1)
            r0 = r7
            int r0 = r0.m18687F()
            r11 = r0
            r0 = r11
            r1 = 44096(0xac40, float:6.1792E-41)
            if (r0 == r1) goto L80
            r0 = r11
            r1 = 44097(0xac41, float:6.1793E-41)
            if (r0 == r1) goto L80
            r0 = r6
            r0.mo21003g()
            int r9 = r9 + 1
            r0 = r9
            r1 = r8
            int r0 = r0 - r1
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 < r1) goto L75
            r0 = 0
            return r0
        L75:
            r0 = r6
            r1 = r9
            r0.mo21006d(r1)
            goto L37
        L80:
            int r10 = r10 + 1
            r0 = r10
            r1 = 4
            if (r0 < r1) goto L8b
            r0 = 1
            return r0
        L8b:
            r0 = r7
            byte[] r0 = r0.f17941a
            r1 = r11
            int r0 = com.google.android.exoplayer2.audio.C4822h.m21583e(r0, r1)
            r11 = r0
            r0 = r11
            r1 = -1
            if (r0 != r1) goto L9e
            r0 = 0
            return r0
        L9e:
            r0 = r6
            r1 = r11
            r2 = 7
            int r1 = r1 - r2
            r0.mo21006d(r1)
            goto L3a
        Lac:
            r0 = r7
            r1 = 3
            r0.m18679N(r1)
            r0 = r7
            int r0 = r0.m18654y()
            r9 = r0
            r0 = r8
            r1 = r9
            r2 = 10
            int r1 = r1 + r2
            int r0 = r0 + r1
            r8 = r0
            r0 = r6
            r1 = r9
            r0.mo21006d(r1)
            goto Lc
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p243c1.p247d0.C4932h.mo19972c(com.google.android.exoplayer2.c1.i):boolean");
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: f */
    public int mo19970f(AbstractC4979i abstractC4979i, C4991s c4991s) {
        int read = abstractC4979i.read(this.f15169c.f17941a, 0, 16384);
        if (read == -1) {
            return -1;
        }
        this.f15169c.m18680M(0);
        this.f15169c.m18681L(read);
        if (!this.f15170d) {
            this.f15168b.mo21069f(0L, 4);
            this.f15170d = true;
        }
        this.f15168b.mo21073b(this.f15169c);
        return 0;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: g */
    public void mo19969g(AbstractC4980j abstractC4980j) {
        this.f15168b.mo21070e(abstractC4980j, new AbstractC4933h0.C4937d(0, 1));
        abstractC4980j.mo19752o();
        abstractC4980j.mo19764c(new AbstractC4992t.C4994b(-9223372036854775807L));
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: h */
    public void mo19968h(long j, long j2) {
        this.f15170d = false;
        this.f15168b.mo21072c();
    }
}

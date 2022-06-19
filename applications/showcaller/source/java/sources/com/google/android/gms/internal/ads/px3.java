package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/px3.class */
public final class px3 implements uq3 {

    /* renamed from: a */
    public static final br3 f28214a = mx3.f26903b;

    /* renamed from: b */
    private final List<C6990ta> f28215b;

    /* renamed from: c */
    private final C6694la f28216c;

    /* renamed from: d */
    private final SparseIntArray f28217d;

    /* renamed from: e */
    private final sx3 f28218e;

    /* renamed from: f */
    private final SparseArray<ux3> f28219f;

    /* renamed from: g */
    private final SparseBooleanArray f28220g;

    /* renamed from: h */
    private final SparseBooleanArray f28221h;

    /* renamed from: i */
    private final lx3 f28222i;

    /* renamed from: j */
    private kx3 f28223j;

    /* renamed from: k */
    private xq3 f28224k;

    /* renamed from: l */
    private int f28225l;

    /* renamed from: m */
    private boolean f28226m;

    /* renamed from: n */
    private boolean f28227n;

    /* renamed from: o */
    private boolean f28228o;

    /* renamed from: p */
    private int f28229p;

    /* renamed from: q */
    private int f28230q;

    public px3(int i) {
        this(1, 0, 112800);
    }

    public px3(int i, int i2, int i3) {
        C6990ta c6990ta = new C6990ta(0L);
        this.f28218e = new cw3(0);
        this.f28215b = Collections.singletonList(c6990ta);
        this.f28216c = new C6694la(new byte[9400], 0);
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        this.f28220g = sparseBooleanArray;
        this.f28221h = new SparseBooleanArray();
        SparseArray<ux3> sparseArray = new SparseArray<>();
        this.f28219f = sparseArray;
        this.f28217d = new SparseIntArray();
        this.f28222i = new lx3(112800);
        this.f28224k = xq3.f32263c;
        this.f28230q = -1;
        sparseBooleanArray.clear();
        sparseArray.clear();
        SparseArray sparseArray2 = new SparseArray();
        int size = sparseArray2.size();
        for (int i4 = 0; i4 < size; i4++) {
            this.f28219f.put(sparseArray2.keyAt(i4), (ux3) sparseArray2.valueAt(i4));
        }
        this.f28219f.put(0, new hx3(new nx3(this)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:82:0x02e0, code lost:
        if (r0 == false) goto L83;
     */
    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo9044e(com.google.android.gms.internal.ads.vq3 r11, com.google.android.gms.internal.ads.rr3 r12) {
        /*
            Method dump skipped, instructions count: 770
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.px3.mo9044e(com.google.android.gms.internal.ads.vq3, com.google.android.gms.internal.ads.rr3):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0039, code lost:
        r9 = r9 + 1;
     */
    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo9043f(com.google.android.gms.internal.ads.vq3 r7) {
        /*
            r6 = this;
            r0 = r6
            com.google.android.gms.internal.ads.la r0 = r0.f28216c
            byte[] r0 = r0.m13634q()
            r8 = r0
            r0 = r7
            com.google.android.gms.internal.ads.pq3 r0 = (com.google.android.gms.internal.ads.pq3) r0
            r7 = r0
            r0 = r7
            r1 = r8
            r2 = 0
            r3 = 940(0x3ac, float:1.317E-42)
            r4 = 0
            boolean r0 = r0.mo9882l(r1, r2, r3, r4)
            r0 = 0
            r9 = r0
        L1a:
            r0 = r9
            r1 = 188(0xbc, float:2.63E-43)
            if (r0 >= r1) goto L4e
            r0 = 0
            r10 = r0
        L24:
            r0 = r10
            r1 = 5
            if (r0 >= r1) goto L45
            r0 = r8
            r1 = r10
            r2 = 188(0xbc, float:2.63E-43)
            int r1 = r1 * r2
            r2 = r9
            int r1 = r1 + r2
            r0 = r0[r1]
            r1 = 71
            if (r0 == r1) goto L3f
            int r9 = r9 + 1
            goto L1a
        L3f:
            int r10 = r10 + 1
            goto L24
        L45:
            r0 = r7
            r1 = r9
            r2 = 0
            boolean r0 = r0.m12196p(r1, r2)
            r0 = 1
            return r0
        L4e:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.px3.mo9043f(com.google.android.gms.internal.ads.vq3):boolean");
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: g */
    public final void mo9042g(xq3 xq3Var) {
        this.f28224k = xq3Var;
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: h */
    public final void mo9041h(long j, long j2) {
        kx3 kx3Var;
        int size = this.f28215b.size();
        for (int i = 0; i < size; i++) {
            C6990ta c6990ta = this.f28215b.get(i);
            if (c6990ta.m10758c() != -9223372036854775807L) {
                long m10760a = c6990ta.m10760a();
                if (m10760a != -9223372036854775807L) {
                    if (m10760a != 0) {
                        if (m10760a == j2) {
                        }
                    }
                }
            }
            c6990ta.m10757d(j2);
        }
        if (j2 != 0 && (kx3Var = this.f28223j) != null) {
            kx3Var.m13428b(j2);
        }
        this.f28216c.m13642i(0);
        this.f28217d.clear();
        for (int i2 = 0; i2 < this.f28219f.size(); i2++) {
            this.f28219f.valueAt(i2).mo9027b();
        }
        this.f28229p = 0;
    }
}

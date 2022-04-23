package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Stack;
import p131c.p161d.p170b.p224d.p252g.p253a.ed0;
import p131c.p161d.p170b.p224d.p252g.p253a.sd0;
import p131c.p161d.p170b.p224d.p252g.p253a.td0;
import p131c.p161d.p170b.p224d.p252g.p253a.ud0;
import p131c.p161d.p170b.p224d.p252g.p253a.wd0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzlj.class */
public final class zzlj implements zzjv, zzke {

    /* renamed from: p */
    public static final int f28534p = zzpq.m11614d("qt  ");

    /* renamed from: e */
    public int f28539e;

    /* renamed from: f */
    public int f28540f;

    /* renamed from: g */
    public long f28541g;

    /* renamed from: h */
    public int f28542h;

    /* renamed from: i */
    public zzpk f28543i;

    /* renamed from: j */
    public int f28544j;

    /* renamed from: k */
    public int f28545k;

    /* renamed from: l */
    public zzjx f28546l;

    /* renamed from: m */
    public sd0[] f28547m;

    /* renamed from: n */
    public long f28548n;

    /* renamed from: o */
    public boolean f28549o;

    /* renamed from: c */
    public final zzpk f28537c = new zzpk(16);

    /* renamed from: d */
    public final Stack<ed0> f28538d = new Stack<>();

    /* renamed from: a */
    public final zzpk f28535a = new zzpk(zzpf.f28764a);

    /* renamed from: b */
    public final zzpk f28536b = new zzpk(4);

    static {
        new td0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0337 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:157:0x052b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0323  */
    /* JADX WARN: Type inference failed for: r0v112, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v113, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3, types: [long] */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Unknown variable types count: 4 */
    @Override // com.google.android.gms.internal.ads.zzjv
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo11849a(com.google.android.gms.internal.ads.zzjy r9, com.google.android.gms.internal.ads.zzkb r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 1325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlj.mo11849a(com.google.android.gms.internal.ads.zzjy, com.google.android.gms.internal.ads.zzkb):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.gms.internal.ads.zzke
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo11853a(long r6) {
        /*
            r5 = this;
            r0 = r5
            c.d.b.d.g.a.sd0[] r0 = r0.f28547m
            r8 = r0
            r0 = r8
            int r0 = r0.length
            r9 = r0
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r10 = r0
            r0 = 0
            r12 = r0
        L_0x0011:
            r0 = r12
            r1 = r9
            if (r0 >= r1) goto L_0x005f
            r0 = r8
            r1 = r12
            r0 = r0[r1]
            c.d.b.d.g.a.wd0 r0 = r0.f15297b
            r13 = r0
            r0 = r13
            r1 = r6
            int r0 = r0.m26174a(r1)
            r14 = r0
            r0 = r14
            r15 = r0
            r0 = r14
            r1 = -1
            if (r0 != r1) goto L_0x003b
            r0 = r13
            r1 = r6
            int r0 = r0.m26173b(r1)
            r15 = r0
        L_0x003b:
            r0 = r13
            long[] r0 = r0.f15936b
            r1 = r15
            r0 = r0[r1]
            r16 = r0
            r0 = r10
            r18 = r0
            r0 = r16
            r1 = r10
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0055
            r0 = r16
            r18 = r0
        L_0x0055:
            int r12 = r12 + 1
            r0 = r18
            r10 = r0
            goto L_0x0011
        L_0x005f:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlj.mo11853a(long):long");
    }

    @Override // com.google.android.gms.internal.ads.zzjv
    /* renamed from: a */
    public final void mo11854a() {
    }

    @Override // com.google.android.gms.internal.ads.zzjv
    /* renamed from: a */
    public final void mo11852a(long j, long j2) {
        this.f28538d.clear();
        this.f28542h = 0;
        this.f28544j = 0;
        this.f28545k = 0;
        if (j == 0) {
            m11845d();
            return;
        }
        sd0[] sd0VarArr = this.f28547m;
        if (sd0VarArr != null) {
            for (sd0 sd0Var : sd0VarArr) {
                wd0 wd0Var = sd0Var.f15297b;
                int a = wd0Var.m26174a(j2);
                int i = a;
                if (a == -1) {
                    i = wd0Var.m26173b(j2);
                }
                sd0Var.f15299d = i;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzjv
    /* renamed from: a */
    public final void mo11851a(zzjx zzjxVar) {
        this.f28546l = zzjxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzjv
    /* renamed from: a */
    public final boolean mo11850a(zzjy zzjyVar) throws IOException, InterruptedException {
        return ud0.m26240b(zzjyVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v69, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Unknown variable types count: 4 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m11847b(long r9) throws com.google.android.gms.internal.ads.zzhv {
        /*
            Method dump skipped, instructions count: 537
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlj.m11847b(long):void");
    }

    @Override // com.google.android.gms.internal.ads.zzke
    /* renamed from: b */
    public final boolean mo11848b() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzke
    /* renamed from: c */
    public final long mo11846c() {
        return this.f28548n;
    }

    /* renamed from: d */
    public final void m11845d() {
        this.f28539e = 0;
        this.f28542h = 0;
    }
}

package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Stack;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dzj.class */
public final class dzj implements dxv, dya {

    /* renamed from: a  reason: collision with root package name */
    private static final dxw f27469a = new dzi();

    /* renamed from: b  reason: collision with root package name */
    private static final int f27470b = ede.c("qt  ");
    private int g;
    private int h;
    private long i;
    private int j;
    private ecy k;
    private int l;
    private int m;
    private dxx n;
    private dzl[] o;
    private long p;
    private boolean q;
    private final ecy e = new ecy(16);
    private final Stack<dyq> f = new Stack<>();

    /* renamed from: c  reason: collision with root package name */
    private final ecy f27471c = new ecy(ecx.f27645a);

    /* renamed from: d  reason: collision with root package name */
    private final ecy f27472d = new ecy(4);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r18v4, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void b(long r8) throws com.google.android.gms.internal.ads.zzhw {
        /*
            Method dump skipped, instructions count: 495
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dzj.b(long):void");
    }

    private final void c() {
        this.g = 0;
        this.j = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:157:0x032f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0517 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v105, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v106, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3, types: [long] */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Unknown variable types count: 4 */
    @Override // com.google.android.gms.internal.ads.dxv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(com.google.android.gms.internal.ads.dxt r9, com.google.android.gms.internal.ads.dyb r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 1305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dzj.a(com.google.android.gms.internal.ads.dxt, com.google.android.gms.internal.ads.dyb):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.gms.internal.ads.dya
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(long r6) {
        /*
            r5 = this;
            r0 = r5
            com.google.android.gms.internal.ads.dzl[] r0 = r0.o
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
            com.google.android.gms.internal.ads.dzo r0 = r0.f27475b
            r13 = r0
            r0 = r13
            r1 = r6
            int r0 = r0.a(r1)
            r14 = r0
            r0 = r14
            r15 = r0
            r0 = r14
            r1 = -1
            if (r0 != r1) goto L_0x003b
            r0 = r13
            r1 = r6
            int r0 = r0.b(r1)
            r15 = r0
        L_0x003b:
            r0 = r13
            long[] r0 = r0.f27486b
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dzj.a(long):long");
    }

    @Override // com.google.android.gms.internal.ads.dxv
    public final void a(long j, long j2) {
        this.f.clear();
        this.j = 0;
        this.l = 0;
        this.m = 0;
        if (j == 0) {
            c();
            return;
        }
        dzl[] dzlVarArr = this.o;
        if (dzlVarArr != null) {
            for (dzl dzlVar : dzlVarArr) {
                dzo dzoVar = dzlVar.f27475b;
                int a2 = dzoVar.a(j2);
                int i = a2;
                if (a2 == -1) {
                    i = dzoVar.b(j2);
                }
                dzlVar.f27477d = i;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dxv
    public final void a(dxx dxxVar) {
        this.n = dxxVar;
    }

    @Override // com.google.android.gms.internal.ads.dya
    public final boolean a() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.dxv
    public final boolean a(dxt dxtVar) throws IOException, InterruptedException {
        return dzk.b(dxtVar);
    }

    @Override // com.google.android.gms.internal.ads.dya
    public final long b() {
        return this.p;
    }
}

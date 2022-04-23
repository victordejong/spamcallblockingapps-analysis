package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.Stack;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dzc.class */
public final class dzc implements dxv {

    /* renamed from: a  reason: collision with root package name */
    private static final dxw f27451a = new dzf();

    /* renamed from: b  reason: collision with root package name */
    private static final int f27452b = ede.c("seig");

    /* renamed from: c  reason: collision with root package name */
    private static final byte[] f27453c = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    private int A;
    private int B;
    private boolean C;
    private dxx D;
    private dyc E;
    private dyc[] F;
    private boolean G;

    /* renamed from: d  reason: collision with root package name */
    private final int f27454d;
    private final dzn e;
    private final SparseArray<dzh> f;
    private final ecy g;
    private final ecy h;
    private final ecy i;
    private final ecy j;
    private final edc k;
    private final ecy l;
    private final byte[] m;
    private final Stack<dyq> n;
    private final LinkedList<dze> o;
    private int p;
    private int q;
    private long r;
    private int s;
    private ecy t;
    private long u;
    private int v;
    private long w;
    private long x;
    private dzh y;
    private int z;

    public dzc() {
        this(0);
    }

    private dzc(int i) {
        this(0, null);
    }

    private dzc(int i, edc edcVar) {
        this(0, null, null);
    }

    private dzc(int i, edc edcVar, dzn dznVar) {
        this.f27454d = 0;
        this.k = null;
        this.e = null;
        this.l = new ecy(16);
        this.g = new ecy(ecx.f27645a);
        this.h = new ecy(5);
        this.i = new ecy();
        this.j = new ecy(1);
        this.m = new byte[16];
        this.n = new Stack<>();
        this.o = new LinkedList<>();
        this.f = new SparseArray<>();
        this.w = -9223372036854775807L;
        this.x = -9223372036854775807L;
        a();
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0127  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.zzjo a(java.util.List<com.google.android.gms.internal.ads.dyt> r7) {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dzc.a(java.util.List):com.google.android.gms.internal.ads.zzjo");
    }

    private final void a() {
        this.p = 0;
        this.s = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v191, types: [long] */
    /* JADX WARN: Type inference failed for: r18v10 */
    /* JADX WARN: Type inference failed for: r18v13 */
    /* JADX WARN: Type inference failed for: r18v14 */
    /* JADX WARN: Type inference failed for: r18v5 */
    /* JADX WARN: Type inference failed for: r30v5 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void a(long r10) throws com.google.android.gms.internal.ads.zzhw {
        /*
            Method dump skipped, instructions count: 3107
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dzc.a(long):void");
    }

    private static void a(ecy ecyVar, int i, dzp dzpVar) throws zzhw {
        ecyVar.c(i + 8);
        int d2 = dyr.d(ecyVar.g());
        if ((d2 & 1) == 0) {
            boolean z = (d2 & 2) != 0;
            int i2 = ecyVar.i();
            if (i2 == dzpVar.f) {
                Arrays.fill(dzpVar.n, 0, i2, z);
                dzpVar.a(ecyVar.b());
                ecyVar.a(dzpVar.q.f27649a, 0, dzpVar.p);
                dzpVar.q.c(0);
                dzpVar.r = false;
                return;
            }
            int i3 = dzpVar.f;
            StringBuilder sb = new StringBuilder(41);
            sb.append("Length mismatch: ");
            sb.append(i2);
            sb.append(", ");
            sb.append(i3);
            throw new zzhw(sb.toString());
        }
        throw new zzhw("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:295:0x06a4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:308:0x0c93 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:310:0x0002 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0002 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:328:0x04af A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:329:0x043b A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v328, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v329, types: [long] */
    /* JADX WARN: Type inference failed for: r0v440, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v16 */
    /* JADX WARN: Type inference failed for: r13v3, types: [long] */
    /* JADX WARN: Type inference failed for: r13v5, types: [long] */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Type inference failed for: r19v6 */
    /* JADX WARN: Type inference failed for: r19v7, types: [long] */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Type inference failed for: r21v5 */
    /* JADX WARN: Unknown variable types count: 6 */
    @Override // com.google.android.gms.internal.ads.dxv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(com.google.android.gms.internal.ads.dxt r9, com.google.android.gms.internal.ads.dyb r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 3243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dzc.a(com.google.android.gms.internal.ads.dxt, com.google.android.gms.internal.ads.dyb):int");
    }

    @Override // com.google.android.gms.internal.ads.dxv
    public final void a(long j, long j2) {
        int size = this.f.size();
        for (int i = 0; i < size; i++) {
            this.f.valueAt(i).a();
        }
        this.o.clear();
        this.v = 0;
        this.n.clear();
        a();
    }

    @Override // com.google.android.gms.internal.ads.dxv
    public final void a(dxx dxxVar) {
        this.D = dxxVar;
    }

    @Override // com.google.android.gms.internal.ads.dxv
    public final boolean a(dxt dxtVar) throws IOException, InterruptedException {
        return dzk.a(dxtVar);
    }
}

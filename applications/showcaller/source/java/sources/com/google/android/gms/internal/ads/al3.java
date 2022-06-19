package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/al3.class */
final class al3 implements lk3, kk3 {

    /* renamed from: d */
    private final lk3[] f20008d;

    /* renamed from: g */
    private kk3 f20011g;

    /* renamed from: h */
    private dv3 f20012h;

    /* renamed from: k */
    private final yj3 f20015k;

    /* renamed from: f */
    private final ArrayList<lk3> f20010f = new ArrayList<>();

    /* renamed from: j */
    private dm3 f20014j = new xj3(new dm3[0]);

    /* renamed from: e */
    private final IdentityHashMap<bm3, Integer> f20009e = new IdentityHashMap<>();

    /* renamed from: i */
    private lk3[] f20013i = new lk3[0];

    public al3(yj3 yj3Var, long[] jArr, lk3[] lk3VarArr, byte... bArr) {
        this.f20015k = yj3Var;
        this.f20008d = lk3VarArr;
        for (int i = 0; i < lk3VarArr.length; i++) {
            long j = jArr[i];
            if (j != 0) {
                this.f20008d[i] = new yk3(lk3VarArr[i], j);
            }
        }
    }

    /* renamed from: a */
    public final lk3 m16558a(int i) {
        lk3 lk3Var;
        lk3 lk3Var2 = this.f20008d[i];
        lk3 lk3Var3 = lk3Var2;
        if (lk3Var2 instanceof yk3) {
            lk3Var = ((yk3) lk3Var2).f32532d;
            lk3Var3 = lk3Var;
        }
        return lk3Var3;
    }

    @Override // com.google.android.gms.internal.ads.lk3, com.google.android.gms.internal.ads.dm3
    /* renamed from: b */
    public final void mo8804b(long j) {
        this.f20014j.mo8804b(j);
    }

    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: c */
    public final void mo8803c() {
        for (lk3 lk3Var : this.f20008d) {
            lk3Var.mo8803c();
        }
    }

    @Override // com.google.android.gms.internal.ads.lk3, com.google.android.gms.internal.ads.dm3
    /* renamed from: d */
    public final boolean mo8802d(long j) {
        if (!this.f20010f.isEmpty()) {
            int size = this.f20010f.size();
            for (int i = 0; i < size; i++) {
                this.f20010f.get(i).mo8802d(j);
            }
            return false;
        }
        return this.f20014j.mo8802d(j);
    }

    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: e */
    public final dv3 mo8801e() {
        dv3 dv3Var = this.f20012h;
        Objects.requireNonNull(dv3Var);
        return dv3Var;
    }

    @Override // com.google.android.gms.internal.ads.lk3, com.google.android.gms.internal.ads.dm3
    /* renamed from: f */
    public final long mo8800f() {
        return this.f20014j.mo8800f();
    }

    @Override // com.google.android.gms.internal.ads.kk3
    /* renamed from: g */
    public final void mo8799g(lk3 lk3Var) {
        this.f20010f.remove(lk3Var);
        if (!this.f20010f.isEmpty()) {
            return;
        }
        int i = 0;
        for (lk3 lk3Var2 : this.f20008d) {
            i += lk3Var2.mo8801e().f21886c;
        }
        bt3[] bt3VarArr = new bt3[i];
        int i2 = 0;
        for (lk3 lk3Var3 : this.f20008d) {
            dv3 mo8801e = lk3Var3.mo8801e();
            int i3 = mo8801e.f21886c;
            int i4 = 0;
            while (i4 < i3) {
                bt3VarArr[i2] = mo8801e.m15681a(i4);
                i4++;
                i2++;
            }
        }
        this.f20012h = new dv3(bt3VarArr);
        kk3 kk3Var = this.f20011g;
        Objects.requireNonNull(kk3Var);
        kk3Var.mo8799g(this);
    }

    @Override // com.google.android.gms.internal.ads.lk3, com.google.android.gms.internal.ads.dm3
    /* renamed from: h */
    public final long mo8798h() {
        return this.f20014j.mo8798h();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [com.google.android.gms.internal.ads.lk3[]] */
    /* JADX WARN: Type inference failed for: r0v32, types: [com.google.android.gms.internal.ads.lk3] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v5 */
    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: i */
    public final long mo8797i(mm3[] mm3VarArr, boolean[] zArr, bm3[] bm3VarArr, boolean[] zArr2, long j) {
        int length;
        boolean z;
        boolean z2;
        boolean z3;
        int length2 = mm3VarArr.length;
        int[] iArr = new int[length2];
        int[] iArr2 = new int[length2];
        int i = 0;
        while (true) {
            length = mm3VarArr.length;
            if (i >= length) {
                break;
            }
            bm3 bm3Var = bm3VarArr[i];
            Integer num = bm3Var == null ? null : this.f20009e.get(bm3Var);
            iArr[i] = num == null ? -1 : num.intValue();
            iArr2[i] = -1;
            mm3 mm3Var = mm3VarArr[i];
            if (mm3Var != null) {
                bt3 m13153a = mm3Var.m13153a();
                int i2 = 0;
                while (true) {
                    lk3[] lk3VarArr = this.f20008d;
                    if (i2 >= lk3VarArr.length) {
                        break;
                    } else if (lk3VarArr[i2].mo8801e().m15680b(m13153a) != -1) {
                        iArr2[i] = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
            }
            i++;
        }
        this.f20009e.clear();
        bm3[] bm3VarArr2 = new bm3[length];
        bm3[] bm3VarArr3 = new bm3[length];
        mm3[] mm3VarArr2 = new mm3[length];
        ArrayList arrayList = new ArrayList(this.f20008d.length);
        int i3 = 0;
        boolean z4 = j;
        while (i3 < this.f20008d.length) {
            for (int i4 = 0; i4 < mm3VarArr.length; i4++) {
                bm3VarArr3[i4] = iArr[i4] == i3 ? bm3VarArr[i4] : null;
                mm3VarArr2[i4] = iArr2[i4] == i3 ? mm3VarArr[i4] : null;
            }
            ?? mo8797i = this.f20008d[i3].mo8797i(mm3VarArr2, zArr, bm3VarArr3, zArr2, z4);
            if (i3 == 0) {
                z = mo8797i;
            } else {
                int i5 = (mo8797i > z4 ? 1 : (mo8797i == z4 ? 0 : -1));
                z = z4;
                if (i5 != 0) {
                    throw new IllegalStateException("Children enabled at different positions.");
                }
            }
            int i6 = 0;
            boolean z5 = false;
            while (true) {
                z2 = z5;
                if (i6 >= mm3VarArr.length) {
                    break;
                }
                boolean z6 = true;
                if (iArr2[i6] == i3) {
                    bm3 bm3Var2 = bm3VarArr3[i6];
                    Objects.requireNonNull(bm3Var2);
                    bm3VarArr2[i6] = bm3Var2;
                    this.f20009e.put(bm3Var2, Integer.valueOf(i3));
                    z3 = true;
                } else {
                    z3 = z2;
                    if (iArr[i6] == i3) {
                        if (bm3VarArr3[i6] != null) {
                            z6 = false;
                        }
                        C7173y8.m8895d(z6);
                        z3 = z2;
                    }
                }
                i6++;
                z5 = z3;
            }
            if (z2) {
                arrayList.add(this.f20008d[i3]);
            }
            i3++;
            z4 = z;
        }
        System.arraycopy(bm3VarArr2, 0, bm3VarArr, 0, length);
        lk3[] lk3VarArr2 = (lk3[]) arrayList.toArray(new lk3[0]);
        this.f20013i = lk3VarArr2;
        this.f20014j = new xj3(lk3VarArr2);
        return z4 == true ? 1 : 0;
    }

    @Override // com.google.android.gms.internal.ads.lk3, com.google.android.gms.internal.ads.dm3
    /* renamed from: j */
    public final boolean mo8796j() {
        return this.f20014j.mo8796j();
    }

    @Override // com.google.android.gms.internal.ads.cm3
    /* renamed from: k */
    public final /* bridge */ /* synthetic */ void mo8795k(lk3 lk3Var) {
        kk3 kk3Var = this.f20011g;
        Objects.requireNonNull(kk3Var);
        kk3Var.mo8795k(this);
    }

    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: l */
    public final void mo8794l(kk3 kk3Var, long j) {
        this.f20011g = kk3Var;
        Collections.addAll(this.f20010f, this.f20008d);
        for (lk3 lk3Var : this.f20008d) {
            lk3Var.mo8794l(this, j);
        }
    }

    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: m */
    public final long mo8793m(long j, C7134x6 c7134x6) {
        lk3[] lk3VarArr = this.f20013i;
        return (lk3VarArr.length > 0 ? lk3VarArr[0] : this.f20008d[0]).mo8793m(j, c7134x6);
    }

    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: n */
    public final long mo8792n(long j) {
        long mo8792n = this.f20013i[0].mo8792n(j);
        int i = 1;
        while (true) {
            lk3[] lk3VarArr = this.f20013i;
            if (i < lk3VarArr.length) {
                if (lk3VarArr[i].mo8792n(mo8792n) != mo8792n) {
                    throw new IllegalStateException("Unexpected child seekToUs result.");
                }
                i++;
            } else {
                return mo8792n;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: q */
    public final void mo8791q(long j, boolean z) {
        for (lk3 lk3Var : this.f20013i) {
            lk3Var.mo8791q(j, false);
        }
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    @Override // com.google.android.gms.internal.ads.lk3
    public final long zzg() {
        lk3 lk3Var;
        lk3[] lk3VarArr = this.f20013i;
        int length = lk3VarArr.length;
        char c = 1;
        int i = 0;
        while (i < length) {
            lk3 lk3Var2 = lk3VarArr[i];
            char zzg = lk3Var2.zzg();
            if (zzg == -9223372036854775807L) {
                zzg = c;
                if (c == -9223372036854775807L) {
                    continue;
                } else if (lk3Var2.mo8792n(c) != c) {
                    throw new IllegalStateException("Unexpected child seekToUs result.");
                } else {
                    zzg = c;
                }
            } else if (c == -9223372036854775807L) {
                lk3[] lk3VarArr2 = this.f20013i;
                int length2 = lk3VarArr2.length;
                for (int i2 = 0; i2 < length2 && (lk3Var = lk3VarArr2[i2]) != lk3Var2; i2++) {
                    if (lk3Var.mo8792n(zzg) != zzg) {
                        throw new IllegalStateException("Unexpected child seekToUs result.");
                    }
                }
            } else if (zzg != c) {
                throw new IllegalStateException("Conflicting discontinuities.");
            } else {
                zzg = c;
            }
            i++;
            c = zzg;
        }
        return c;
    }
}

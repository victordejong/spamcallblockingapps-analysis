package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/km3.class */
public final class km3 extends mm3 {

    /* renamed from: f */
    private final on3 f25264f;

    /* renamed from: g */
    private final zzfoj<im3> f25265g;

    /* renamed from: h */
    private final AbstractC7210z8 f25266h;

    public km3(bt3 bt3Var, int[] iArr, int i, on3 on3Var, long j, long j2, long j3, float f, float f2, List<im3> list, AbstractC7210z8 abstractC7210z8) {
        super(bt3Var, iArr, 0);
        this.f25264f = on3Var;
        this.f25265g = zzfoj.zzp(list);
        this.f25266h = abstractC7210z8;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v104, types: [double] */
    /* JADX WARN: Type inference failed for: r0v106 */
    /* JADX WARN: Type inference failed for: r0v109 */
    /* JADX WARN: Type inference failed for: r0v112 */
    /* JADX WARN: Type inference failed for: r0v113 */
    /* JADX WARN: Type inference failed for: r0v123, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v125 */
    /* JADX WARN: Type inference failed for: r0v4, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59 */
    /* JADX WARN: Type inference failed for: r0v66 */
    /* JADX WARN: Type inference failed for: r0v87 */
    /* JADX WARN: Type inference failed for: r0v95, types: [double] */
    /* JADX WARN: Type inference failed for: r0v96 */
    /* JADX WARN: Type inference failed for: r0v98, types: [long] */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r21v0 */
    /* JADX WARN: Type inference failed for: r21v2, types: [double] */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Type inference failed for: r21v4 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* renamed from: e */
    public static /* synthetic */ zzfoj<zzfoj<im3>> m13846e(an3[] an3VarArr) {
        int[] iArr;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 2; i++) {
            an3 an3Var = an3VarArr[i];
            if (an3Var == null || an3Var.f20060b.length <= 1) {
                arrayList.add(null);
            } else {
                ax2 zzu = zzfoj.zzu();
                zzu.m16468f(new im3(0L, 0L));
                arrayList.add(zzu);
            }
        }
        ?? r0 = new long[2];
        for (int i2 = 0; i2 < 2; i2++) {
            an3 an3Var2 = an3VarArr[i2];
            if (an3Var2 == null) {
                r0[i2] = new long[0];
            } else {
                r0[i2] = new long[an3Var2.f20060b.length];
                int i3 = 0;
                while (true) {
                    if (i3 >= an3Var2.f20060b.length) {
                        break;
                    }
                    r0[i2][i3] = an3Var2.f20059a.m16209a(iArr[i3]).f30507j;
                    i3++;
                }
                Arrays.sort((long[]) r0[i2]);
            }
        }
        int[] iArr2 = new int[2];
        long[] jArr = new long[2];
        for (int i4 = 0; i4 < 2; i4++) {
            ?? r02 = r0[i4];
            jArr[i4] = (r02.length == 0 ? 0 : r02[0]) == true ? 1 : 0;
        }
        m13845f(arrayList, jArr);
        kx2 mo9023c = ay2.m16463b(dy2.zzb()).m8666b(2).mo9023c();
        for (int i5 = 0; i5 < 2; i5++) {
            int length = r0[i5].length;
            if (length > 1) {
                double[] dArr = new double[length];
                int i6 = 0;
                while (true) {
                    ?? r03 = r0[i5];
                    ?? r21 = false;
                    if (i6 >= r03.length) {
                        break;
                    }
                    ?? r04 = r03[i6];
                    if (r04 != -1) {
                        r21 = Math.log((double) r04);
                    }
                    dArr[i6] = r21 == true ? 1 : 0;
                    i6++;
                }
                int i7 = length - 1;
                double d = dArr[i7] - dArr[0];
                int i8 = 0;
                while (true) {
                    int i9 = i8;
                    if (i9 < i7) {
                        int i10 = i9 + 1;
                        mo9023c.zzh(Double.valueOf((double) (d == 0.0d ? 4607182418800017408 : (((dArr[i9] + dArr[i10]) * 0.5d) - dArr[0]) / d)), Integer.valueOf(i5));
                        i8 = i10;
                    }
                }
            }
        }
        zzfoj zzp = zzfoj.zzp(mo9023c.zzt());
        for (int i11 = 0; i11 < zzp.size(); i11++) {
            int intValue = ((Integer) zzp.get(i11)).intValue();
            int i12 = iArr2[intValue] + 1;
            iArr2[intValue] = i12;
            jArr[intValue] = r0[intValue][i12];
            m13845f(arrayList, jArr);
        }
        for (int i13 = 0; i13 < 2; i13++) {
            if (arrayList.get(i13) != null) {
                ?? r05 = jArr[i13];
                jArr[i13] = r05 + r05;
            }
        }
        m13845f(arrayList, jArr);
        ax2 zzu2 = zzfoj.zzu();
        for (int i14 = 0; i14 < arrayList.size(); i14++) {
            ax2 ax2Var = (ax2) arrayList.get(i14);
            zzu2.m16468f(ax2Var == null ? zzfoj.zzi() : ax2Var.m16467g());
        }
        return zzu2.m16467g();
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* renamed from: f */
    private static void m13845f(List<ax2<im3>> list, long[] jArr) {
        int i;
        char c = 0;
        int i2 = 0;
        while (true) {
            if (i2 < 2) {
                c += jArr[i2];
                i2++;
            }
        }
        for (i = 0; i < list.size(); i++) {
            ax2<im3> ax2Var = list.get(i);
            if (ax2Var != null) {
                ax2Var.m16468f(new im3(c, jArr[i]));
            }
        }
    }
}

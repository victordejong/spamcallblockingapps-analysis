package com.google.android.gms.internal.ads;

import android.util.Pair;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dn3.class */
public abstract class dn3 extends fn3 {

    /* renamed from: c */
    private cn3 f21703c;

    @Override // com.google.android.gms.internal.ads.fn3
    /* renamed from: a */
    public final void mo15136a(Object obj) {
        this.f21703c = (cn3) obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [int[][], int[][][]] */
    @Override // com.google.android.gms.internal.ads.fn3
    /* renamed from: b */
    public final hn3 mo15135b(AbstractC7023u6[] abstractC7023u6Arr, dv3 dv3Var, mk3 mk3Var, AbstractC6839p7 abstractC6839p7) {
        int[] iArr;
        boolean z;
        int i;
        int i2;
        int[] iArr2 = new int[3];
        bt3[] bt3VarArr = new bt3[3];
        ?? r0 = new int[3];
        for (int i3 = 0; i3 < 3; i3++) {
            int i4 = dv3Var.f21886c;
            bt3VarArr[i3] = new bt3[i4];
            r0[i3] = new int[i4];
        }
        int[] iArr3 = new int[2];
        for (int i5 = 0; i5 < 2; i5++) {
            iArr3[i5] = abstractC7023u6Arr[i5].mo10126F();
        }
        for (int i6 = 0; i6 < dv3Var.f21886c; i6++) {
            bt3 m15681a = dv3Var.m15681a(i6);
            int m8887f = C7174y9.m8887f(m15681a.m16209a(0).f30511n);
            int i7 = 0;
            int i8 = 2;
            int i9 = 0;
            boolean z2 = true;
            while (true) {
                boolean z3 = z2;
                if (i7 >= 2) {
                    break;
                }
                AbstractC7023u6 abstractC7023u6 = abstractC7023u6Arr[i7];
                int i10 = 0;
                for (int i11 = 0; i11 <= 0; i11++) {
                    i10 = Math.max(i10, abstractC7023u6.mo9331d(m15681a.m16209a(i11)) & 7);
                }
                boolean z4 = iArr2[i7] == 0;
                if (i10 <= i9) {
                    i2 = i8;
                    i = i9;
                    z = z3;
                    if (i10 == i9) {
                        i2 = i8;
                        i = i9;
                        z = z3;
                        if (m8887f == 5) {
                            i2 = i8;
                            i = i9;
                            z = z3;
                            if (!z3) {
                                i2 = i8;
                                i = i9;
                                z = z3;
                                if (z4) {
                                    i2 = i7;
                                    z = true;
                                    i = i10;
                                }
                            }
                        }
                    }
                } else {
                    z = z4;
                    i2 = i7;
                    i = i10;
                }
                i7++;
                i8 = i2;
                i9 = i;
                z2 = z;
            }
            if (i8 == 2) {
                iArr = new int[1];
            } else {
                AbstractC7023u6 abstractC7023u62 = abstractC7023u6Arr[i8];
                iArr = new int[1];
                for (int i12 = 0; i12 <= 0; i12++) {
                    iArr[i12] = abstractC7023u62.mo9331d(m15681a.m16209a(i12));
                }
            }
            int i13 = iArr2[i8];
            bt3VarArr[i8][i13] = m15681a;
            r0[i8][i13] = iArr;
            iArr2[i8] = i13 + 1;
        }
        dv3[] dv3VarArr = new dv3[2];
        String[] strArr = new String[2];
        int[] iArr4 = new int[2];
        for (int i14 = 0; i14 < 2; i14++) {
            int i15 = iArr2[i14];
            dv3VarArr[i14] = new dv3((bt3[]) C7101wa.m9717K(bt3VarArr[i14], i15));
            r0[i14] = (int[][]) C7101wa.m9717K(r0[i14], i15);
            strArr[i14] = abstractC7023u6Arr[i14].mo8288c();
            iArr4[i14] = abstractC7023u6Arr[i14].mo10121O();
        }
        cn3 cn3Var = new cn3(strArr, iArr4, dv3VarArr, iArr3, r0, new dv3((bt3[]) C7101wa.m9717K(bt3VarArr[2], iArr2[2])));
        Pair<C7060v6[], mm3[]> mo8324f = mo8324f(cn3Var, r0, iArr3, mk3Var, abstractC6839p7);
        return new hn3((C7060v6[]) mo8324f.first, (mm3[]) mo8324f.second, cn3Var, null);
    }

    /* renamed from: f */
    protected abstract Pair<C7060v6[], mm3[]> mo8324f(cn3 cn3Var, int[][][] iArr, int[] iArr2, mk3 mk3Var, AbstractC6839p7 abstractC6839p7);
}

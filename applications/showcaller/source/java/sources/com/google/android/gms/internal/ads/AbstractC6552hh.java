package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.Arrays;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.hh */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hh.class */
public abstract class AbstractC6552hh extends AbstractC6701lh {

    /* renamed from: b */
    private final SparseArray<Map<C7181yg, C6515gh>> f23899b = new SparseArray<>();

    /* renamed from: c */
    private final SparseBooleanArray f23900c = new SparseBooleanArray();

    /* renamed from: d */
    private C6478fh f23901d;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [int[][], int[][][]] */
    @Override // com.google.android.gms.internal.ads.AbstractC6701lh
    /* renamed from: a */
    public final C6738mh mo13519a(AbstractC7065vb[] abstractC7065vbArr, C7181yg c7181yg) {
        int[] iArr;
        int i;
        int[] iArr2 = new int[3];
        C7144xg[] c7144xgArr = new C7144xg[3];
        ?? r0 = new int[3];
        for (int i2 = 0; i2 < 3; i2++) {
            int i3 = c7181yg.f32493b;
            c7144xgArr[i2] = new C7144xg[i3];
            r0[i2] = new int[i3];
        }
        int[] iArr3 = new int[2];
        for (int i4 = 0; i4 < 2; i4++) {
            abstractC7065vbArr[i4].mo10047k();
            iArr3[i4] = 4;
        }
        for (int i5 = 0; i5 < c7181yg.f32493b; i5++) {
            C7144xg m8834a = c7181yg.m8834a(i5);
            int i6 = 0;
            int i7 = 0;
            int i8 = 2;
            while (true) {
                int i9 = i8;
                if (i6 >= 2) {
                    i6 = i9;
                    break;
                }
                AbstractC7065vb abstractC7065vb = abstractC7065vbArr[i6];
                i = i9;
                int i10 = 0;
                while (true) {
                    int i11 = m8834a.f32041a;
                    if (i10 <= 0) {
                        int mo10048d = abstractC7065vb.mo10048d(m8834a.m9185a(i10)) & 3;
                        int i12 = i7;
                        if (mo10048d > i7) {
                            if (mo10048d == 3) {
                                break;
                            }
                            i = i6;
                            i12 = mo10048d;
                        }
                        i10++;
                        i7 = i12;
                    }
                }
                i6++;
                i8 = i;
            }
            if (i6 == 2) {
                int i13 = m8834a.f32041a;
                iArr = new int[1];
            } else {
                AbstractC7065vb abstractC7065vb2 = abstractC7065vbArr[i6];
                int i14 = m8834a.f32041a;
                iArr = new int[1];
                for (int i15 = 0; i15 <= 0; i15++) {
                    iArr[i15] = abstractC7065vb2.mo10048d(m8834a.m9185a(i15));
                }
            }
            int i16 = iArr2[i6];
            c7144xgArr[i6][i16] = m8834a;
            r0[i6][i16] = iArr;
            iArr2[i6] = i16 + 1;
        }
        C7181yg[] c7181ygArr = new C7181yg[2];
        int[] iArr4 = new int[2];
        for (int i17 = 0; i17 < 2; i17++) {
            int i18 = iArr2[i17];
            c7181ygArr[i17] = new C7181yg((C7144xg[]) Arrays.copyOf(c7144xgArr[i17], i18));
            r0[i17] = (int[][]) Arrays.copyOf(r0[i17], i18);
            iArr4[i17] = abstractC7065vbArr[i17].zza();
        }
        C7181yg c7181yg2 = new C7181yg((C7144xg[]) Arrays.copyOf(c7144xgArr[2], iArr2[2]));
        C6329bh[] mo14667e = mo14667e(abstractC7065vbArr, c7181ygArr, r0);
        for (int i19 = 0; i19 < 2; i19++) {
            if (this.f23900c.get(i19)) {
                mo14667e[i19] = null;
            } else {
                C7181yg c7181yg3 = c7181ygArr[i19];
                Map<C7181yg, C6515gh> map = this.f23899b.get(i19);
                if ((map == null ? null : map.get(c7181yg3)) != null) {
                    throw null;
                }
            }
        }
        C6478fh c6478fh = new C6478fh(iArr4, c7181ygArr, iArr3, r0, c7181yg2);
        C7102wb[] c7102wbArr = new C7102wb[2];
        for (int i20 = 0; i20 < 2; i20++) {
            c7102wbArr[i20] = mo14667e[i20] != null ? C7102wb.f31495a : null;
        }
        return new C6738mh(c7181yg, new C6627jh(mo14667e, null), c6478fh, c7102wbArr);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6701lh
    /* renamed from: b */
    public final void mo13518b(Object obj) {
        this.f23901d = (C6478fh) obj;
    }

    /* renamed from: e */
    protected abstract C6329bh[] mo14667e(AbstractC7065vb[] abstractC7065vbArr, C7181yg[] c7181ygArr, int[][][] iArr);

    /* renamed from: f */
    public final void m14666f(int i, boolean z) {
        if (this.f23900c.get(i) == z) {
            return;
        }
        this.f23900c.put(i, z);
        m13516d();
    }
}

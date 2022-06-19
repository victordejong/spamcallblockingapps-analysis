package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.Arrays;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/drd.class */
public abstract class drd extends drj {

    /* renamed from: a */
    private final SparseArray<Map<dqv, drf>> f15470a = new SparseArray<>();

    /* renamed from: b */
    private final SparseBooleanArray f15471b = new SparseBooleanArray();

    /* renamed from: c */
    private int f15472c = 0;

    /* renamed from: d */
    private drc f15473d;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [int[][], int[][][]] */
    @Override // com.google.android.gms.internal.ads.drj
    /* renamed from: a */
    public final drl mo8817a(dll[] dllVarArr, dqv dqvVar) {
        int[] iArr;
        int[] iArr2 = new int[dllVarArr.length + 1];
        dqs[] dqsVarArr = new dqs[dllVarArr.length + 1];
        ?? r0 = new int[dllVarArr.length + 1];
        for (int i = 0; i < dqsVarArr.length; i++) {
            dqsVarArr[i] = new dqs[dqvVar.f15438b];
            r0[i] = new int[dqvVar.f15438b];
        }
        int[] iArr3 = new int[dllVarArr.length];
        for (int i2 = 0; i2 < iArr3.length; i2++) {
            iArr3[i2] = dllVarArr[i2].mo8963m();
        }
        for (int i3 = 0; i3 < dqvVar.f15438b; i3++) {
            dqs m8835a = dqvVar.m8835a(i3);
            int length = dllVarArr.length;
            int i4 = 0;
            for (int i5 = 0; i5 < dllVarArr.length; i5++) {
                dll dllVar = dllVarArr[i5];
                int i6 = 0;
                while (i6 < m8835a.f15427a) {
                    int mo8967a = dllVar.mo8967a(m8835a.m8842a(i6)) & 3;
                    int i7 = i4;
                    if (mo8967a > i4) {
                        length = i5;
                        if (mo8967a == 3) {
                            break;
                        }
                        i7 = mo8967a;
                        length = i5;
                    }
                    i6++;
                    i4 = i7;
                }
            }
            if (length == dllVarArr.length) {
                iArr = new int[m8835a.f15427a];
            } else {
                dll dllVar2 = dllVarArr[length];
                iArr = new int[m8835a.f15427a];
                for (int i8 = 0; i8 < m8835a.f15427a; i8++) {
                    iArr[i8] = dllVar2.mo8967a(m8835a.m8842a(i8));
                }
            }
            int i9 = iArr2[length];
            dqsVarArr[length][i9] = m8835a;
            r0[length][i9] = iArr;
            iArr2[length] = iArr2[length] + 1;
        }
        dqv[] dqvVarArr = new dqv[dllVarArr.length];
        int[] iArr4 = new int[dllVarArr.length];
        for (int i10 = 0; i10 < dllVarArr.length; i10++) {
            int i11 = iArr2[i10];
            dqvVarArr[i10] = new dqv((dqs[]) Arrays.copyOf(dqsVarArr[i10], i11));
            r0[i10] = (int[][]) Arrays.copyOf(r0[i10], i11);
            iArr4[i10] = dllVarArr[i10].mo9202a();
        }
        dqv dqvVar2 = new dqv((dqs[]) Arrays.copyOf(dqsVarArr[dllVarArr.length], iArr2[dllVarArr.length]));
        dre[] mo8828a = mo8828a(dllVarArr, dqvVarArr, r0);
        for (int i12 = 0; i12 < dllVarArr.length; i12++) {
            if (this.f15471b.get(i12)) {
                mo8828a[i12] = null;
            } else {
                dqv dqvVar3 = dqvVarArr[i12];
                Map<dqv, drf> map = this.f15470a.get(i12);
                if ((map == null ? null : map.get(dqvVar3)) != null) {
                    throw new NoSuchMethodError();
                }
            }
        }
        drc drcVar = new drc(iArr4, dqvVarArr, iArr3, r0, dqvVar2);
        dlk[] dlkVarArr = new dlk[dllVarArr.length];
        for (int i13 = 0; i13 < dllVarArr.length; i13++) {
            dlkVarArr[i13] = mo8828a[i13] != null ? dlk.f14664a : null;
        }
        return new drl(dqvVar, new drg(mo8828a), drcVar, dlkVarArr);
    }

    /* renamed from: a */
    public final void m8829a(int i, boolean z) {
        if (this.f15471b.get(i) == z) {
            return;
        }
        this.f15471b.put(i, z);
        m8820a();
    }

    @Override // com.google.android.gms.internal.ads.drj
    /* renamed from: a */
    public final void mo8818a(Object obj) {
        this.f15473d = (drc) obj;
    }

    /* renamed from: a */
    protected abstract dre[] mo8828a(dll[] dllVarArr, dqv[] dqvVarArr, int[][][] iArr);
}

package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.Arrays;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzob.class */
public abstract class zzob extends zzoh {
    private zzoe zzbhp;
    private final SparseArray<Map<zznu, zzod>> zzbhn = new SparseArray<>();
    private final SparseBooleanArray zzbho = new SparseBooleanArray();
    private int zzaif = 0;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [int[][], int[][][]] */
    @Override // com.google.android.gms.internal.ads.zzoh
    public final zzoj zza(zzib[] zzibVarArr, zznu zznuVar) throws zzhe {
        int i;
        int[] iArr;
        int i2;
        int[] iArr2 = new int[zzibVarArr.length + 1];
        int length = zzibVarArr.length + 1;
        zznr[] zznrVarArr = new zznr[length];
        ?? r0 = new int[zzibVarArr.length + 1];
        for (int i3 = 0; i3 < length; i3++) {
            zznrVarArr[i3] = new zznr[zznuVar.length];
            r0[i3] = new int[zznuVar.length];
        }
        int length2 = zzibVarArr.length;
        int[] iArr3 = new int[length2];
        for (int i4 = 0; i4 < length2; i4++) {
            iArr3[i4] = zzibVarArr[i4].zzeg();
        }
        for (int i5 = 0; i5 < zznuVar.length; i5++) {
            zznr zzbc = zznuVar.zzbc(i5);
            int length3 = zzibVarArr.length;
            int i6 = 0;
            int i7 = 0;
            while (true) {
                int i8 = i7;
                i = length3;
                if (i6 >= zzibVarArr.length) {
                    break;
                }
                zzib zzibVar = zzibVarArr[i6];
                int i9 = 0;
                while (true) {
                    i2 = i8;
                    if (i9 < zzbc.length) {
                        int zza = zzibVar.zza(zzbc.zzbb(i9)) & 3;
                        i8 = i2;
                        if (zza > i2) {
                            length3 = i6;
                            i = length3;
                            if (zza == 3) {
                                break;
                            }
                            i8 = zza;
                        }
                        i9++;
                    }
                }
                i6++;
                i7 = i2;
            }
            if (i == zzibVarArr.length) {
                iArr = new int[zzbc.length];
            } else {
                zzib zzibVar2 = zzibVarArr[i];
                iArr = new int[zzbc.length];
                for (int i10 = 0; i10 < zzbc.length; i10++) {
                    iArr[i10] = zzibVar2.zza(zzbc.zzbb(i10));
                }
            }
            int i11 = iArr2[i];
            zznrVarArr[i][i11] = zzbc;
            r0[i][i11] = iArr;
            iArr2[i] = iArr2[i] + 1;
        }
        zznu[] zznuVarArr = new zznu[zzibVarArr.length];
        int[] iArr4 = new int[zzibVarArr.length];
        for (int i12 = 0; i12 < zzibVarArr.length; i12++) {
            int i13 = iArr2[i12];
            zznuVarArr[i12] = new zznu((zznr[]) Arrays.copyOf(zznrVarArr[i12], i13));
            r0[i12] = (int[][]) Arrays.copyOf(r0[i12], i13);
            iArr4[i12] = zzibVarArr[i12].getTrackType();
        }
        zznu zznuVar2 = new zznu((zznr[]) Arrays.copyOf(zznrVarArr[zzibVarArr.length], iArr2[zzibVarArr.length]));
        zzog[] zza2 = zza(zzibVarArr, zznuVarArr, r0);
        int i14 = 0;
        while (true) {
            zzod zzodVar = null;
            if (i14 >= zzibVarArr.length) {
                zzoe zzoeVar = new zzoe(iArr4, zznuVarArr, iArr3, r0, zznuVar2);
                zzia[] zziaVarArr = new zzia[zzibVarArr.length];
                for (int i15 = 0; i15 < zzibVarArr.length; i15++) {
                    zziaVarArr[i15] = zza2[i15] != null ? zzia.zzaie : null;
                }
                return new zzoj(zznuVar, new zzoi(zza2), zzoeVar, zziaVarArr);
            }
            if (this.zzbho.get(i14)) {
                zza2[i14] = null;
            } else {
                zznu zznuVar3 = zznuVarArr[i14];
                Map<zznu, zzod> map = this.zzbhn.get(i14);
                if (map != null) {
                    zzodVar = map.get(zznuVar3);
                }
                if (zzodVar != null) {
                    throw new NoSuchMethodError();
                }
            }
            i14++;
        }
    }

    protected abstract zzog[] zza(zzib[] zzibVarArr, zznu[] zznuVarArr, int[][][] iArr) throws zzhe;

    @Override // com.google.android.gms.internal.ads.zzoh
    public final void zzd(Object obj) {
        this.zzbhp = (zzoe) obj;
    }

    public final void zzf(int i, boolean z) {
        if (this.zzbho.get(i) == z) {
            return;
        }
        this.zzbho.put(i, z);
        invalidate();
    }
}

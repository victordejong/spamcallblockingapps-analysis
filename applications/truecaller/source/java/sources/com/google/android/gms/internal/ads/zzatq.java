package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.Arrays;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzatq.class */
public abstract class zzatq extends zzatu {
    private final SparseArray<Map<zzatg, zzatp>> zza = new SparseArray<>();
    private final SparseBooleanArray zzb = new SparseBooleanArray();
    private zzato zzc;

    public abstract zzatk[] zzb(zzans[] zzansVarArr, zzatg[] zzatgVarArr, int[][][] iArr) throws zzamy;

    public final void zzc(int i, boolean z) {
        if (this.zzb.get(i) == z) {
            return;
        }
        this.zzb.put(i, z);
        zzg();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [int[][], int[][][]] */
    @Override // com.google.android.gms.internal.ads.zzatu
    public final zzatv zzd(zzans[] zzansVarArr, zzatg zzatgVar) throws zzamy {
        int[] iArr;
        int i;
        int[] iArr2 = new int[3];
        zzatf[] zzatfVarArr = new zzatf[3];
        ?? r0 = new int[3];
        for (int i2 = 0; i2 < 3; i2++) {
            int i3 = zzatgVar.zzb;
            zzatfVarArr[i2] = new zzatf[i3];
            r0[i2] = new int[i3];
        }
        int[] iArr3 = new int[2];
        for (int i4 = 0; i4 < 2; i4++) {
            zzansVarArr[i4].zzq();
            iArr3[i4] = 4;
        }
        for (int i5 = 0; i5 < zzatgVar.zzb; i5++) {
            zzatf zza = zzatgVar.zza(i5);
            int i6 = 2;
            int i7 = 0;
            int i8 = 0;
            while (true) {
                if (i7 >= 2) {
                    i7 = i6;
                    break;
                }
                zzans zzansVar = zzansVarArr[i7];
                i = i6;
                int i9 = 0;
                while (true) {
                    int i10 = zza.zza;
                    if (i9 <= 0) {
                        int zzG = zzansVar.zzG(zza.zza(i9)) & 3;
                        int i11 = i8;
                        if (zzG > i8) {
                            if (zzG == 3) {
                                break;
                            }
                            i = i7;
                            i11 = zzG;
                        }
                        i9++;
                        i8 = i11;
                    }
                }
                i7++;
                i6 = i;
            }
            if (i7 == 2) {
                int i12 = zza.zza;
                iArr = new int[1];
            } else {
                zzans zzansVar2 = zzansVarArr[i7];
                int i13 = zza.zza;
                iArr = new int[1];
                for (int i14 = 0; i14 <= 0; i14++) {
                    iArr[i14] = zzansVar2.zzG(zza.zza(i14));
                }
            }
            int i15 = iArr2[i7];
            zzatfVarArr[i7][i15] = zza;
            r0[i7][i15] = iArr;
            iArr2[i7] = i15 + 1;
        }
        int i16 = 2;
        zzatg[] zzatgVarArr = new zzatg[2];
        int[] iArr4 = new int[2];
        int i17 = 0;
        while (i17 < i16) {
            int i18 = iArr2[i17];
            zzatgVarArr[i17] = new zzatg((zzatf[]) Arrays.copyOf(zzatfVarArr[i17], i18));
            r0[i17] = (int[][]) Arrays.copyOf(r0[i17], i18);
            iArr4[i17] = zzansVarArr[i17].zza();
            i17++;
            i16 = 2;
        }
        zzatg zzatgVar2 = new zzatg((zzatf[]) Arrays.copyOf(zzatfVarArr[i16], iArr2[i16]));
        zzatk[] zzb = zzb(zzansVarArr, zzatgVarArr, r0);
        int i19 = 0;
        while (i19 < i16) {
            if (this.zzb.get(i19)) {
                zzb[i19] = null;
            } else {
                zzatg zzatgVar3 = zzatgVarArr[i19];
                Map<zzatg, zzatp> map = this.zza.get(i19);
                if ((map == null ? null : map.get(zzatgVar3)) != null) {
                    throw null;
                }
            }
            i19++;
            i16 = 2;
        }
        zzato zzatoVar = new zzato(iArr4, zzatgVarArr, iArr3, r0, zzatgVar2);
        zzant[] zzantVarArr = new zzant[2];
        for (int i20 = 0; i20 < 2; i20++) {
            zzantVarArr[i20] = zzb[i20] != null ? zzant.zza : null;
        }
        return new zzatv(zzatgVar, new zzats(zzb, null), zzatoVar, zzantVarArr);
    }

    @Override // com.google.android.gms.internal.ads.zzatu
    public final void zze(Object obj) {
        this.zzc = (zzato) obj;
    }
}

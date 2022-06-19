package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.Arrays;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavn.class */
public abstract class zzavn extends zzavr {
    private final SparseArray<Map<zzavd, zzavm>> zza = new SparseArray<>();
    private final SparseBooleanArray zzb = new SparseBooleanArray();
    private zzavl zzc;

    public abstract zzavh[] zzb(zzapm[] zzapmVarArr, zzavd[] zzavdVarArr, int[][][] iArr) throws zzaos;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [int[][], int[][][]] */
    @Override // com.google.android.gms.internal.ads.zzavr
    public final zzavs zzc(zzapm[] zzapmVarArr, zzavd zzavdVar) throws zzaos {
        int[] iArr;
        int i;
        int[] iArr2 = new int[3];
        zzavc[] zzavcVarArr = new zzavc[3];
        ?? r0 = new int[3];
        for (int i2 = 0; i2 < 3; i2++) {
            int i3 = zzavdVar.zzb;
            zzavcVarArr[i2] = new zzavc[i3];
            r0[i2] = new int[i3];
        }
        int[] iArr3 = new int[2];
        for (int i4 = 0; i4 < 2; i4++) {
            zzapmVarArr[i4].zze();
            iArr3[i4] = 4;
        }
        for (int i5 = 0; i5 < zzavdVar.zzb; i5++) {
            zzavc zzb = zzavdVar.zzb(i5);
            int i6 = 0;
            int i7 = 0;
            int i8 = 2;
            while (true) {
                int i9 = i8;
                if (i6 >= 2) {
                    i6 = i9;
                    break;
                }
                zzapm zzapmVar = zzapmVarArr[i6];
                i = i9;
                int i10 = 0;
                while (true) {
                    int i11 = zzb.zza;
                    if (i10 <= 0) {
                        int zzG = zzapmVar.zzG(zzb.zzb(i10)) & 3;
                        int i12 = i7;
                        if (zzG > i7) {
                            if (zzG == 3) {
                                break;
                            }
                            i = i6;
                            i12 = zzG;
                        }
                        i10++;
                        i7 = i12;
                    }
                }
                i6++;
                i8 = i;
            }
            if (i6 == 2) {
                int i13 = zzb.zza;
                iArr = new int[1];
            } else {
                zzapm zzapmVar2 = zzapmVarArr[i6];
                int i14 = zzb.zza;
                iArr = new int[1];
                for (int i15 = 0; i15 <= 0; i15++) {
                    iArr[i15] = zzapmVar2.zzG(zzb.zzb(i15));
                }
            }
            int i16 = iArr2[i6];
            zzavcVarArr[i6][i16] = zzb;
            r0[i6][i16] = iArr;
            iArr2[i6] = i16 + 1;
        }
        zzavd[] zzavdVarArr = new zzavd[2];
        int[] iArr4 = new int[2];
        for (int i17 = 0; i17 < 2; i17++) {
            int i18 = iArr2[i17];
            zzavdVarArr[i17] = new zzavd((zzavc[]) Arrays.copyOf(zzavcVarArr[i17], i18));
            r0[i17] = (int[][]) Arrays.copyOf(r0[i17], i18);
            iArr4[i17] = zzapmVarArr[i17].zzc();
        }
        zzavd zzavdVar2 = new zzavd((zzavc[]) Arrays.copyOf(zzavcVarArr[2], iArr2[2]));
        zzavh[] zzb2 = zzb(zzapmVarArr, zzavdVarArr, r0);
        for (int i19 = 0; i19 < 2; i19++) {
            if (this.zzb.get(i19)) {
                zzb2[i19] = null;
            } else {
                zzavd zzavdVar3 = zzavdVarArr[i19];
                Map<zzavd, zzavm> map = this.zza.get(i19);
                if ((map == null ? null : map.get(zzavdVar3)) != null) {
                    throw null;
                }
            }
        }
        zzavl zzavlVar = new zzavl(iArr4, zzavdVarArr, iArr3, r0, zzavdVar2);
        zzapn[] zzapnVarArr = new zzapn[2];
        for (int i20 = 0; i20 < 2; i20++) {
            zzapnVarArr[i20] = zzb2[i20] != null ? zzapn.zza : null;
        }
        return new zzavs(zzavdVar, new zzavp(zzb2, null), zzavlVar, zzapnVarArr);
    }

    @Override // com.google.android.gms.internal.ads.zzavr
    public final void zzd(Object obj) {
        this.zzc = (zzavl) obj;
    }

    public final void zze(int i, boolean z) {
        if (this.zzb.get(i) == z) {
            return;
        }
        this.zzb.put(i, z);
        zzg();
    }
}

package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzst.class */
public abstract class zzst extends zzsv {
    private zzss zza;

    public abstract Pair<zzin[], zzsb[]> zzb(zzss zzssVar, int[][][] iArr, int[] iArr2, zzpz zzpzVar, zzcd zzcdVar) throws zzgg;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [int[][], int[][][]] */
    @Override // com.google.android.gms.internal.ads.zzsv
    public final zzsw zzi(zzim[] zzimVarArr, zzch zzchVar, zzpz zzpzVar, zzcd zzcdVar) throws zzgg {
        boolean z;
        int[] iArr;
        int i;
        int i2;
        boolean z2;
        int[] iArr2 = new int[3];
        zzcf[] zzcfVarArr = new zzcf[3];
        ?? r0 = new int[3];
        for (int i3 = 0; i3 < 3; i3++) {
            int i4 = zzchVar.zzc;
            zzcfVarArr[i3] = new zzcf[i4];
            r0[i3] = new int[i4];
        }
        int[] iArr3 = new int[2];
        for (int i5 = 0; i5 < 2; i5++) {
            iArr3[i5] = zzimVarArr[i5].zze();
        }
        for (int i6 = 0; i6 < zzchVar.zzc; i6++) {
            zzcf zzb = zzchVar.zzb(i6);
            int zza = zzbi.zza(zzb.zzb(0).zzm);
            int i7 = 0;
            int i8 = 2;
            int i9 = 0;
            boolean z3 = true;
            while (true) {
                boolean z4 = z3;
                if (i7 >= 2) {
                    break;
                }
                zzim zzimVar = zzimVarArr[i7];
                int i10 = 0;
                for (int i11 = 0; i11 <= 0; i11++) {
                    i10 = Math.max(i10, zzimVar.zzN(zzb.zzb(i11)) & 7);
                }
                boolean z5 = iArr2[i7] == 0;
                if (i10 <= i9) {
                    i2 = i8;
                    i = i9;
                    z2 = z4;
                    if (i10 == i9) {
                        i2 = i8;
                        i = i9;
                        z2 = z4;
                        if (zza == 5) {
                            i2 = i8;
                            i = i9;
                            z2 = z4;
                            if (!z4) {
                                i2 = i8;
                                i = i9;
                                z2 = z4;
                                if (z5) {
                                    i2 = i7;
                                    z2 = true;
                                    i = i10;
                                }
                            }
                        }
                    }
                } else {
                    z2 = z5;
                    i2 = i7;
                    i = i10;
                }
                i7++;
                i8 = i2;
                i9 = i;
                z3 = z2;
            }
            if (i8 == 2) {
                iArr = new int[1];
            } else {
                zzim zzimVar2 = zzimVarArr[i8];
                iArr = new int[1];
                for (int i12 = 0; i12 <= 0; i12++) {
                    iArr[i12] = zzimVar2.zzN(zzb.zzb(i12));
                }
            }
            int i13 = iArr2[i8];
            zzcfVarArr[i8][i13] = zzb;
            r0[i8][i13] = iArr;
            iArr2[i8] = i13 + 1;
        }
        zzch[] zzchVarArr = new zzch[2];
        String[] strArr = new String[2];
        int[] iArr4 = new int[2];
        for (int i14 = 0; i14 < 2; i14++) {
            int i15 = iArr2[i14];
            zzchVarArr[i14] = new zzch((zzcf[]) zzfn.zzaa(zzcfVarArr[i14], i15));
            r0[i14] = (int[][]) zzfn.zzaa(r0[i14], i15);
            strArr[i14] = zzimVarArr[i14].zzJ();
            iArr4[i14] = zzimVarArr[i14].zzb();
        }
        zzss zzssVar = new zzss(strArr, iArr4, zzchVarArr, iArr3, r0, new zzch((zzcf[]) zzfn.zzaa(zzcfVarArr[2], iArr2[2])));
        Pair<zzin[], zzsb[]> zzb2 = zzb(zzssVar, r0, iArr3, zzpzVar, zzcdVar);
        zzsb[] zzsbVarArr = (zzsb[]) zzb2.second;
        zzfsp zzfspVar = new zzfsp();
        for (int i16 = 0; i16 < 2; i16++) {
            zzch zzc = zzssVar.zzc(i16);
            zzsb zzsbVar = zzsbVarArr[i16];
            for (int i17 = 0; i17 < zzc.zzc; i17++) {
                zzcf zzb3 = zzc.zzb(i17);
                int i18 = zzb3.zzb;
                int[] iArr5 = new int[1];
                boolean[] zArr = new boolean[1];
                for (char c = 0; c <= 0; c = 1) {
                    iArr5[0] = zzssVar.zzb(i16, i17, 0);
                    if (zzsbVar != null && zzsbVar.zza == zzb3) {
                        int i19 = 0;
                        while (true) {
                            if (i19 >= zzsbVar.zzb) {
                                break;
                            } else if (zzsbVar.zzc[i19] != 0) {
                                i19++;
                            } else if (i19 != -1) {
                                z = true;
                            }
                        }
                    }
                    z = false;
                    zArr[0] = z;
                }
                zzfspVar.zze((zzfsp) new zzcq(zzb3, iArr5, zzssVar.zza(i16), zArr));
            }
        }
        zzch zzd = zzssVar.zzd();
        for (int i20 = 0; i20 < zzd.zzc; i20++) {
            zzcf zzb4 = zzd.zzb(i20);
            int i21 = zzb4.zzb;
            int[] iArr6 = new int[1];
            Arrays.fill(iArr6, 0);
            zzfspVar.zze((zzfsp) new zzcq(zzb4, iArr6, zzbi.zza(zzb4.zzb(0).zzm), new boolean[1]));
        }
        return new zzsw((zzin[]) zzb2.first, (zzsb[]) zzb2.second, new zzcr(zzfspVar.zzf()), zzssVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzsv
    public final void zzj(Object obj) {
        this.zza = (zzss) obj;
    }
}

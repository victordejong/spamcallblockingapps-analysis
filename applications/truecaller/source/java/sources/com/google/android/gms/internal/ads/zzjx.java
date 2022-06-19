package com.google.android.gms.internal.ads;

import android.util.Pair;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzjx.class */
public abstract class zzjx extends zzjz {
    private zzjw zza;

    public abstract Pair<zzahx[], zzjg[]> zze(zzjw zzjwVar, int[][][] iArr, int[] iArr2, zzhf zzhfVar, zzaiq zzaiqVar) throws zzaeg;

    @Override // com.google.android.gms.internal.ads.zzjz
    public final void zzi(Object obj) {
        this.zza = (zzjw) obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [int[][], int[][][]] */
    @Override // com.google.android.gms.internal.ads.zzjz
    public final zzka zzj(zzahw[] zzahwVarArr, zzs zzsVar, zzhf zzhfVar, zzaiq zzaiqVar) throws zzaeg {
        int[] iArr;
        int i;
        int i2;
        boolean z;
        int[] iArr2 = new int[3];
        zzq[] zzqVarArr = new zzq[3];
        ?? r0 = new int[3];
        for (int i3 = 0; i3 < 3; i3++) {
            int i4 = zzsVar.zzb;
            zzqVarArr[i3] = new zzq[i4];
            r0[i3] = new int[i4];
        }
        int[] iArr3 = new int[2];
        for (int i5 = 0; i5 < 2; i5++) {
            iArr3[i5] = zzahwVarArr[i5].zzG();
        }
        for (int i6 = 0; i6 < zzsVar.zzb; i6++) {
            zzq zza = zzsVar.zza(i6);
            int zzf = zzalt.zzf(zza.zza(0).zzl);
            int i7 = 2;
            int i8 = 0;
            int i9 = 0;
            boolean z2 = true;
            while (true) {
                boolean z3 = z2;
                if (i8 >= 2) {
                    break;
                }
                zzahw zzahwVar = zzahwVarArr[i8];
                int i10 = 0;
                for (int i11 = 0; i11 <= 0; i11++) {
                    i10 = Math.max(i10, zzahwVar.zzH(zza.zza(i11)) & 7);
                }
                boolean z4 = iArr2[i8] == 0;
                if (i10 <= i9) {
                    i2 = i7;
                    i = i9;
                    z = z3;
                    if (i10 == i9) {
                        i2 = i7;
                        i = i9;
                        z = z3;
                        if (zzf == 5) {
                            i2 = i7;
                            i = i9;
                            z = z3;
                            if (!z3) {
                                i2 = i7;
                                i = i9;
                                z = z3;
                                if (z4) {
                                    i2 = i8;
                                    z = true;
                                    i = i10;
                                }
                            }
                        }
                    }
                } else {
                    z = z4;
                    i2 = i8;
                    i = i10;
                }
                i8++;
                i7 = i2;
                i9 = i;
                z2 = z;
            }
            if (i7 == 2) {
                iArr = new int[1];
            } else {
                zzahw zzahwVar2 = zzahwVarArr[i7];
                iArr = new int[1];
                for (int i12 = 0; i12 <= 0; i12++) {
                    iArr[i12] = zzahwVar2.zzH(zza.zza(i12));
                }
            }
            int i13 = iArr2[i7];
            zzqVarArr[i7][i13] = zza;
            r0[i7][i13] = iArr;
            iArr2[i7] = i13 + 1;
        }
        zzs[] zzsVarArr = new zzs[2];
        String[] strArr = new String[2];
        int[] iArr4 = new int[2];
        for (int i14 = 0; i14 < 2; i14++) {
            int i15 = iArr2[i14];
            zzsVarArr[i14] = new zzs((zzq[]) zzamq.zzf(zzqVarArr[i14], i15));
            r0[i14] = (int[][]) zzamq.zzf(r0[i14], i15);
            strArr[i14] = zzahwVarArr[i14].zzc();
            iArr4[i14] = zzahwVarArr[i14].zzac();
        }
        zzjw zzjwVar = new zzjw(strArr, iArr4, zzsVarArr, iArr3, r0, new zzs((zzq[]) zzamq.zzf(zzqVarArr[2], iArr2[2])));
        Pair<zzahx[], zzjg[]> zze = zze(zzjwVar, r0, iArr3, zzhfVar, zzaiqVar);
        return new zzka((zzahx[]) zze.first, (zzjg[]) zze.second, zzjwVar, null);
    }
}

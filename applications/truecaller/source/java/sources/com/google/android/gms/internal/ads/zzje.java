package com.google.android.gms.internal.ads;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzje.class */
public final class zzje extends zzjg {
    private final zzki zzd;
    private final zzfoj<zzjc> zze;
    private final zzaku zzf;

    public zzje(zzq zzqVar, int[] iArr, int i, zzki zzkiVar, long j, long j2, long j3, float f, float f2, List<zzjc> list, zzaku zzakuVar) {
        super(zzqVar, iArr, 0);
        this.zzd = zzkiVar;
        this.zze = zzfoj.zzp(list);
        this.zzf = zzakuVar;
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
    public static /* synthetic */ zzfoj<zzfoj<zzjc>> zza(zzju[] zzjuVarArr) {
        int[] iArr;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 2; i++) {
            zzju zzjuVar = zzjuVarArr[i];
            if (zzjuVar == null || zzjuVar.zzb.length <= 1) {
                arrayList.add(null);
            } else {
                zzfog zzu = zzfoj.zzu();
                zzu.zze((zzfog) new zzjc(0L, 0L));
                arrayList.add(zzu);
            }
        }
        ?? r0 = new long[2];
        for (int i2 = 0; i2 < 2; i2++) {
            zzju zzjuVar2 = zzjuVarArr[i2];
            if (zzjuVar2 == null) {
                r0[i2] = new long[0];
            } else {
                r0[i2] = new long[zzjuVar2.zzb.length];
                int i3 = 0;
                while (true) {
                    if (i3 >= zzjuVar2.zzb.length) {
                        break;
                    }
                    r0[i2][i3] = zzjuVar2.zza.zza(iArr[i3]).zzh;
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
        zzf(arrayList, jArr);
        zzfoy zza = zzfpr.zzc(zzfpw.zzb()).zzb(2).zza();
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
                        zza.zzh(Double.valueOf((double) (d == PlaceLikelihood.LIKELIHOOD_MIN_VALUE ? 4607182418800017408 : (((dArr[i9] + dArr[i10]) * 0.5d) - dArr[0]) / d)), Integer.valueOf(i5));
                        i8 = i10;
                    }
                }
            }
        }
        zzfoj zzp = zzfoj.zzp(zza.zzt());
        for (int i11 = 0; i11 < zzp.size(); i11++) {
            int intValue = ((Integer) zzp.get(i11)).intValue();
            int i12 = iArr2[intValue] + 1;
            iArr2[intValue] = i12;
            jArr[intValue] = r0[intValue][i12];
            zzf(arrayList, jArr);
        }
        for (int i13 = 0; i13 < 2; i13++) {
            if (arrayList.get(i13) != null) {
                ?? r05 = jArr[i13];
                jArr[i13] = r05 + r05;
            }
        }
        zzf(arrayList, jArr);
        zzfog zzu2 = zzfoj.zzu();
        for (int i14 = 0; i14 < arrayList.size(); i14++) {
            zzfog zzfogVar = (zzfog) arrayList.get(i14);
            zzu2.zze((zzfog) (zzfogVar == null ? zzfoj.zzi() : zzfogVar.zzf()));
        }
        return zzu2.zzf();
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    private static void zzf(List<zzfog<zzjc>> list, long[] jArr) {
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
            zzfog<zzjc> zzfogVar = list.get(i);
            if (zzfogVar != null) {
                zzfogVar.zze((zzfog<zzjc>) new zzjc(c, jArr[i]));
            }
        }
    }
}

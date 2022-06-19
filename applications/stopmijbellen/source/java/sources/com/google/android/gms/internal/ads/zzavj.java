package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavj.class */
public final class zzavj extends zzavn {
    private final AtomicReference<zzavi> zza;

    public zzavj() {
        this(null);
    }

    public zzavj(zzavo zzavoVar) {
        this.zza = new AtomicReference<>(new zzavi());
    }

    public static boolean zza(int i, boolean z) {
        int i2 = i & 3;
        boolean z2 = false;
        if (i2 != 3) {
            if (z) {
                if (i2 != 2) {
                    return false;
                }
            }
            return z2;
        }
        z2 = true;
        return z2;
    }

    private static int zzh(int i, int i2) {
        int i3;
        if (i == -1) {
            if (i2 == -1) {
                return 0;
            }
            i3 = -1;
        } else if (i2 != -1) {
            return i - i2;
        } else {
            i3 = 1;
        }
        return i3;
    }

    @Override // com.google.android.gms.internal.ads.zzavn
    public final zzavh[] zzb(zzapm[] zzapmVarArr, zzavd[] zzavdVarArr, int[][][] iArr) throws zzaos {
        boolean z;
        zzavh[] zzavhVarArr = new zzavh[2];
        zzavi zzaviVar = this.zza.get();
        int i = 0;
        boolean z2 = false;
        while (true) {
            boolean z3 = z2;
            int i2 = -1;
            if (i >= 2) {
                break;
            }
            boolean z4 = z3;
            if (zzapmVarArr[i].zzc() == 2) {
                z4 = z3;
                if (!z3) {
                    zzapm zzapmVar = zzapmVarArr[i];
                    zzavd zzavdVar = zzavdVarArr[i];
                    int[][] iArr2 = iArr[i];
                    int i3 = zzaviVar.zzd;
                    int i4 = -1;
                    zzavc zzavcVar = null;
                    int i5 = 0;
                    int i6 = 0;
                    for (int i7 = 0; i7 < zzavdVar.zzb; i7++) {
                        zzavc zzb = zzavdVar.zzb(i7);
                        int i8 = zzb.zza;
                        ArrayList arrayList = new ArrayList(1);
                        for (int i9 = 0; i9 <= 0; i9++) {
                            arrayList.add(Integer.valueOf(i9));
                        }
                        int[] iArr3 = iArr2[i7];
                        for (int i10 = 0; i10 <= 0; i10++) {
                            if (zza(iArr3[i10], true)) {
                                zzapg zzb2 = zzb.zzb(i10);
                                if (arrayList.contains(Integer.valueOf(i10))) {
                                    int i11 = zzb2.zzj;
                                    z = true;
                                } else {
                                    z = false;
                                }
                                int i12 = true != z ? 1 : 2;
                                boolean zza = zza(iArr3[i10], false);
                                int i13 = i12;
                                if (zza) {
                                    i13 = i12 + 1000;
                                }
                                boolean z5 = i13 > i6;
                                if (i13 == i6) {
                                    int zzh = zzb2.zza() != i4 ? zzh(zzb2.zza(), i4) : zzh(zzb2.zzb, i2);
                                    z5 = !zza || !z ? zzh < 0 : zzh > 0;
                                }
                                if (z5) {
                                    i2 = zzb2.zzb;
                                    i4 = zzb2.zza();
                                    i5 = i10;
                                    zzavcVar = zzb;
                                    i6 = i13;
                                }
                            }
                        }
                    }
                    zzavk zzavkVar = zzavcVar == null ? null : new zzavk(zzavcVar, i5, 0, null);
                    zzavhVarArr[i] = zzavkVar;
                    z4 = zzavkVar != null;
                }
                int i14 = zzavdVarArr[i].zzb;
            }
            i++;
            z2 = z4;
        }
        boolean z6 = false;
        for (int i15 = 0; i15 < 2; i15++) {
            if (zzapmVarArr[i15].zzc() == 1 && !z6) {
                zzavd zzavdVar2 = zzavdVarArr[i15];
                int[][] iArr4 = iArr[i15];
                String str = zzaviVar.zza;
                int i16 = 0;
                int i17 = 0;
                int i18 = -1;
                int i19 = -1;
                while (i16 < zzavdVar2.zzb) {
                    zzavc zzb3 = zzavdVar2.zzb(i16);
                    int[] iArr5 = iArr4[i16];
                    int i20 = i17;
                    int i21 = i19;
                    int i22 = 0;
                    while (true) {
                        int i23 = zzb3.zza;
                        if (i22 <= 0) {
                            int i24 = i20;
                            int i25 = i18;
                            int i26 = i21;
                            if (zza(iArr5[i22], true)) {
                                zzapg zzb4 = zzb3.zzb(i22);
                                int i27 = iArr5[i22];
                                int i28 = 1 != (zzb4.zzx & 1) ? 1 : 2;
                                int i29 = i28;
                                if (zza(i27, false)) {
                                    i29 = i28 + 1000;
                                }
                                i24 = i20;
                                i25 = i18;
                                i26 = i21;
                                if (i29 > i20) {
                                    i25 = i16;
                                    i26 = i22;
                                    i24 = i29;
                                }
                            }
                            i22++;
                            i20 = i24;
                            i18 = i25;
                            i21 = i26;
                        }
                    }
                    i16++;
                    i19 = i21;
                    i17 = i20;
                }
                zzavk zzavkVar2 = i18 == -1 ? null : new zzavk(zzavdVar2.zzb(i18), i19, 0, null);
                zzavhVarArr[i15] = zzavkVar2;
                z6 = zzavkVar2 != null;
            }
        }
        return zzavhVarArr;
    }
}

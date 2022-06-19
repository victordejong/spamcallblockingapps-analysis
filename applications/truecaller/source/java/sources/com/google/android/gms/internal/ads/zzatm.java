package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzatm.class */
public final class zzatm extends zzatq {
    private final AtomicReference<zzatl> zza;

    public zzatm() {
        this(null);
    }

    public zzatm(zzatr zzatrVar) {
        this.zza = new AtomicReference<>(new zzatl());
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

    @Override // com.google.android.gms.internal.ads.zzatq
    public final zzatk[] zzb(zzans[] zzansVarArr, zzatg[] zzatgVarArr, int[][][] iArr) throws zzamy {
        boolean z;
        zzatk[] zzatkVarArr = new zzatk[2];
        zzatl zzatlVar = this.zza.get();
        int i = 0;
        boolean z2 = false;
        while (true) {
            boolean z3 = z2;
            if (i >= 2) {
                break;
            }
            boolean z4 = z3;
            if (zzansVarArr[i].zza() == 2) {
                z4 = z3;
                if (!z3) {
                    zzans zzansVar = zzansVarArr[i];
                    zzatg zzatgVar = zzatgVarArr[i];
                    int[][] iArr2 = iArr[i];
                    int i2 = zzatlVar.zzd;
                    int i3 = 0;
                    zzatf zzatfVar = null;
                    int i4 = 0;
                    int i5 = 0;
                    int i6 = -1;
                    int i7 = -1;
                    while (true) {
                        int i8 = i7;
                        if (i3 >= zzatgVar.zzb) {
                            break;
                        }
                        zzatf zza = zzatgVar.zza(i3);
                        int i9 = zza.zza;
                        ArrayList arrayList = new ArrayList(1);
                        for (int i10 = 0; i10 <= 0; i10++) {
                            arrayList.add(Integer.valueOf(i10));
                        }
                        int[] iArr3 = iArr2[i3];
                        int i11 = i8;
                        for (int i12 = 0; i12 <= 0; i12++) {
                            if (zza(iArr3[i12], true)) {
                                zzanm zza2 = zza.zza(i12);
                                if (arrayList.contains(Integer.valueOf(i12))) {
                                    int i13 = zza2.zzj;
                                    int i14 = zza2.zzb;
                                    z = true;
                                } else {
                                    z = false;
                                }
                                int i15 = true != z ? 1 : 2;
                                boolean zza3 = zza(iArr3[i12], false);
                                int i16 = i15;
                                if (zza3) {
                                    i16 = i15 + 1000;
                                }
                                boolean z5 = i16 > i5;
                                if (i16 == i5) {
                                    int zzh = zza2.zzk() != i11 ? zzh(zza2.zzk(), i11) : zzh(zza2.zzb, i6);
                                    z5 = !zza3 || !z ? zzh < 0 : zzh > 0;
                                }
                                if (z5) {
                                    i6 = zza2.zzb;
                                    i11 = zza2.zzk();
                                    i4 = i12;
                                    zzatfVar = zza;
                                    i5 = i16;
                                }
                            }
                        }
                        i3++;
                        i7 = i11;
                    }
                    zzatn zzatnVar = zzatfVar == null ? null : new zzatn(zzatfVar, i4, 0, null);
                    zzatkVarArr[i] = zzatnVar;
                    z4 = zzatnVar != null;
                }
                int i17 = zzatgVarArr[i].zzb;
            }
            i++;
            z2 = z4;
        }
        boolean z6 = false;
        for (int i18 = 0; i18 < 2; i18++) {
            if (zzansVarArr[i18].zza() == 1 && !z6) {
                zzatg zzatgVar2 = zzatgVarArr[i18];
                int[][] iArr4 = iArr[i18];
                String str = zzatlVar.zza;
                int i19 = -1;
                int i20 = -1;
                int i21 = 0;
                int i22 = 0;
                while (i21 < zzatgVar2.zzb) {
                    zzatf zza4 = zzatgVar2.zza(i21);
                    int[] iArr5 = iArr4[i21];
                    int i23 = i19;
                    int i24 = i22;
                    int i25 = 0;
                    while (true) {
                        int i26 = zza4.zza;
                        if (i25 <= 0) {
                            int i27 = i23;
                            int i28 = i20;
                            int i29 = i24;
                            if (zza(iArr5[i25], true)) {
                                zzanm zza5 = zza4.zza(i25);
                                int i30 = iArr5[i25];
                                int i31 = 1 != (zza5.zzx & 1) ? 1 : 2;
                                int i32 = i31;
                                if (zza(i30, false)) {
                                    i32 = i31 + 1000;
                                }
                                i27 = i23;
                                i28 = i20;
                                i29 = i24;
                                if (i32 > i24) {
                                    i28 = i25;
                                    i27 = i21;
                                    i29 = i32;
                                }
                            }
                            i25++;
                            i23 = i27;
                            i20 = i28;
                            i24 = i29;
                        }
                    }
                    i21++;
                    i22 = i24;
                    i19 = i23;
                }
                zzatn zzatnVar2 = i19 == -1 ? null : new zzatn(zzatgVar2.zza(i19), i20, 0, null);
                zzatkVarArr[i18] = zzatnVar2;
                z6 = zzatnVar2 != null;
            }
        }
        return zzatkVarArr;
    }
}

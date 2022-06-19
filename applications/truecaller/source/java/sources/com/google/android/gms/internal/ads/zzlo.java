package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzlo.class */
public final class zzlo {
    private static final Comparator<zzln> zza = zzlk.zza;
    private static final Comparator<zzln> zzb = zzll.zza;
    private int zzf;
    private int zzg;
    private int zzh;
    private final zzln[] zzd = new zzln[5];
    private final ArrayList<zzln> zzc = new ArrayList<>();
    private int zze = -1;

    public zzlo(int i) {
    }

    public final void zza() {
        this.zzc.clear();
        this.zze = -1;
        this.zzf = 0;
        this.zzg = 0;
    }

    public final void zzb(int i, float f) {
        zzln zzlnVar;
        if (this.zze != 1) {
            Collections.sort(this.zzc, zza);
            this.zze = 1;
        }
        int i2 = this.zzh;
        if (i2 > 0) {
            zzln[] zzlnVarArr = this.zzd;
            int i3 = i2 - 1;
            this.zzh = i3;
            zzlnVar = zzlnVarArr[i3];
        } else {
            zzlnVar = new zzln(null);
        }
        int i4 = this.zzf;
        this.zzf = i4 + 1;
        zzlnVar.zza = i4;
        zzlnVar.zzb = i;
        zzlnVar.zzc = f;
        this.zzc.add(zzlnVar);
        this.zzg += i;
        while (true) {
            int i5 = this.zzg;
            if (i5 > 2000) {
                int i6 = i5 - 2000;
                zzln zzlnVar2 = this.zzc.get(0);
                int i7 = zzlnVar2.zzb;
                if (i7 <= i6) {
                    this.zzg -= i7;
                    this.zzc.remove(0);
                    int i8 = this.zzh;
                    if (i8 < 5) {
                        zzln[] zzlnVarArr2 = this.zzd;
                        this.zzh = i8 + 1;
                        zzlnVarArr2[i8] = zzlnVar2;
                    }
                } else {
                    zzlnVar2.zzb = i7 - i6;
                    this.zzg -= i6;
                }
            } else {
                return;
            }
        }
    }

    public final float zzc(float f) {
        if (this.zze != 0) {
            Collections.sort(this.zzc, zzb);
            this.zze = 0;
        }
        float f2 = this.zzg;
        int i = 0;
        for (int i2 = 0; i2 < this.zzc.size(); i2++) {
            zzln zzlnVar = this.zzc.get(i2);
            i += zzlnVar.zzb;
            if (i >= f2 * 0.5f) {
                return zzlnVar.zzc;
            }
        }
        if (this.zzc.isEmpty()) {
            return Float.NaN;
        }
        ArrayList<zzln> arrayList = this.zzc;
        return arrayList.get(arrayList.size() - 1).zzc;
    }
}

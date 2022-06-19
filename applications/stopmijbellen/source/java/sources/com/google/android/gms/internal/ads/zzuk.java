package com.google.android.gms.internal.ads;

import com.facebook.ads.AdError;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzuk.class */
public final class zzuk {
    private static final Comparator<zzuj> zza = zzug.zza;
    private static final Comparator<zzuj> zzb = zzuh.zza;
    private int zzf;
    private int zzg;
    private int zzh;
    private final zzuj[] zzd = new zzuj[5];
    private final ArrayList<zzuj> zzc = new ArrayList<>();
    private int zze = -1;

    public zzuk(int i) {
    }

    public final float zza(float f) {
        if (this.zze != 0) {
            Collections.sort(this.zzc, zzb);
            this.zze = 0;
        }
        float f2 = this.zzg;
        int i = 0;
        for (int i2 = 0; i2 < this.zzc.size(); i2++) {
            zzuj zzujVar = this.zzc.get(i2);
            i += zzujVar.zzb;
            if (i >= f2 * 0.5f) {
                return zzujVar.zzc;
            }
        }
        if (this.zzc.isEmpty()) {
            return Float.NaN;
        }
        ArrayList<zzuj> arrayList = this.zzc;
        return arrayList.get(arrayList.size() - 1).zzc;
    }

    public final void zzb(int i, float f) {
        zzuj zzujVar;
        if (this.zze != 1) {
            Collections.sort(this.zzc, zza);
            this.zze = 1;
        }
        int i2 = this.zzh;
        if (i2 > 0) {
            zzuj[] zzujVarArr = this.zzd;
            int i3 = i2 - 1;
            this.zzh = i3;
            zzujVar = zzujVarArr[i3];
        } else {
            zzujVar = new zzuj(null);
        }
        int i4 = this.zzf;
        this.zzf = i4 + 1;
        zzujVar.zza = i4;
        zzujVar.zzb = i;
        zzujVar.zzc = f;
        this.zzc.add(zzujVar);
        this.zzg += i;
        while (true) {
            int i5 = this.zzg;
            if (i5 > 2000) {
                int i6 = i5 - AdError.SERVER_ERROR_CODE;
                zzuj zzujVar2 = this.zzc.get(0);
                int i7 = zzujVar2.zzb;
                if (i7 <= i6) {
                    this.zzg -= i7;
                    this.zzc.remove(0);
                    int i8 = this.zzh;
                    if (i8 < 5) {
                        zzuj[] zzujVarArr2 = this.zzd;
                        this.zzh = i8 + 1;
                        zzujVarArr2[i8] = zzujVar2;
                    }
                } else {
                    zzujVar2.zzb = i7 - i6;
                    this.zzg -= i6;
                }
            } else {
                return;
            }
        }
    }

    public final void zzc() {
        this.zzc.clear();
        this.zze = -1;
        this.zzf = 0;
        this.zzg = 0;
    }
}

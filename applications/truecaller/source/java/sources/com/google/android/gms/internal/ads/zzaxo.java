package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaxo.class */
public final class zzaxo implements Comparator<zzaxd> {
    public zzaxo(zzaxp zzaxpVar) {
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(zzaxd zzaxdVar, zzaxd zzaxdVar2) {
        zzaxd zzaxdVar3 = zzaxdVar;
        zzaxd zzaxdVar4 = zzaxdVar2;
        int i = 1;
        if (zzaxdVar3.zzb() >= zzaxdVar4.zzb()) {
            if (zzaxdVar3.zzb() <= zzaxdVar4.zzb()) {
                if (zzaxdVar3.zza() >= zzaxdVar4.zza()) {
                    if (zzaxdVar3.zza() <= zzaxdVar4.zza()) {
                        float zzc = (zzaxdVar3.zzc() - zzaxdVar3.zza()) * (zzaxdVar3.zzd() - zzaxdVar3.zzb());
                        float zzc2 = (zzaxdVar4.zzc() - zzaxdVar4.zza()) * (zzaxdVar4.zzd() - zzaxdVar4.zzb());
                        if (zzc <= zzc2) {
                            if (zzc >= zzc2) {
                                return 0;
                            }
                        }
                    }
                }
            }
            return i;
        }
        i = -1;
        return i;
    }
}

package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzazl.class */
public final class zzazl implements Comparator<zzaza> {
    public zzazl(zzazm zzazmVar) {
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(zzaza zzazaVar, zzaza zzazaVar2) {
        zzaza zzazaVar3 = zzazaVar;
        zzaza zzazaVar4 = zzazaVar2;
        int i = 1;
        if (zzazaVar3.zzd() >= zzazaVar4.zzd()) {
            if (zzazaVar3.zzd() <= zzazaVar4.zzd()) {
                if (zzazaVar3.zzb() >= zzazaVar4.zzb()) {
                    if (zzazaVar3.zzb() <= zzazaVar4.zzb()) {
                        float zzc = (zzazaVar3.zzc() - zzazaVar3.zzb()) * (zzazaVar3.zza() - zzazaVar3.zzd());
                        float zzc2 = (zzazaVar4.zzc() - zzazaVar4.zzb()) * (zzazaVar4.zza() - zzazaVar4.zzd());
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

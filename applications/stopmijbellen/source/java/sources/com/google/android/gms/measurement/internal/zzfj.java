package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzr;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfj.class */
public final class zzfj implements zzr {
    public final /* synthetic */ zzfl zza;

    public zzfj(zzfl zzflVar) {
        this.zza = zzflVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzr
    public final void zza(int i, String str, List<String> list, boolean z, boolean z2) {
        int i2 = i - 1;
        zzek zzi = i2 != 0 ? i2 != 1 ? i2 != 3 ? i2 != 4 ? this.zza.zzs.zzau().zzi() : z ? this.zza.zzs.zzau().zzf() : !z2 ? this.zza.zzs.zzau().zzh() : this.zza.zzs.zzau().zze() : this.zza.zzs.zzau().zzk() : z ? this.zza.zzs.zzau().zzc() : !z2 ? this.zza.zzs.zzau().zzd() : this.zza.zzs.zzau().zzb() : this.zza.zzs.zzau().zzj();
        int size = list.size();
        if (size == 1) {
            zzi.zzb(str, list.get(0));
        } else if (size == 2) {
            zzi.zzc(str, list.get(0), list.get(1));
        } else if (size != 3) {
            zzi.zza(str);
        } else {
            zzi.zzd(str, list.get(0), list.get(1), list.get(2));
        }
    }
}

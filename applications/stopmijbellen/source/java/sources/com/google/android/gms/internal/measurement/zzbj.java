package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbj.class */
public final class zzbj extends zzaw {
    @Override // com.google.android.gms.internal.measurement.zzaw
    public final zzap zza(String str, zzg zzgVar, List<zzap> list) {
        if (str == null || str.isEmpty() || !zzgVar.zzd(str)) {
            throw new IllegalArgumentException(String.format("Command not found: %s", str));
        }
        zzap zzh = zzgVar.zzh(str);
        if (!(zzh instanceof zzai)) {
            throw new IllegalArgumentException(String.format("Function %s is not defined", str));
        }
        return ((zzai) zzh).zza(zzgVar, list);
    }
}

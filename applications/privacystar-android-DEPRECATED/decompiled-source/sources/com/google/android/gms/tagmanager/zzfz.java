package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzfz.class */
abstract class zzfz extends zzef {
    public zzfz(String str) {
        super(str);
    }

    @Override // com.google.android.gms.tagmanager.zzef
    protected final boolean zza(zzp zzpVar, zzp zzpVar2, Map<String, zzp> map) {
        String zzc = zzgj.zzc(zzpVar);
        String zzc2 = zzgj.zzc(zzpVar2);
        if (zzc == zzgj.zzqf() || zzc2 == zzgj.zzqf()) {
            return false;
        }
        return zza(zzc, zzc2, map);
    }

    protected abstract boolean zza(String str, String str2, Map<String, zzp> map);
}

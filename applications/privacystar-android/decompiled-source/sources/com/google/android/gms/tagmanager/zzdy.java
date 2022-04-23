package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzdy.class */
abstract class zzdy extends zzef {
    public zzdy(String str) {
        super(str);
    }

    @Override // com.google.android.gms.tagmanager.zzef
    protected final boolean zza(zzp zzpVar, zzp zzpVar2, Map<String, zzp> map) {
        zzgi zzd = zzgj.zzd(zzpVar);
        zzgi zzd2 = zzgj.zzd(zzpVar2);
        if (zzd == zzgj.zzqe() || zzd2 == zzgj.zzqe()) {
            return false;
        }
        return zza(zzd, zzd2, map);
    }

    protected abstract boolean zza(zzgi zzgiVar, zzgi zzgiVar2, Map<String, zzp> map);
}

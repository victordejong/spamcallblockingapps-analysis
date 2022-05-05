package com.google.android.gms.tagmanager;

import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;
import java.util.Set;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzef.class */
public abstract class zzef extends zzbq {
    private static final String zzbbt = zzb.ARG0.toString();
    private static final String zzbdp = zzb.ARG1.toString();

    public zzef(String str) {
        super(str, zzbbt, zzbdp);
    }

    protected abstract boolean zza(zzp zzpVar, zzp zzpVar2, Map<String, zzp> map);

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        for (zzp zzpVar : map.values()) {
            if (zzpVar == zzgj.zzqg()) {
                return zzgj.zzj(false);
            }
        }
        zzp zzpVar2 = map.get(zzbbt);
        zzp zzpVar3 = map.get(zzbdp);
        boolean z = false;
        if (zzpVar2 != null) {
            z = zzpVar3 == null ? false : zza(zzpVar2, zzpVar3, map);
        }
        return zzgj.zzj(Boolean.valueOf(z));
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznb() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final /* bridge */ /* synthetic */ String zzok() {
        return super.zzok();
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final /* bridge */ /* synthetic */ Set zzol() {
        return super.zzol();
    }
}

package com.google.android.gms.internal.ads;

import com.huawei.hms.support.api.entity.core.JosStatusCodes;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzao.class */
public final class zzao implements zzai {
    private zzay zzb;
    private String zzc;
    private boolean zzf;
    private final zzav zza = new zzav();
    private int zzd = JosStatusCodes.RTN_CODE_COMMON_ERROR;
    private int zze = JosStatusCodes.RTN_CODE_COMMON_ERROR;

    public final zzao zzb(String str) {
        this.zzc = str;
        return this;
    }

    public final zzao zzc(int i) {
        this.zzd = i;
        return this;
    }

    public final zzao zzd(int i) {
        this.zze = i;
        return this;
    }

    public final zzao zze(boolean z) {
        this.zzf = true;
        return this;
    }

    public final zzao zzf(zzay zzayVar) {
        this.zzb = zzayVar;
        return this;
    }

    /* renamed from: zzg */
    public final zzaq zza() {
        zzaq zzaqVar = new zzaq(this.zzc, this.zzd, this.zze, this.zzf, this.zza, null, false, null);
        zzay zzayVar = this.zzb;
        if (zzayVar != null) {
            zzaqVar.zza(zzayVar);
        }
        return zzaqVar;
    }
}

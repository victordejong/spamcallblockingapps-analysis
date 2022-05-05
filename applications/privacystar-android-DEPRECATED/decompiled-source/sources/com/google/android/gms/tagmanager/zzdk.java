package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzdk.class */
public final class zzdk extends zzbq {

    /* renamed from: ID */
    private static final String f185ID = zza.LOWERCASE_STRING.toString();
    private static final String zzbbt = zzb.ARG0.toString();

    public zzdk() {
        super(f185ID, zzbbt);
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        return zzgj.zzj(zzgj.zzc(map.get(zzbbt)).toLowerCase());
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznb() {
        return true;
    }
}

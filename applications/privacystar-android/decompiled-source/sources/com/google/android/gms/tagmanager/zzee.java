package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzee.class */
final class zzee extends zzbq {

    /* renamed from: ID */
    private static final String f189ID = zza.PLATFORM.toString();
    private static final zzp zzbdo = zzgj.zzj("Android");

    public zzee() {
        super(f189ID, new String[0]);
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        return zzbdo;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznb() {
        return true;
    }
}

package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzge.class */
final class zzge extends zzbq {

    /* renamed from: ID */
    private static final String f198ID = zza.TIME.toString();

    public zzge() {
        super(f198ID, new String[0]);
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        return zzgj.zzj(Long.valueOf(System.currentTimeMillis()));
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznb() {
        return false;
    }
}

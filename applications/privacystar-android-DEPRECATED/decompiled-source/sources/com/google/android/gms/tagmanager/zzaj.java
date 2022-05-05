package com.google.android.gms.tagmanager;

import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzaj.class */
final class zzaj extends zzbq {

    /* renamed from: ID */
    private static final String f165ID = zza.CONTAINER_VERSION.toString();
    private final String version;

    public zzaj(String str) {
        super(f165ID, new String[0]);
        this.version = str;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        return this.version == null ? zzgj.zzqg() : zzgj.zzj(this.version);
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznb() {
        return true;
    }
}

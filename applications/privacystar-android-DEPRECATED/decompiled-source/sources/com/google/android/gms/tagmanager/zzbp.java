package com.google.android.gms.tagmanager;

import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzbp.class */
public final class zzbp extends zzbq {

    /* renamed from: ID */
    private static final String f175ID = zza.EVENT.toString();
    private final zzfb zzazh;

    public zzbp(zzfb zzfbVar) {
        super(f175ID, new String[0]);
        this.zzazh = zzfbVar;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        String zzpj = this.zzazh.zzpj();
        return zzpj == null ? zzgj.zzqg() : zzgj.zzj(zzpj);
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznb() {
        return false;
    }
}

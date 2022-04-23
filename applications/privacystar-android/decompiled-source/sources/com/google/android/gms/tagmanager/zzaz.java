package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzaz.class */
public final class zzaz extends zzgh {

    /* renamed from: ID */
    private static final String f169ID = zza.DATA_LAYER_WRITE.toString();
    private static final String VALUE = zzb.VALUE.toString();
    private static final String zzbbj = zzb.CLEAR_PERSISTENT_DATA_LAYER_PREFIX.toString();
    private final DataLayer zzazg;

    public zzaz(DataLayer dataLayer) {
        super(f169ID, VALUE);
        this.zzazg = dataLayer;
    }

    @Override // com.google.android.gms.tagmanager.zzgh
    public final void zzg(Map<String, zzp> map) {
        String zzc;
        zzp zzpVar = map.get(VALUE);
        if (!(zzpVar == null || zzpVar == zzgj.zzqa())) {
            Object zzh = zzgj.zzh(zzpVar);
            if (zzh instanceof List) {
                for (Object obj : (List) zzh) {
                    if (obj instanceof Map) {
                        this.zzazg.push((Map) obj);
                    }
                }
            }
        }
        zzp zzpVar2 = map.get(zzbbj);
        if (!(zzpVar2 == null || zzpVar2 == zzgj.zzqa() || (zzc = zzgj.zzc(zzpVar2)) == zzgj.zzqf())) {
            this.zzazg.zzdd(zzc);
        }
    }
}

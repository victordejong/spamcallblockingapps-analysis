package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzgh.class */
abstract class zzgh extends zzbq {
    public zzgh(String str, String... strArr) {
        super(str, strArr);
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public zzp zze(Map<String, zzp> map) {
        zzg(map);
        return zzgj.zzqg();
    }

    public abstract void zzg(Map<String, zzp> map);

    @Override // com.google.android.gms.tagmanager.zzbq
    public boolean zznb() {
        return false;
    }
}

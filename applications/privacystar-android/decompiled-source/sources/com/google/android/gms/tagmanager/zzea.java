package com.google.android.gms.tagmanager;

import android.os.Build;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzea.class */
final class zzea extends zzbq {

    /* renamed from: ID */
    private static final String f188ID = zza.OS_VERSION.toString();

    public zzea() {
        super(f188ID, new String[0]);
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        return zzgj.zzj(Build.VERSION.RELEASE);
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznb() {
        return true;
    }
}

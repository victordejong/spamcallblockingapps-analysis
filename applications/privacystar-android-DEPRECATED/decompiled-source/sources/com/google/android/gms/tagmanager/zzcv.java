package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzcv.class */
public final class zzcv extends zzbq {

    /* renamed from: ID */
    private static final String f180ID = zza.INSTALL_REFERRER.toString();
    private static final String zzayx = zzb.COMPONENT.toString();
    private final Context zzri;

    public zzcv(Context context) {
        super(f180ID, new String[0]);
        this.zzri = context;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        String zzg = zzcw.zzg(this.zzri, map.get(zzayx) != null ? zzgj.zzc(map.get(zzayx)) : null);
        return zzg != null ? zzgj.zzj(zzg) : zzgj.zzqg();
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznb() {
        return true;
    }
}

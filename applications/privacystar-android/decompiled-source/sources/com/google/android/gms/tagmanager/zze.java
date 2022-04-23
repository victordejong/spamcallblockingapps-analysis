package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zze.class */
public final class zze extends zzbq {

    /* renamed from: ID */
    private static final String f187ID = zza.ADVERTISER_ID.toString();
    private final zza zzayw;

    public zze(Context context) {
        this(zza.zzn(context));
    }

    @VisibleForTesting
    private zze(zza zzaVar) {
        super(f187ID, new String[0]);
        this.zzayw = zzaVar;
        this.zzayw.zzmv();
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        String zzmv = this.zzayw.zzmv();
        return zzmv == null ? zzgj.zzqg() : zzgj.zzj(zzmv);
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznb() {
        return false;
    }
}

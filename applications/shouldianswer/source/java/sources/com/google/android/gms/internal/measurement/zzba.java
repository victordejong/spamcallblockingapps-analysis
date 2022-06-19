package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzx;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzba.class */
public final class zzba extends zzx.zza {
    private final /* synthetic */ Long zzc;
    private final /* synthetic */ String zzd;
    private final /* synthetic */ String zze;
    private final /* synthetic */ Bundle zzf;
    private final /* synthetic */ boolean zzg;
    private final /* synthetic */ boolean zzh;
    private final /* synthetic */ zzx zzi;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzba(zzx zzxVar, Long l, String str, String str2, Bundle bundle, boolean z, boolean z2) {
        super(zzxVar);
        this.zzi = zzxVar;
        this.zzc = l;
        this.zzd = str;
        this.zze = str2;
        this.zzf = bundle;
        this.zzg = z;
        this.zzh = z2;
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    @Override // com.google.android.gms.internal.measurement.zzx.zza
    final void zza() {
        zzm zzmVar;
        Long l = this.zzc;
        char longValue = l == null ? this.zza : l.longValue();
        zzmVar = this.zzi.zzr;
        zzmVar.logEvent(this.zzd, this.zze, this.zzf, this.zzg, this.zzh, longValue);
    }
}

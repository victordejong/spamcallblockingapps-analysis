package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.internal.BaseGmsClient;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbri.class */
public final class zzbri implements BaseGmsClient.BaseConnectionCallbacks {
    public final /* synthetic */ zzchl zza;
    public final /* synthetic */ zzbrk zzb;

    public zzbri(zzbrk zzbrkVar, zzchl zzchlVar) {
        this.zzb = zzbrkVar;
        this.zza = zzchlVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzbqx zzbqxVar;
        try {
            zzchl zzchlVar = this.zza;
            zzbqxVar = this.zzb.zza;
            zzchlVar.zzc(zzbqxVar.zzp());
        } catch (DeadObjectException e) {
            this.zza.zzd(e);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        this.zza.zzd(new RuntimeException(C22128a.m8690L1(34, "onConnectionSuspended: ", i)));
    }
}

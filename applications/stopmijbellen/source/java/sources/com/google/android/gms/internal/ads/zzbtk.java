package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import android.support.p012v4.media.C0082b;
import com.google.android.gms.common.internal.BaseGmsClient;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbtk.class */
public final class zzbtk implements BaseGmsClient.BaseConnectionCallbacks {
    public final /* synthetic */ zzcjr zza;
    public final /* synthetic */ zzbtm zzb;

    public zzbtk(zzbtm zzbtmVar, zzcjr zzcjrVar) {
        this.zzb = zzbtmVar;
        this.zza = zzcjrVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzbsz zzbszVar;
        try {
            zzcjr zzcjrVar = this.zza;
            zzbszVar = this.zzb.zza;
            zzcjrVar.zzd(zzbszVar.zzp());
        } catch (DeadObjectException e) {
            this.zza.zze(e);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        this.zza.zze(new RuntimeException(C0082b.m8758d(34, "onConnectionSuspended: ", i)));
    }
}

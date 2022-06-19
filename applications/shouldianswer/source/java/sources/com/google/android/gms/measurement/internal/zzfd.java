package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfd.class */
public class zzfd extends BroadcastReceiver {
    private static final String zza = zzfd.class.getName();
    private final zzke zzb;
    private boolean zzc;
    private boolean zzd;

    public zzfd(zzke zzkeVar) {
        Preconditions.checkNotNull(zzkeVar);
        this.zzb = zzkeVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        this.zzb.zzk();
        String action = intent.getAction();
        this.zzb.zzr().zzx().zza("NetworkBroadcastReceiver received action", action);
        if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            this.zzb.zzr().zzi().zza("NetworkBroadcastReceiver received unknown action", action);
            return;
        }
        boolean zzf = this.zzb.zzd().zzf();
        if (this.zzd == zzf) {
            return;
        }
        this.zzd = zzf;
        this.zzb.zzq().zza(new zzfg(this, zzf));
    }

    public final void zza() {
        this.zzb.zzk();
        this.zzb.zzq().zzd();
        if (this.zzc) {
            return;
        }
        this.zzb.zzn().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        this.zzd = this.zzb.zzd().zzf();
        this.zzb.zzr().zzx().zza("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.zzd));
        this.zzc = true;
    }

    public final void zzb() {
        this.zzb.zzk();
        this.zzb.zzq().zzd();
        this.zzb.zzq().zzd();
        if (!this.zzc) {
            return;
        }
        this.zzb.zzr().zzx().zza("Unregistering connectivity change receiver");
        this.zzc = false;
        this.zzd = false;
        try {
            this.zzb.zzn().unregisterReceiver(this);
        } catch (IllegalArgumentException e) {
            this.zzb.zzr().zzf().zza("Failed to unregister the network broadcast receiver", e);
        }
    }
}

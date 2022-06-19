package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzeu.class */
public final class zzeu extends BroadcastReceiver {
    @VisibleForTesting
    public static final String zza = zzeu.class.getName();
    private final zzkn zzb;
    private boolean zzc;
    private boolean zzd;

    public zzeu(zzkn zzknVar) {
        Preconditions.checkNotNull(zzknVar);
        this.zzb = zzknVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.zzb.zzr();
        String action = intent.getAction();
        this.zzb.zzau().zzk().zzb("NetworkBroadcastReceiver received action", action);
        if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            this.zzb.zzau().zze().zzb("NetworkBroadcastReceiver received unknown action", action);
            return;
        }
        boolean zzb = this.zzb.zzh().zzb();
        if (this.zzd == zzb) {
            return;
        }
        this.zzd = zzb;
        this.zzb.zzav().zzh(new zzet(this, zzb));
    }

    public final void zza() {
        this.zzb.zzr();
        this.zzb.zzav().zzg();
        if (this.zzc) {
            return;
        }
        this.zzb.zzax().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        this.zzd = this.zzb.zzh().zzb();
        this.zzb.zzau().zzk().zzb("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.zzd));
        this.zzc = true;
    }

    public final void zzb() {
        this.zzb.zzr();
        this.zzb.zzav().zzg();
        this.zzb.zzav().zzg();
        if (this.zzc) {
            this.zzb.zzau().zzk().zza("Unregistering connectivity change receiver");
            this.zzc = false;
            this.zzd = false;
            try {
                this.zzb.zzax().unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                this.zzb.zzau().zzb().zzb("Failed to unregister the network broadcast receiver", e);
            }
        }
    }
}

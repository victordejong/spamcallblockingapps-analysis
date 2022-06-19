package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.internal.measurement.zze;
import com.google.android.gms.internal.measurement.zzf;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzez.class */
public final class zzez implements ServiceConnection {
    final /* synthetic */ zzfa zza;
    private final String zzb;

    public zzez(zzfa zzfaVar, String str) {
        this.zza = zzfaVar;
        this.zzb = str;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder == null) {
            this.zza.zza.zzat().zze().zza("Install Referrer connection returned with null binder");
            return;
        }
        try {
            zzf zzb = zze.zzb(iBinder);
            if (zzb == null) {
                this.zza.zza.zzat().zze().zza("Install Referrer Service implementation was not found");
                return;
            }
            this.zza.zza.zzat().zzk().zza("Install Referrer Service connected");
            this.zza.zza.zzau().zzh(new zzey(this, zzb, this));
        } catch (Exception e) {
            this.zza.zza.zzat().zze().zzb("Exception occurred while calling Install Referrer API", e);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.zza.zza.zzat().zzk().zza("Install Referrer Service disconnected");
    }
}

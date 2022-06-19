package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.internal.ads.C1676a;
import com.google.android.gms.internal.measurement.zzbq;
import com.google.android.gms.internal.measurement.zzbr;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfd.class */
public final class zzfd implements ServiceConnection {
    public final /* synthetic */ zzfe zza;
    private final String zzb;

    public zzfd(zzfe zzfeVar, String str) {
        this.zza = zzfeVar;
        this.zzb = str;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder == null) {
            C1676a.m4786k(this.zza.zza, "Install Referrer connection returned with null binder");
            return;
        }
        try {
            zzbr zzb = zzbq.zzb(iBinder);
            if (zzb == null) {
                this.zza.zza.zzau().zze().zza("Install Referrer Service implementation was not found");
                return;
            }
            this.zza.zza.zzau().zzk().zza("Install Referrer Service connected");
            this.zza.zza.zzav().zzh(new zzfc(this, zzb, this));
        } catch (RuntimeException e) {
            this.zza.zza.zzau().zze().zzb("Exception occurred while calling Install Referrer API", e);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        C0608b.m7623l(this.zza.zza, "Install Referrer Service disconnected");
    }
}

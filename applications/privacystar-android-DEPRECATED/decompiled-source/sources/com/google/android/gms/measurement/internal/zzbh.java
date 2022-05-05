package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.support.annotation.MainThread;
import com.google.android.gms.internal.measurement.zzu;
import com.google.android.gms.internal.measurement.zzv;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzbh.class */
public final class zzbh implements ServiceConnection {
    private final String packageName;
    final /* synthetic */ zzbg zzaoe;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbh(zzbg zzbgVar, String str) {
        this.zzaoe = zzbgVar;
        this.packageName = str;
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder == null) {
            this.zzaoe.zzadj.zzgo().zzjg().zzbx("Install Referrer connection returned with null binder");
            return;
        }
        try {
            zzu zza = zzv.zza(iBinder);
            if (zza == null) {
                this.zzaoe.zzadj.zzgo().zzjg().zzbx("Install Referrer Service implementation was not found");
                return;
            }
            this.zzaoe.zzadj.zzgo().zzjj().zzbx("Install Referrer Service connected");
            this.zzaoe.zzadj.zzgn().zzc(new zzbi(this, zza, this));
        } catch (Exception e) {
            this.zzaoe.zzadj.zzgo().zzjg().zzg("Exception occurred while calling Install Referrer API", e);
        }
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceDisconnected(ComponentName componentName) {
        this.zzaoe.zzadj.zzgo().zzjj().zzbx("Install Referrer Service disconnected");
    }
}

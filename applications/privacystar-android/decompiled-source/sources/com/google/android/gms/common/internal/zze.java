package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import androidx.work.PeriodicWorkRequest;
import com.apptentive.android.sdk.network.HttpRequestRetryPolicyDefault;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.stats.ConnectionTracker;
import java.util.HashMap;
import javax.annotation.concurrent.GuardedBy;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zze.class */
public final class zze extends GmsClientSupervisor implements Handler.Callback {
    private final Handler mHandler;
    private final Context zzdv;
    @GuardedBy("mConnectionStatus")
    private final HashMap<GmsClientSupervisor.zza, zzf> zzdu = new HashMap<>();
    private final ConnectionTracker zzdw = ConnectionTracker.getInstance();
    private final long zzdx = HttpRequestRetryPolicyDefault.DEFAULT_RETRY_TIMEOUT_MILLIS;
    private final long zzdy = PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zze(Context context) {
        this.zzdv = context.getApplicationContext();
        this.mHandler = new com.google.android.gms.internal.common.zze(context.getMainLooper(), this);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        switch (message.what) {
            case 0:
                synchronized (this.zzdu) {
                    GmsClientSupervisor.zza zzaVar = (GmsClientSupervisor.zza) message.obj;
                    zzf zzfVar = this.zzdu.get(zzaVar);
                    if (zzfVar != null && zzfVar.zzr()) {
                        if (zzfVar.isBound()) {
                            zzfVar.zzf("GmsClientSupervisor");
                        }
                        this.zzdu.remove(zzaVar);
                    }
                }
                return true;
            case 1:
                synchronized (this.zzdu) {
                    GmsClientSupervisor.zza zzaVar2 = (GmsClientSupervisor.zza) message.obj;
                    zzf zzfVar2 = this.zzdu.get(zzaVar2);
                    if (zzfVar2 != null && zzfVar2.getState() == 3) {
                        String valueOf = String.valueOf(zzaVar2);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
                        sb.append("Timeout waiting for ServiceConnection callback ");
                        sb.append(valueOf);
                        Log.wtf("GmsClientSupervisor", sb.toString(), new Exception());
                        ComponentName componentName = zzfVar2.getComponentName();
                        ComponentName componentName2 = componentName;
                        if (componentName == null) {
                            componentName2 = zzaVar2.getComponentName();
                        }
                        ComponentName componentName3 = componentName2;
                        if (componentName2 == null) {
                            componentName3 = new ComponentName(zzaVar2.getPackage(), "unknown");
                        }
                        zzfVar2.onServiceDisconnected(componentName3);
                    }
                }
                return true;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    public final boolean zza(GmsClientSupervisor.zza zzaVar, ServiceConnection serviceConnection, String str) {
        zzf zzfVar;
        boolean isBound;
        Preconditions.checkNotNull(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.zzdu) {
            zzf zzfVar2 = this.zzdu.get(zzaVar);
            if (zzfVar2 != null) {
                this.mHandler.removeMessages(0, zzaVar);
                if (!zzfVar2.zza(serviceConnection)) {
                    zzfVar2.zza(serviceConnection, str);
                    switch (zzfVar2.getState()) {
                        case 1:
                            serviceConnection.onServiceConnected(zzfVar2.getComponentName(), zzfVar2.getBinder());
                            zzfVar = zzfVar2;
                            break;
                        case 2:
                            zzfVar2.zze(str);
                            zzfVar = zzfVar2;
                            break;
                        default:
                            zzfVar = zzfVar2;
                            break;
                    }
                } else {
                    String valueOf = String.valueOf(zzaVar);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 81);
                    sb.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                    sb.append(valueOf);
                    throw new IllegalStateException(sb.toString());
                }
            } else {
                zzf zzfVar3 = new zzf(this, zzaVar);
                zzfVar3.zza(serviceConnection, str);
                zzfVar3.zze(str);
                this.zzdu.put(zzaVar, zzfVar3);
                zzfVar = zzfVar3;
            }
            isBound = zzfVar.isBound();
        }
        return isBound;
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    protected final void zzb(GmsClientSupervisor.zza zzaVar, ServiceConnection serviceConnection, String str) {
        Preconditions.checkNotNull(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.zzdu) {
            zzf zzfVar = this.zzdu.get(zzaVar);
            if (zzfVar == null) {
                String valueOf = String.valueOf(zzaVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 50);
                sb.append("Nonexistent connection status for service config: ");
                sb.append(valueOf);
                throw new IllegalStateException(sb.toString());
            } else if (!zzfVar.zza(serviceConnection)) {
                String valueOf2 = String.valueOf(zzaVar);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 76);
                sb2.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                sb2.append(valueOf2);
                throw new IllegalStateException(sb2.toString());
            } else {
                zzfVar.zzb(serviceConnection, str);
                if (zzfVar.zzr()) {
                    this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(0, zzaVar), this.zzdx);
                }
            }
        }
    }
}

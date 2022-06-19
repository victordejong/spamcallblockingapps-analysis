package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.internal.common.zzh;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzb.class */
public final class zzb extends zzh {
    final /* synthetic */ BaseGmsClient zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzb(BaseGmsClient baseGmsClient, Looper looper) {
        super(looper);
        this.zza = baseGmsClient;
    }

    private static final void zza(Message message) {
        zzc zzcVar = (zzc) message.obj;
        zzcVar.zzc();
        zzcVar.zzf();
    }

    private static final boolean zzb(Message message) {
        return message.what == 2 || message.what == 1 || message.what == 7;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks;
        BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks2;
        ConnectionResult connectionResult;
        ConnectionResult connectionResult2;
        ConnectionResult connectionResult3;
        ConnectionResult connectionResult4;
        ConnectionResult connectionResult5;
        ConnectionResult connectionResult6;
        boolean z;
        if (this.zza.zzd.get() != message.arg1) {
            if (!zzb(message)) {
                return;
            }
            zza(message);
        } else if ((message.what == 1 || message.what == 7 || ((message.what == 4 && !this.zza.enableLocalFallback()) || message.what == 5)) && !this.zza.isConnecting()) {
            zza(message);
        } else {
            PendingIntent pendingIntent = null;
            if (message.what == 4) {
                this.zza.zzB = new ConnectionResult(message.arg2);
                if (BaseGmsClient.zzg(this.zza)) {
                    z = this.zza.zzC;
                    if (!z) {
                        this.zza.zzp(3, null);
                        return;
                    }
                }
                connectionResult4 = this.zza.zzB;
                if (connectionResult4 != null) {
                    connectionResult6 = this.zza.zzB;
                    connectionResult5 = connectionResult6;
                } else {
                    connectionResult5 = new ConnectionResult(8);
                }
                this.zza.zzc.onReportServiceBinding(connectionResult5);
                this.zza.onConnectionFailed(connectionResult5);
            } else if (message.what == 5) {
                connectionResult = this.zza.zzB;
                if (connectionResult != null) {
                    connectionResult3 = this.zza.zzB;
                    connectionResult2 = connectionResult3;
                } else {
                    connectionResult2 = new ConnectionResult(8);
                }
                this.zza.zzc.onReportServiceBinding(connectionResult2);
                this.zza.onConnectionFailed(connectionResult2);
            } else if (message.what == 3) {
                if (message.obj instanceof PendingIntent) {
                    pendingIntent = (PendingIntent) message.obj;
                }
                ConnectionResult connectionResult7 = new ConnectionResult(message.arg2, pendingIntent);
                this.zza.zzc.onReportServiceBinding(connectionResult7);
                this.zza.onConnectionFailed(connectionResult7);
            } else if (message.what == 6) {
                this.zza.zzp(5, null);
                baseConnectionCallbacks = this.zza.zzw;
                if (baseConnectionCallbacks != null) {
                    baseConnectionCallbacks2 = this.zza.zzw;
                    baseConnectionCallbacks2.onConnectionSuspended(message.arg2);
                }
                this.zza.onConnectionSuspended(message.arg2);
                BaseGmsClient.zzl(this.zza, 5, 1, null);
            } else if (message.what == 2 && !this.zza.isConnected()) {
                zza(message);
            } else if (zzb(message)) {
                ((zzc) message.obj).zze();
            } else {
                int i = message.what;
                StringBuilder sb = new StringBuilder(45);
                sb.append("Don't know how to handle message: ");
                sb.append(i);
                Log.wtf("GmsClient", sb.toString(), new Exception());
            }
        }
    }
}

package com.google.android.gms.internal.measurement;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.analytics.zzk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.VisibleForTesting;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbc.class */
public final class zzbc implements ServiceConnection {
    final /* synthetic */ zzba zzxa;
    private volatile zzcl zzxb;
    private volatile boolean zzxc;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzbc(zzba zzbaVar) {
        this.zzxa = zzbaVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzbc zzbcVar;
        Preconditions.checkMainThread("AnalyticsServiceConnection.onServiceConnected");
        synchronized (this) {
            if (iBinder == null) {
                this.zzxa.zzu("Service connected with null binder");
                notifyAll();
                return;
            }
            zzcl zzclVar = null;
            zzclVar = null;
            zzclVar = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.analytics.internal.IAnalyticsService".equals(interfaceDescriptor)) {
                    if (iBinder != null) {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
                        zzclVar = queryLocalInterface instanceof zzcl ? (zzcl) queryLocalInterface : new zzcm(iBinder);
                    }
                    this.zzxa.zzq("Bound to IAnalyticsService interface");
                } else {
                    this.zzxa.zze("Got binder with a wrong descriptor", interfaceDescriptor);
                }
            } catch (RemoteException e) {
                this.zzxa.zzu("Service connect failed to get IAnalyticsService");
            }
            if (zzclVar == null) {
                try {
                    ConnectionTracker instance = ConnectionTracker.getInstance();
                    Context context = this.zzxa.getContext();
                    zzbcVar = this.zzxa.zzww;
                    instance.unbindService(context, zzbcVar);
                } catch (IllegalArgumentException e2) {
                }
            } else if (!this.zzxc) {
                this.zzxa.zzt("onServiceConnected received after the timeout limit");
                this.zzxa.zzca().zza(new zzbd(this, zzclVar));
            } else {
                this.zzxb = zzclVar;
            }
            notifyAll();
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Preconditions.checkMainThread("AnalyticsServiceConnection.onServiceDisconnected");
        this.zzxa.zzca().zza(new zzbe(this, componentName));
    }

    public final zzcl zzda() {
        zzbc zzbcVar;
        zzk.zzaf();
        Intent intent = new Intent("com.google.android.gms.analytics.service.START");
        intent.setComponent(new ComponentName("com.google.android.gms", "com.google.android.gms.analytics.service.AnalyticsService"));
        Context context = this.zzxa.getContext();
        intent.putExtra("app_package_name", context.getPackageName());
        ConnectionTracker instance = ConnectionTracker.getInstance();
        synchronized (this) {
            this.zzxb = null;
            this.zzxc = true;
            zzbcVar = this.zzxa.zzww;
            boolean bindService = instance.bindService(context, intent, zzbcVar, 129);
            this.zzxa.zza("Bind to service requested", Boolean.valueOf(bindService));
            if (!bindService) {
                this.zzxc = false;
                return null;
            }
            try {
                wait(zzcf.zzaag.get().longValue());
            } catch (InterruptedException e) {
                this.zzxa.zzt("Wait for service connect was interrupted");
            }
            this.zzxc = false;
            zzcl zzclVar = this.zzxb;
            this.zzxb = null;
            if (zzclVar == null) {
                this.zzxa.zzu("Successfully bound to service but never got onServiceConnected callback");
            }
            return zzclVar;
        }
    }
}

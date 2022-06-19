package com.google.android.gms.common.stats;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzr;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.NoSuchElementException;
import java.util.concurrent.ConcurrentHashMap;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/ConnectionTracker.class */
public class ConnectionTracker {
    private static final Object zzb = new Object();
    @Nullable
    private static volatile ConnectionTracker zzc;
    public ConcurrentHashMap<ServiceConnection, ServiceConnection> zza = new ConcurrentHashMap<>();

    private ConnectionTracker() {
    }

    public static ConnectionTracker getInstance() {
        if (zzc == null) {
            synchronized (zzb) {
                if (zzc == null) {
                    zzc = new ConnectionTracker();
                }
            }
        }
        ConnectionTracker connectionTracker = zzc;
        Preconditions.checkNotNull(connectionTracker);
        return connectionTracker;
    }

    /* JADX WARN: Finally extract failed */
    private final boolean zzb(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i, boolean z) {
        boolean z2;
        ComponentName component = intent.getComponent();
        if (component != null) {
            String packageName = component.getPackageName();
            "com.google.android.gms".equals(packageName);
            try {
                if ((Wrappers.packageManager(context).getApplicationInfo(packageName, 0).flags & 2097152) != 0) {
                    Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
                    return false;
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        if (zzc(serviceConnection)) {
            ServiceConnection putIfAbsent = this.zza.putIfAbsent(serviceConnection, serviceConnection);
            if (putIfAbsent != null && serviceConnection != putIfAbsent) {
                Log.w("ConnectionTracker", String.format("Duplicate binding with the same ServiceConnection: %s, %s, %s.", serviceConnection, str, intent.getAction()));
            }
            try {
                z2 = context.bindService(intent, serviceConnection, i);
                if (!z2) {
                    this.zza.remove(serviceConnection, serviceConnection);
                    return false;
                }
            } catch (Throwable th) {
                this.zza.remove(serviceConnection, serviceConnection);
                throw th;
            }
        } else {
            z2 = context.bindService(intent, serviceConnection, i);
        }
        return z2;
    }

    private static boolean zzc(ServiceConnection serviceConnection) {
        return !(serviceConnection instanceof zzr);
    }

    private static void zzd(Context context, ServiceConnection serviceConnection) {
        try {
            context.unbindService(serviceConnection);
        } catch (IllegalArgumentException | IllegalStateException | NoSuchElementException e) {
        }
    }

    public boolean bindService(Context context, Intent intent, ServiceConnection serviceConnection, int i) {
        return zzb(context, context.getClass().getName(), intent, serviceConnection, i, true);
    }

    public void unbindService(Context context, ServiceConnection serviceConnection) {
        if (!zzc(serviceConnection) || !this.zza.containsKey(serviceConnection)) {
            zzd(context, serviceConnection);
            return;
        }
        try {
            zzd(context, this.zza.get(serviceConnection));
        } finally {
            this.zza.remove(serviceConnection);
        }
    }

    public void unbindServiceSafe(Context context, ServiceConnection serviceConnection) {
        try {
            unbindService(context, serviceConnection);
        } catch (IllegalArgumentException e) {
        }
    }

    public final boolean zza(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i) {
        return zzb(context, str, intent, serviceConnection, i, true);
    }
}

package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/GmsClientSupervisor.class */
public abstract class GmsClientSupervisor {
    private static int zza = 4225;
    private static final Object zzb = new Object();
    private static GmsClientSupervisor zzc;

    public static int getDefaultBindFlags() {
        return zza;
    }

    public static GmsClientSupervisor getInstance(Context context) {
        synchronized (zzb) {
            if (zzc == null) {
                zzc = new zzq(context.getApplicationContext());
            }
        }
        return zzc;
    }

    public boolean bindService(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        return zzb(new zzm(componentName, getDefaultBindFlags()), serviceConnection, str);
    }

    public boolean bindService(String str, ServiceConnection serviceConnection, String str2) {
        return zzb(new zzm(str, "com.google.android.gms", getDefaultBindFlags()), serviceConnection, str2);
    }

    public void unbindService(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        zzc(new zzm(componentName, getDefaultBindFlags()), serviceConnection, str);
    }

    public void unbindService(String str, ServiceConnection serviceConnection, String str2) {
        zzc(new zzm(str, "com.google.android.gms", getDefaultBindFlags()), serviceConnection, str2);
    }

    public final void zza(String str, String str2, int i, ServiceConnection serviceConnection, String str3, boolean z) {
        zzc(new zzm(str, str2, i, z), serviceConnection, str3);
    }

    public abstract boolean zzb(zzm zzmVar, ServiceConnection serviceConnection, String str);

    protected abstract void zzc(zzm zzmVar, ServiceConnection serviceConnection, String str);
}

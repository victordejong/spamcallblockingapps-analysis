package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/GmsClientSupervisor.class */
public abstract class GmsClientSupervisor {
    private static int zza = 4225;
    private static final Object zzb = new Object();
    private static GmsClientSupervisor zzc;

    @KeepForSdk
    public static int getDefaultBindFlags() {
        return zza;
    }

    @RecentlyNonNull
    @KeepForSdk
    public static GmsClientSupervisor getInstance(@RecentlyNonNull Context context) {
        synchronized (zzb) {
            if (zzc == null) {
                zzc = new zzq(context.getApplicationContext());
            }
        }
        return zzc;
    }

    @KeepForSdk
    public boolean bindService(@RecentlyNonNull ComponentName componentName, @RecentlyNonNull ServiceConnection serviceConnection, @RecentlyNonNull String str) {
        return zzb(new zzm(componentName, getDefaultBindFlags()), serviceConnection, str);
    }

    @KeepForSdk
    public boolean bindService(@RecentlyNonNull String str, @RecentlyNonNull ServiceConnection serviceConnection, @RecentlyNonNull String str2) {
        return zzb(new zzm(str, "com.google.android.gms", getDefaultBindFlags()), serviceConnection, str2);
    }

    @KeepForSdk
    public void unbindService(@RecentlyNonNull ComponentName componentName, @RecentlyNonNull ServiceConnection serviceConnection, @RecentlyNonNull String str) {
        zzc(new zzm(componentName, getDefaultBindFlags()), serviceConnection, str);
    }

    @KeepForSdk
    public void unbindService(@RecentlyNonNull String str, @RecentlyNonNull ServiceConnection serviceConnection, @RecentlyNonNull String str2) {
        zzc(new zzm(str, "com.google.android.gms", getDefaultBindFlags()), serviceConnection, str2);
    }

    public final void zza(@RecentlyNonNull String str, @RecentlyNonNull String str2, int i, @RecentlyNonNull ServiceConnection serviceConnection, @RecentlyNonNull String str3, boolean z) {
        zzc(new zzm(str, str2, i, z), serviceConnection, str3);
    }

    public abstract boolean zzb(zzm zzmVar, ServiceConnection serviceConnection, String str);

    public abstract void zzc(zzm zzmVar, ServiceConnection serviceConnection, String str);
}

package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.HandlerThread;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.concurrent.Executor;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/GmsClientSupervisor.class */
public abstract class GmsClientSupervisor {
    @VisibleForTesting
    public static HandlerThread zza;
    private static int zzb = 4225;
    private static final Object zzc = new Object();
    private static zzr zzd;
    private static boolean zze = false;

    @KeepForSdk
    public static int getDefaultBindFlags() {
        return zzb;
    }

    @KeepForSdk
    public static GmsClientSupervisor getInstance(Context context) {
        synchronized (zzc) {
            if (zzd == null) {
                zzd = new zzr(context.getApplicationContext(), zze ? getOrStartHandlerThread().getLooper() : context.getMainLooper());
            }
        }
        return zzd;
    }

    @KeepForSdk
    public static HandlerThread getOrStartHandlerThread() {
        synchronized (zzc) {
            HandlerThread handlerThread = zza;
            if (handlerThread != null) {
                return handlerThread;
            }
            HandlerThread handlerThread2 = new HandlerThread("GoogleApiHandler", 9);
            zza = handlerThread2;
            handlerThread2.start();
            return zza;
        }
    }

    @KeepForSdk
    public static void setUseHandlerThreadForCallbacks() {
        synchronized (zzc) {
            zzr zzrVar = zzd;
            if (zzrVar != null && !zze) {
                zzrVar.zzi(getOrStartHandlerThread().getLooper());
            }
            zze = true;
        }
    }

    @KeepForSdk
    public boolean bindService(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        return zzc(new zzn(componentName, getDefaultBindFlags()), serviceConnection, str, null);
    }

    @KeepForSdk
    public boolean bindService(String str, ServiceConnection serviceConnection, String str2) {
        return zzc(new zzn(str, getDefaultBindFlags(), false), serviceConnection, str2, null);
    }

    @KeepForSdk
    public void unbindService(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        zza(new zzn(componentName, getDefaultBindFlags()), serviceConnection, str);
    }

    @KeepForSdk
    public void unbindService(String str, ServiceConnection serviceConnection, String str2) {
        zza(new zzn(str, getDefaultBindFlags(), false), serviceConnection, str2);
    }

    public abstract void zza(zzn zznVar, ServiceConnection serviceConnection, String str);

    public final void zzb(String str, String str2, int i, ServiceConnection serviceConnection, String str3, boolean z) {
        zza(new zzn(str, str2, i, z), serviceConnection, str3);
    }

    public abstract boolean zzc(zzn zznVar, ServiceConnection serviceConnection, String str, Executor executor);
}

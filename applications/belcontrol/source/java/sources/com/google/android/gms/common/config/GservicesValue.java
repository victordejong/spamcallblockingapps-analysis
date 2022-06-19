package com.google.android.gms.common.config;

import android.os.Binder;
import android.os.StrictMode;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.VisibleForTesting;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/config/GservicesValue.class */
public abstract class GservicesValue<T> {
    private static final Object zzc = new Object();
    @RecentlyNonNull
    public final String zza;
    @RecentlyNonNull
    public final T zzb;
    private T zzd = null;

    public GservicesValue(@RecentlyNonNull String str, @RecentlyNonNull T t) {
        this.zza = str;
        this.zzb = t;
    }

    @KeepForSdk
    public static boolean isInitialized() {
        synchronized (zzc) {
        }
        return false;
    }

    @RecentlyNonNull
    @KeepForSdk
    public static GservicesValue<Float> value(@RecentlyNonNull String str, @RecentlyNonNull Float f) {
        return new zzd(str, f);
    }

    @RecentlyNonNull
    @KeepForSdk
    public static GservicesValue<Integer> value(@RecentlyNonNull String str, @RecentlyNonNull Integer num) {
        return new zzc(str, num);
    }

    @RecentlyNonNull
    @KeepForSdk
    public static GservicesValue<Long> value(@RecentlyNonNull String str, @RecentlyNonNull Long l) {
        return new zzb(str, l);
    }

    @RecentlyNonNull
    @KeepForSdk
    public static GservicesValue<String> value(@RecentlyNonNull String str, @RecentlyNonNull String str2) {
        return new zze(str, str2);
    }

    @RecentlyNonNull
    @KeepForSdk
    public static GservicesValue<Boolean> value(@RecentlyNonNull String str, boolean z) {
        return new zza(str, Boolean.valueOf(z));
    }

    @RecentlyNonNull
    @KeepForSdk
    public final T get() {
        T t = this.zzd;
        if (t != null) {
            return t;
        }
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        Object obj = zzc;
        synchronized (obj) {
        }
        synchronized (obj) {
            try {
            } catch (Throwable th) {
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                throw th;
            }
        }
        try {
            T zza = zza(this.zza);
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return zza;
        } catch (SecurityException e) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            T zza2 = zza(this.zza);
            Binder.restoreCallingIdentity(clearCallingIdentity);
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return zza2;
        }
    }

    @RecentlyNonNull
    @KeepForSdk
    @Deprecated
    public final T getBinderSafe() {
        return get();
    }

    @VisibleForTesting
    @KeepForSdk
    public void override(@RecentlyNonNull T t) {
        Log.w("GservicesValue", "GservicesValue.override(): test should probably call initForTests() first");
        this.zzd = t;
        Object obj = zzc;
        synchronized (obj) {
            synchronized (obj) {
            }
        }
    }

    @VisibleForTesting
    @KeepForSdk
    public void resetOverride() {
        this.zzd = null;
    }

    @RecentlyNonNull
    public abstract T zza(@RecentlyNonNull String str);
}

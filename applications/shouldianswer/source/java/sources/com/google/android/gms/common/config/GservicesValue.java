package com.google.android.gms.common.config;

import android.content.Context;
import android.os.Binder;
import android.os.StrictMode;
import android.util.Log;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/config/GservicesValue.class */
public abstract class GservicesValue<T> {
    private static final Object sLock = new Object();
    private static zza zzbm = null;
    private static int zzbn = 0;
    private static Context zzbo;
    private static HashSet<String> zzbp;
    protected final String mKey;
    protected final T zzbq;
    private T zzbr = null;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/config/GservicesValue$zza.class */
    private interface zza {
        Long getLong(String str, Long l);

        String getString(String str, String str2);

        Boolean zza(String str, Boolean bool);

        Float zza(String str, Float f);

        Integer zza(String str, Integer num);
    }

    public GservicesValue(String str, T t) {
        this.mKey = str;
        this.zzbq = t;
    }

    public static boolean isInitialized() {
        synchronized (sLock) {
        }
        return false;
    }

    public static GservicesValue<Float> value(String str, Float f) {
        return new zzd(str, f);
    }

    public static GservicesValue<Integer> value(String str, Integer num) {
        return new zzc(str, num);
    }

    public static GservicesValue<Long> value(String str, Long l) {
        return new zzb(str, l);
    }

    public static GservicesValue<String> value(String str, String str2) {
        return new zze(str, str2);
    }

    public static GservicesValue<Boolean> value(String str, boolean z) {
        return new com.google.android.gms.common.config.zza(str, Boolean.valueOf(z));
    }

    private static boolean zzi() {
        synchronized (sLock) {
        }
        return false;
    }

    public final T get() {
        T t = this.zzbr;
        if (t != null) {
            return t;
        }
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        synchronized (sLock) {
        }
        synchronized (sLock) {
            zzbp = null;
            zzbo = null;
            try {
            } catch (Throwable th) {
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                throw th;
            }
        }
        try {
            T zzd = zzd(this.mKey);
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return zzd;
        } catch (SecurityException e) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            T zzd2 = zzd(this.mKey);
            Binder.restoreCallingIdentity(clearCallingIdentity);
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return zzd2;
        }
    }

    @Deprecated
    public final T getBinderSafe() {
        return get();
    }

    public void override(T t) {
        Log.w("GservicesValue", "GservicesValue.override(): test should probably call initForTests() first");
        this.zzbr = t;
        synchronized (sLock) {
            zzi();
        }
    }

    public void resetOverride() {
        this.zzbr = null;
    }

    protected abstract T zzd(String str);
}

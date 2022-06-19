package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.lang.reflect.Method;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzchh.class */
public final class zzchh {
    private final AtomicReference<ExecutorService> zzb = new AtomicReference<>(null);
    private final Object zzc = new Object();
    @GuardedBy("gmpAppIdLock")
    private String zzd = null;
    @GuardedBy("gmpAppIdLock")
    private String zze = null;
    @VisibleForTesting
    public final AtomicBoolean zza = new AtomicBoolean(false);
    private final AtomicInteger zzf = new AtomicInteger(-1);
    private final AtomicReference<Object> zzg = new AtomicReference<>(null);
    private final AtomicReference<Object> zzh = new AtomicReference<>(null);
    private final ConcurrentMap<String, Method> zzi = new ConcurrentHashMap(9);
    private final AtomicReference<zzcqg> zzj = new AtomicReference<>(null);
    @GuardedBy("proxyReference")
    private final BlockingQueue<FutureTask<?>> zzk = new ArrayBlockingQueue(20);
    private final Object zzl = new Object();

    private final void zzA(Context context, String str, String str2) {
        Method method;
        if (zzE(context, "com.google.android.gms.measurement.AppMeasurement", this.zzg, true)) {
            Method method2 = this.zzi.get(str2);
            if (method2 != null) {
                method = method2;
            } else {
                try {
                    method = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str2, String.class);
                    this.zzi.put(str2, method);
                } catch (Exception e) {
                    zzC(str2, false);
                    method = null;
                }
            }
            try {
                method.invoke(this.zzg.get(), str);
                StringBuilder sb = new StringBuilder(str2.length() + 37 + String.valueOf(str).length());
                sb.append("Invoke Firebase method ");
                sb.append(str2);
                sb.append(", Ad Unit Id: ");
                sb.append(str);
                zze.zza(sb.toString());
            } catch (Exception e2) {
                zzC(str2, false);
            }
        }
    }

    private final void zzB(Context context, final String str, String str2, Bundle bundle) {
        Method method;
        if (zzu(context)) {
            final Bundle bundle2 = new Bundle();
            try {
                bundle2.putLong("_aeid", Long.parseLong(str2));
            } catch (NullPointerException | NumberFormatException e) {
                String valueOf = String.valueOf(str2);
                zzciz.zzh(valueOf.length() != 0 ? "Invalid event ID: ".concat(valueOf) : new String("Invalid event ID: "), e);
            }
            if ("_ac".equals(str)) {
                bundle2.putInt("_r", 1);
            }
            if (bundle != null) {
                bundle2.putAll(bundle);
            }
            if (zzv(context)) {
                zzD("logEventInternal", new zzchg() { // from class: com.google.android.gms.internal.ads.zzcgs
                    @Override // com.google.android.gms.internal.ads.zzchg
                    public final void zza(zzcqg zzcqgVar) {
                        zzcqgVar.zzo("am", str, bundle2);
                    }
                });
            } else if (!zzE(context, "com.google.android.gms.measurement.AppMeasurement", this.zzg, true)) {
            } else {
                Method method2 = this.zzi.get("logEventInternal");
                if (method2 != null) {
                    method = method2;
                } else {
                    try {
                        method = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod("logEventInternal", String.class, String.class, Bundle.class);
                        this.zzi.put("logEventInternal", method);
                    } catch (Exception e2) {
                        zzC("logEventInternal", true);
                        method = null;
                    }
                }
                try {
                    method.invoke(this.zzg.get(), "am", str, bundle2);
                } catch (Exception e3) {
                    zzC("logEventInternal", true);
                }
            }
        }
    }

    private final void zzC(String str, boolean z) {
        if (!this.zza.get()) {
            StringBuilder sb = new StringBuilder(str.length() + 30);
            sb.append("Invoke Firebase method ");
            sb.append(str);
            sb.append(" error.");
            zzciz.zzj(sb.toString());
            if (!z) {
                return;
            }
            zzciz.zzj("The Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires the latest Firebase SDK jar, but Firebase SDK is either missing or out of date");
            this.zza.set(true);
        }
    }

    private final void zzD(final String str, final zzchg zzchgVar) {
        synchronized (this.zzj) {
            FutureTask<?> futureTask = new FutureTask<>(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcgt
                @Override // java.lang.Runnable
                public final void run() {
                    zzchh.this.zzj(zzchgVar, str);
                }
            }, null);
            if (this.zzj.get() != null) {
                futureTask.run();
            } else {
                this.zzk.offer(futureTask);
            }
        }
    }

    private final boolean zzE(Context context, String str, AtomicReference<Object> atomicReference, boolean z) {
        if (atomicReference.get() == null) {
            try {
                atomicReference.compareAndSet(null, context.getClassLoader().loadClass(str).getDeclaredMethod("getInstance", Context.class).invoke(null, context));
                return true;
            } catch (Exception e) {
                zzC("getInstance", z);
                return false;
            }
        }
        return true;
    }

    @VisibleForTesting
    public static final boolean zzv(Context context) {
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzac)).booleanValue()) {
            if (DynamiteModule.getLocalVersion(context, ModuleDescriptor.MODULE_ID) < ((Integer) zzbgq.zzc().zzb(zzblj.zzad)).intValue()) {
                return false;
            }
            if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzae)).booleanValue()) {
                return true;
            }
            try {
                context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
                return false;
            } catch (ClassNotFoundException e) {
                return true;
            }
        }
        return false;
    }

    private final <T> T zzw(String str, T t, zzchf<T> zzchfVar) {
        synchronized (this.zzj) {
            if (this.zzj.get() != null) {
                try {
                    return zzchfVar.zza(this.zzj.get());
                } catch (Exception e) {
                    zzC(str, false);
                }
            }
            return t;
        }
    }

    private final Object zzx(String str, Context context) {
        if (!zzE(context, "com.google.android.gms.measurement.AppMeasurement", this.zzg, true)) {
            return null;
        }
        try {
            return zzy(context, str).invoke(this.zzg.get(), new Object[0]);
        } catch (Exception e) {
            zzC(str, true);
            return null;
        }
    }

    private final Method zzy(Context context, String str) {
        Method method = this.zzi.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, new Class[0]);
            this.zzi.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            zzC(str, false);
            return null;
        }
    }

    private final ExecutorService zzz() {
        ThreadPoolExecutor threadPoolExecutor;
        if (this.zzb.get() == null) {
            if (ClientLibraryUtils.isPackageSide()) {
                threadPoolExecutor = zzfpi.zza().zzc(((Integer) zzbgq.zzc().zzb(zzblj.zzab)).intValue(), new zzche(this), 2);
            } else {
                zzblb<Integer> zzblbVar = zzblj.zzab;
                threadPoolExecutor = new ThreadPoolExecutor(((Integer) zzbgq.zzc().zzb(zzblbVar)).intValue(), ((Integer) zzbgq.zzc().zzb(zzblbVar)).intValue(), 1L, TimeUnit.MINUTES, new LinkedBlockingQueue(), new zzche(this));
            }
            this.zzb.compareAndSet(null, threadPoolExecutor);
        }
        return this.zzb.get();
    }

    public final String zza(Context context) {
        if (!zzu(context)) {
            return null;
        }
        if (zzv(context)) {
            Long l = (Long) zzw("getAdEventId", null, zzcgw.zza);
            if (l == null) {
                return null;
            }
            return Long.toString(l.longValue());
        }
        Object zzx = zzx("generateEventId", context);
        if (zzx == null) {
            return null;
        }
        return zzx.toString();
    }

    public final String zzb(Context context) {
        if (!zzu(context)) {
            return null;
        }
        synchronized (this.zzc) {
            String str = this.zze;
            if (str != null) {
                return str;
            }
            if (zzv(context)) {
                this.zze = (String) zzw("getAppIdOrigin", this.zze, zzcgx.zza);
            } else {
                this.zze = "fa";
            }
            return this.zze;
        }
    }

    public final String zzc(final Context context) {
        if (!zzu(context)) {
            return null;
        }
        long longValue = ((Long) zzbgq.zzc().zzb(zzblj.zzaa)).longValue();
        if (zzv(context)) {
            try {
                return longValue < 0 ? (String) zzw("getAppInstanceId", null, zzcgy.zza) : (String) zzz().submit(new Callable() { // from class: com.google.android.gms.internal.ads.zzcgu
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return zzchh.this.zzf();
                    }
                }).get(longValue, TimeUnit.MILLISECONDS);
            } catch (TimeoutException e) {
                return "TIME_OUT";
            } catch (Exception e2) {
                return null;
            }
        } else if (longValue < 0) {
            return (String) zzx("getAppInstanceId", context);
        } else {
            try {
                return (String) zzz().submit(new Callable() { // from class: com.google.android.gms.internal.ads.zzcgv
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return zzchh.this.zzg(context);
                    }
                }).get(longValue, TimeUnit.MILLISECONDS);
            } catch (TimeoutException e3) {
                return "TIME_OUT";
            } catch (Exception e4) {
                return null;
            }
        }
    }

    public final String zzd(Context context) {
        if (!zzu(context)) {
            return "";
        }
        if (zzv(context)) {
            return (String) zzw("getCurrentScreenNameOrScreenClass", "", zzcgr.zza);
        }
        if (!zzE(context, "com.google.android.gms.measurement.AppMeasurement", this.zzg, true)) {
            return "";
        }
        try {
            String str = (String) zzy(context, "getCurrentScreenName").invoke(this.zzg.get(), new Object[0]);
            String str2 = str;
            if (str == null) {
                str2 = (String) zzy(context, "getCurrentScreenClass").invoke(this.zzg.get(), new Object[0]);
            }
            return str2 != null ? str2 : "";
        } catch (Exception e) {
            zzC("getCurrentScreenName", false);
            return "";
        }
    }

    public final String zze(Context context) {
        if (!zzu(context)) {
            return null;
        }
        synchronized (this.zzc) {
            String str = this.zzd;
            if (str != null) {
                return str;
            }
            if (zzv(context)) {
                this.zzd = (String) zzw("getGmpAppId", this.zzd, zzcgz.zza);
            } else {
                this.zzd = (String) zzx("getGmpAppId", context);
            }
            return this.zzd;
        }
    }

    public final /* synthetic */ String zzf() throws Exception {
        return (String) zzw("getAppInstanceId", null, zzcgy.zza);
    }

    public final /* synthetic */ String zzg(Context context) throws Exception {
        return (String) zzx("getAppInstanceId", context);
    }

    public final void zzh(Context context, final String str) {
        if (!zzu(context)) {
            return;
        }
        if (zzv(context)) {
            zzD("beginAdUnitExposure", new zzchg() { // from class: com.google.android.gms.internal.ads.zzchc
                @Override // com.google.android.gms.internal.ads.zzchg
                public final void zza(zzcqg zzcqgVar) {
                    zzcqgVar.zzl(str);
                }
            });
        } else {
            zzA(context, str, "beginAdUnitExposure");
        }
    }

    public final void zzi(Context context, final String str) {
        if (!zzu(context)) {
            return;
        }
        if (zzv(context)) {
            zzD("endAdUnitExposure", new zzchg() { // from class: com.google.android.gms.internal.ads.zzchd
                @Override // com.google.android.gms.internal.ads.zzchg
                public final void zza(zzcqg zzcqgVar) {
                    zzcqgVar.zzn(str);
                }
            });
        } else {
            zzA(context, str, "endAdUnitExposure");
        }
    }

    public final /* synthetic */ void zzj(zzchg zzchgVar, String str) {
        if (this.zzj.get() != null) {
            try {
                zzchgVar.zza(this.zzj.get());
            } catch (Exception e) {
                zzC(str, false);
            }
        }
    }

    public final void zzk(Context context, String str) {
        zzB(context, "_aa", str, null);
    }

    public final void zzl(Context context, String str) {
        zzB(context, "_aq", str, null);
    }

    public final void zzm(Context context, String str) {
        zzB(context, "_ac", str, null);
    }

    public final void zzn(Context context, String str) {
        zzB(context, "_ai", str, null);
    }

    public final void zzo(Context context, String str, String str2, String str3, int i) {
        if (!zzu(context)) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("_ai", str2);
        bundle.putString("reward_type", str3);
        bundle.putInt("reward_value", i);
        zzB(context, "_ar", str, bundle);
        StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 75);
        sb.append("Log a Firebase reward video event, reward type: ");
        sb.append(str3);
        sb.append(", reward value: ");
        sb.append(i);
        zze.zza(sb.toString());
    }

    public final void zzp(Context context, zzbfd zzbfdVar) {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzah)).booleanValue() || !zzu(context) || !zzv(context)) {
            return;
        }
        synchronized (this.zzl) {
        }
    }

    public final void zzq(Context context, zzbkk zzbkkVar) {
        zzchi.zzd(context).zzb().zzd(zzbkkVar);
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzah)).booleanValue() || !zzu(context) || !zzv(context)) {
            return;
        }
        synchronized (this.zzl) {
        }
    }

    public final void zzr(final Bundle bundle) {
        zzD("setConsent", new zzchg() { // from class: com.google.android.gms.internal.ads.zzchb
            @Override // com.google.android.gms.internal.ads.zzchg
            public final void zza(zzcqg zzcqgVar) {
                zzcqgVar.zzr(bundle);
            }
        });
    }

    @Deprecated
    public final void zzs(final Context context, final String str) {
        if (zzu(context) && (context instanceof Activity)) {
            if (zzv(context)) {
                zzD("setScreenName", new zzchg() { // from class: com.google.android.gms.internal.ads.zzcha
                    @Override // com.google.android.gms.internal.ads.zzchg
                    public final void zza(zzcqg zzcqgVar) {
                        Context context2 = context;
                        zzcqgVar.zzs(ObjectWrapper.wrap(context2), str, context2.getPackageName());
                    }
                });
            } else if (!zzE(context, "com.google.firebase.analytics.FirebaseAnalytics", this.zzh, false)) {
            } else {
                Method method = this.zzi.get("setCurrentScreen");
                if (method == null) {
                    try {
                        method = context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod("setCurrentScreen", Activity.class, String.class, String.class);
                        this.zzi.put("setCurrentScreen", method);
                    } catch (Exception e) {
                        zzC("setCurrentScreen", false);
                        method = null;
                    }
                }
                try {
                    method.invoke(this.zzh.get(), (Activity) context, str, context.getPackageName());
                } catch (Exception e2) {
                    zzC("setCurrentScreen", false);
                }
            }
        }
    }

    public final boolean zzt() {
        synchronized (this.zzl) {
        }
        return false;
    }

    public final boolean zzu(Context context) {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzV)).booleanValue() || this.zza.get()) {
            return false;
        }
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzaf)).booleanValue()) {
            return true;
        }
        if (this.zzf.get() == -1) {
            zzbgo.zzb();
            if (!zzcis.zzn(context, GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE)) {
                zzbgo.zzb();
                if (zzcis.zzo(context)) {
                    zzciz.zzj("Google Play Service is out of date, the Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires updated Google Play Service.");
                    this.zzf.set(0);
                }
            }
            this.zzf.set(1);
        }
        return this.zzf.get() == 1;
    }
}

package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.common.util.VisibleForTesting;
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
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaxc.class */
public final class zzaxc {
    private final AtomicReference<ExecutorService> zzeay = new AtomicReference<>(null);
    private final Object zzeaz = new Object();
    @GuardedBy("gmpAppIdLock")
    private String zzeba = null;
    @GuardedBy("gmpAppIdLock")
    private String zzebb = null;
    @VisibleForTesting
    private final AtomicBoolean zzebc = new AtomicBoolean(false);
    private final AtomicInteger zzebd = new AtomicInteger(-1);
    private final AtomicReference<Object> zzebe = new AtomicReference<>(null);
    private final AtomicReference<Object> zzebf = new AtomicReference<>(null);
    private final ConcurrentMap<String, Method> zzebg = new ConcurrentHashMap(9);
    private final AtomicReference<zzbfu> zzebh = new AtomicReference<>(null);
    @GuardedBy("proxyReference")
    private final BlockingQueue<FutureTask<?>> zzebi = new ArrayBlockingQueue(20);
    private final Object zzebj = new Object();

    private final Object zza(String str, Context context) {
        if (!zza(context, "com.google.android.gms.measurement.AppMeasurement", this.zzebe, true)) {
            return null;
        }
        try {
            return zzl(context, str).invoke(this.zzebe.get(), new Object[0]);
        } catch (Exception e) {
            zzh(str, true);
            return null;
        }
    }

    private final <T> T zza(String str, T t, zzaxs<T> zzaxsVar) {
        synchronized (this.zzebh) {
            if (this.zzebh.get() != null) {
                try {
                    return zzaxsVar.zza(this.zzebh.get());
                } catch (Exception e) {
                    zzh(str, false);
                }
            }
            return t;
        }
    }

    private final void zza(Context context, String str, String str2) {
        if (!zza(context, "com.google.android.gms.measurement.AppMeasurement", this.zzebe, true)) {
            return;
        }
        try {
            zzk(context, str2).invoke(this.zzebe.get(), str);
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 37 + String.valueOf(str).length());
            sb.append("Invoke Firebase method ");
            sb.append(str2);
            sb.append(", Ad Unit Id: ");
            sb.append(str);
            zzd.zzeb(sb.toString());
        } catch (Exception e) {
            zzh(str2, false);
        }
    }

    private final void zza(Context context, String str, String str2, Bundle bundle) {
        if (!zzy(context)) {
            return;
        }
        Bundle zzk = zzk(str2, str);
        if (bundle != null) {
            zzk.putAll(bundle);
        }
        if (zzz(context)) {
            zza("logEventInternal", (zzaxv) new zzaxg(str, zzk));
        } else if (!zza(context, "com.google.android.gms.measurement.AppMeasurement", this.zzebe, true)) {
        } else {
            try {
                zzaf(context).invoke(this.zzebe.get(), "am", str, zzk);
            } catch (Exception e) {
                zzh("logEventInternal", true);
            }
        }
    }

    private final void zza(String str, zzaxv zzaxvVar) {
        synchronized (this.zzebh) {
            FutureTask<?> futureTask = new FutureTask<>(new Runnable(this, zzaxvVar, str) { // from class: com.google.android.gms.internal.ads.zzaxj
                private final String zzdlo;
                private final zzaxc zzebo;
                private final zzaxv zzebp;

                {
                    this.zzebo = this;
                    this.zzebp = zzaxvVar;
                    this.zzdlo = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzebo.zza(this.zzebp, this.zzdlo);
                }
            }, null);
            if (this.zzebh.get() != null) {
                futureTask.run();
            } else {
                this.zzebi.offer(futureTask);
            }
        }
    }

    private final boolean zza(Context context, String str, AtomicReference<Object> atomicReference, boolean z) {
        if (atomicReference.get() == null) {
            try {
                atomicReference.compareAndSet(null, context.getClassLoader().loadClass(str).getDeclaredMethod("getInstance", Context.class).invoke(null, context));
                return true;
            } catch (Exception e) {
                zzh("getInstance", z);
                return false;
            }
        }
        return true;
    }

    private final Method zzaf(Context context) {
        Method method = this.zzebg.get("logEventInternal");
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod("logEventInternal", String.class, String.class, Bundle.class);
            this.zzebg.put("logEventInternal", declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            zzh("logEventInternal", true);
            return null;
        }
    }

    private final void zzh(String str, boolean z) {
        if (!this.zzebc.get()) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 30);
            sb.append("Invoke Firebase method ");
            sb.append(str);
            sb.append(" error.");
            zzazk.zzex(sb.toString());
            if (!z) {
                return;
            }
            zzazk.zzex("The Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires the latest Firebase SDK jar, but Firebase SDK is either missing or out of date");
            this.zzebc.set(true);
        }
    }

    private static Bundle zzk(String str, String str2) {
        Bundle bundle = new Bundle();
        try {
            bundle.putLong("_aeid", Long.parseLong(str));
        } catch (NullPointerException | NumberFormatException e) {
            String valueOf = String.valueOf(str);
            zzazk.zzc(valueOf.length() != 0 ? "Invalid event ID: ".concat(valueOf) : new String("Invalid event ID: "), e);
        }
        if ("_ac".equals(str2)) {
            bundle.putInt("_r", 1);
        }
        return bundle;
    }

    private final Method zzk(Context context, String str) {
        Method method = this.zzebg.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, String.class);
            this.zzebg.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            zzh(str, false);
            return null;
        }
    }

    private final Method zzl(Context context, String str) {
        Method method = this.zzebg.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, new Class[0]);
            this.zzebg.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            zzh(str, false);
            return null;
        }
    }

    private final Method zzm(Context context, String str) {
        Method method = this.zzebg.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod(str, Activity.class, String.class, String.class);
            this.zzebg.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            zzh(str, false);
            return null;
        }
    }

    private final ExecutorService zzxc() {
        ThreadPoolExecutor threadPoolExecutor;
        if (this.zzeay.get() == null) {
            if (ClientLibraryUtils.isPackageSide()) {
                threadPoolExecutor = zzdvd.zzayx().zza(((Integer) zzwr.zzqr().zzd(zzabp.zzcoj)).intValue(), zzxd(), zzdvm.zzhvh);
            } else {
                zzaba<Integer> zzabaVar = zzabp.zzcoj;
                threadPoolExecutor = new ThreadPoolExecutor(((Integer) zzwr.zzqr().zzd(zzabaVar)).intValue(), ((Integer) zzwr.zzqr().zzd(zzabaVar)).intValue(), 1L, TimeUnit.MINUTES, new LinkedBlockingQueue(), zzxd());
            }
            this.zzeay.compareAndSet(null, threadPoolExecutor);
        }
        return this.zzeay.get();
    }

    private final ThreadFactory zzxd() {
        return new zzaxt(this);
    }

    @VisibleForTesting
    private static boolean zzz(Context context) {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcok)).booleanValue()) {
            return false;
        }
        if (DynamiteModule.getLocalVersion(context, ModuleDescriptor.MODULE_ID) < ((Integer) zzwr.zzqr().zzd(zzabp.zzcol)).intValue()) {
            return false;
        }
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcom)).booleanValue()) {
            return true;
        }
        try {
            context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
            return false;
        } catch (ClassNotFoundException e) {
            return true;
        }
    }

    public final void setConsent(Bundle bundle) {
        zza("setConsent", (zzaxv) new zzaxf(bundle));
    }

    public final void zza(Context context, zzaao zzaaoVar) {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcop)).booleanValue() || !zzy(context) || !zzz(context)) {
            return;
        }
        synchronized (this.zzebj) {
        }
    }

    public final void zza(Context context, zzvl zzvlVar) {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcop)).booleanValue() || !zzy(context) || !zzz(context)) {
            return;
        }
        synchronized (this.zzebj) {
        }
    }

    public final void zza(Context context, String str, String str2, String str3, int i) {
        if (!zzy(context)) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("_ai", str2);
        bundle.putString("reward_type", str3);
        bundle.putInt("reward_value", i);
        zza(context, "_ar", str, bundle);
        StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 75);
        sb.append("Log a Firebase reward video event, reward type: ");
        sb.append(str3);
        sb.append(", reward value: ");
        sb.append(i);
        zzd.zzeb(sb.toString());
    }

    public final /* synthetic */ void zza(zzaxv zzaxvVar, String str) {
        if (this.zzebh.get() != null) {
            try {
                zzaxvVar.zzb(this.zzebh.get());
            } catch (Exception e) {
                zzh(str, false);
            }
        }
    }

    public final String zzaa(Context context) {
        if (!zzy(context)) {
            return "";
        }
        if (zzz(context)) {
            return (String) zza("getCurrentScreenNameOrScreenClass", "", zzaxn.zzebl);
        }
        if (!zza(context, "com.google.android.gms.measurement.AppMeasurement", this.zzebe, true)) {
            return "";
        }
        try {
            String str = (String) zzl(context, "getCurrentScreenName").invoke(this.zzebe.get(), new Object[0]);
            String str2 = str;
            if (str == null) {
                str2 = (String) zzl(context, "getCurrentScreenClass").invoke(this.zzebe.get(), new Object[0]);
            }
            return str2 != null ? str2 : "";
        } catch (Exception e) {
            zzh("getCurrentScreenName", false);
            return "";
        }
    }

    public final String zzab(Context context) {
        if (!zzy(context)) {
            return null;
        }
        synchronized (this.zzeaz) {
            String str = this.zzeba;
            if (str != null) {
                return str;
            }
            this.zzeba = zzz(context) ? (String) zza("getGmpAppId", this.zzeba, zzaxp.zzebl) : (String) zza("getGmpAppId", context);
            return this.zzeba;
        }
    }

    public final String zzac(Context context) {
        if (!zzy(context)) {
            return null;
        }
        long longValue = ((Long) zzwr.zzqr().zzd(zzabp.zzcoi)).longValue();
        if (zzz(context)) {
            try {
                return longValue < 0 ? (String) zza("getAppInstanceId", (String) null, zzaxo.zzebl) : (String) zzxc().submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzaxr
                    private final zzaxc zzebo;

                    {
                        this.zzebo = this;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.zzebo.zzxe();
                    }
                }).get(longValue, TimeUnit.MILLISECONDS);
            } catch (TimeoutException e) {
                return "TIME_OUT";
            } catch (Exception e2) {
                return null;
            }
        } else if (longValue < 0) {
            return (String) zza("getAppInstanceId", context);
        } else {
            try {
                return (String) zzxc().submit(new Callable(this, context) { // from class: com.google.android.gms.internal.ads.zzaxq
                    private final Context zzcle;
                    private final zzaxc zzebo;

                    {
                        this.zzebo = this;
                        this.zzcle = context;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.zzebo.zzag(this.zzcle);
                    }
                }).get(longValue, TimeUnit.MILLISECONDS);
            } catch (TimeoutException e3) {
                return "TIME_OUT";
            } catch (Exception e4) {
                return null;
            }
        }
    }

    public final String zzad(Context context) {
        if (!zzy(context)) {
            return null;
        }
        if (zzz(context)) {
            Long l = (Long) zza("getAdEventId", (String) null, zzaxe.zzebl);
            if (l == null) {
                return null;
            }
            return Long.toString(l.longValue());
        }
        Object zza = zza("generateEventId", context);
        if (zza == null) {
            return null;
        }
        return zza.toString();
    }

    public final String zzae(Context context) {
        if (!zzy(context)) {
            return null;
        }
        synchronized (this.zzeaz) {
            String str = this.zzebb;
            if (str != null) {
                return str;
            }
            this.zzebb = zzz(context) ? (String) zza("getAppIdOrigin", this.zzebb, zzaxh.zzebl) : "fa";
            return this.zzebb;
        }
    }

    public final /* synthetic */ String zzag(Context context) {
        return (String) zza("getAppInstanceId", context);
    }

    public final void zzd(Context context, String str) {
        if (!zzy(context)) {
            return;
        }
        if (zzz(context)) {
            zza("beginAdUnitExposure", (zzaxv) new zzaxl(str));
        } else {
            zza(context, str, "beginAdUnitExposure");
        }
    }

    public final void zze(Context context, String str) {
        if (!zzy(context)) {
            return;
        }
        if (zzz(context)) {
            zza("endAdUnitExposure", (zzaxv) new zzaxk(str));
        } else {
            zza(context, str, "endAdUnitExposure");
        }
    }

    @Deprecated
    public final void zzf(Context context, String str) {
        if (zzy(context) && (context instanceof Activity)) {
            if (zzz(context)) {
                zza("setScreenName", (zzaxv) new zzaxm(context, str));
            } else if (!zza(context, "com.google.firebase.analytics.FirebaseAnalytics", this.zzebf, false)) {
            } else {
                try {
                    zzm(context, "setCurrentScreen").invoke(this.zzebf.get(), (Activity) context, str, context.getPackageName());
                } catch (Exception e) {
                    zzh("setCurrentScreen", false);
                }
            }
        }
    }

    public final void zzg(Context context, String str) {
        zza(context, "_ac", str, (Bundle) null);
    }

    public final void zzh(Context context, String str) {
        zza(context, "_ai", str, (Bundle) null);
    }

    public final void zzi(Context context, String str) {
        zza(context, "_aq", str, (Bundle) null);
    }

    public final void zzj(Context context, String str) {
        zza(context, "_aa", str, (Bundle) null);
    }

    public final /* synthetic */ String zzxe() {
        return (String) zza("getAppInstanceId", (String) null, zzaxi.zzebl);
    }

    public final boolean zzy(Context context) {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcod)).booleanValue() || this.zzebc.get()) {
            return false;
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcon)).booleanValue()) {
            return true;
        }
        if (this.zzebd.get() == -1) {
            zzwr.zzqn();
            if (!zzaza.zzf(context, GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE)) {
                zzwr.zzqn();
                if (zzaza.zzbo(context)) {
                    zzazk.zzex("Google Play Service is out of date, the Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires updated Google Play Service.");
                    this.zzebd.set(0);
                }
            }
            this.zzebd.set(1);
        }
        return this.zzebd.get() == 1;
    }
}

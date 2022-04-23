package com.google.android.gms.analytics;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Process;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzac;
import com.google.android.gms.internal.measurement.zzdg;
import com.google.android.gms.internal.measurement.zzx;
import java.lang.Thread;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
@VisibleForTesting
@SuppressLint({"StaticFieldLeak"})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/zzk.class */
public final class zzk {
    private static volatile zzk zzsm;
    private final Context zzri;
    private volatile zzx zzsq;
    private Thread.UncaughtExceptionHandler zzsr;
    private final zza zzsp = new zza();
    private final List<zzn> zzsn = new CopyOnWriteArrayList();
    private final zze zzso = new zze();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/zzk$zza.class */
    public final class zza extends ThreadPoolExecutor {
        public zza() {
            super(1, 1, 1L, TimeUnit.MINUTES, new LinkedBlockingQueue());
            setThreadFactory(new zzb(null));
            allowCoreThreadTimeOut(true);
        }

        @Override // java.util.concurrent.AbstractExecutorService
        protected final <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
            return new zzm(this, runnable, t);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/zzk$zzb.class */
    static final class zzb implements ThreadFactory {
        private static final AtomicInteger zzsv = new AtomicInteger();

        private zzb() {
        }

        /* synthetic */ zzb(zzl zzlVar) {
            this();
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            int incrementAndGet = zzsv.incrementAndGet();
            StringBuilder sb = new StringBuilder(23);
            sb.append("measurement-");
            sb.append(incrementAndGet);
            return new zzc(runnable, sb.toString());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/zzk$zzc.class */
    static final class zzc extends Thread {
        zzc(Runnable runnable, String str) {
            super(runnable, str);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            Process.setThreadPriority(10);
            super.run();
        }
    }

    @VisibleForTesting
    private zzk(Context context) {
        Context applicationContext = context.getApplicationContext();
        Preconditions.checkNotNull(applicationContext);
        this.zzri = applicationContext;
    }

    public static void zzaf() {
        if (!(Thread.currentThread() instanceof zzc)) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    public static zzk zzb(Context context) {
        Preconditions.checkNotNull(context);
        if (zzsm == null) {
            synchronized (zzk.class) {
                try {
                    if (zzsm == null) {
                        zzsm = new zzk(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzsm;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzb(zzg zzgVar) {
        Preconditions.checkNotMainThread("deliver should be called from worker thread");
        Preconditions.checkArgument(zzgVar.zzx(), "Measurement must be submitted");
        List<zzo> zzu = zzgVar.zzu();
        if (!zzu.isEmpty()) {
            HashSet hashSet = new HashSet();
            for (zzo zzoVar : zzu) {
                Uri zzo = zzoVar.zzo();
                if (!hashSet.contains(zzo)) {
                    hashSet.add(zzo);
                    zzoVar.zzb(zzgVar);
                }
            }
        }
    }

    public final Context getContext() {
        return this.zzri;
    }

    public final <V> Future<V> zza(Callable<V> callable) {
        Preconditions.checkNotNull(callable);
        if (!(Thread.currentThread() instanceof zzc)) {
            return this.zzsp.submit(callable);
        }
        FutureTask futureTask = new FutureTask(callable);
        futureTask.run();
        return futureTask;
    }

    public final void zza(Runnable runnable) {
        Preconditions.checkNotNull(runnable);
        this.zzsp.submit(runnable);
    }

    public final void zza(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.zzsr = uncaughtExceptionHandler;
    }

    public final zzx zzad() {
        String str;
        String str2;
        if (this.zzsq == null) {
            synchronized (this) {
                if (this.zzsq == null) {
                    zzx zzxVar = new zzx();
                    PackageManager packageManager = this.zzri.getPackageManager();
                    String packageName = this.zzri.getPackageName();
                    zzxVar.setAppId(packageName);
                    zzxVar.setAppInstallerId(packageManager.getInstallerPackageName(packageName));
                    String str3 = packageName;
                    try {
                        PackageInfo packageInfo = packageManager.getPackageInfo(this.zzri.getPackageName(), 0);
                        str2 = packageName;
                        str = null;
                        if (packageInfo != null) {
                            CharSequence applicationLabel = packageManager.getApplicationLabel(packageInfo.applicationInfo);
                            str2 = packageName;
                            if (!TextUtils.isEmpty(applicationLabel)) {
                                str2 = applicationLabel.toString();
                            }
                            str3 = str2;
                            str = packageInfo.versionName;
                        }
                    } catch (PackageManager.NameNotFoundException e) {
                        String valueOf = String.valueOf(str3);
                        Log.e("GAv4", valueOf.length() != 0 ? "Error retrieving package info: appName set to ".concat(valueOf) : new String("Error retrieving package info: appName set to "));
                        str = null;
                        str2 = str3;
                    }
                    zzxVar.setAppName(str2);
                    zzxVar.setAppVersion(str);
                    this.zzsq = zzxVar;
                }
            }
        }
        return this.zzsq;
    }

    public final zzac zzae() {
        DisplayMetrics displayMetrics = this.zzri.getResources().getDisplayMetrics();
        zzac zzacVar = new zzac();
        zzacVar.setLanguage(zzdg.zza(Locale.getDefault()));
        zzacVar.zzuh = displayMetrics.widthPixels;
        zzacVar.zzui = displayMetrics.heightPixels;
        return zzacVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zze(zzg zzgVar) {
        if (zzgVar.zzaa()) {
            throw new IllegalStateException("Measurement prototype can't be submitted");
        } else if (zzgVar.zzx()) {
            throw new IllegalStateException("Measurement can only be submitted once");
        } else {
            zzg zzs = zzgVar.zzs();
            zzs.zzy();
            this.zzsp.execute(new zzl(this, zzs));
        }
    }
}

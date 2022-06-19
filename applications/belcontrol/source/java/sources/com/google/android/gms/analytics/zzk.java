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
import com.google.android.gms.internal.gtm.zzcz;
import com.google.android.gms.internal.gtm.zzq;
import com.google.android.gms.internal.gtm.zzv;
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
    private static volatile zzk zzsq;
    private final Context zzrm;
    private volatile zzq zzsu;
    private Thread.UncaughtExceptionHandler zzsv;
    private final zza zzst = new zza();
    private final List<zzn> zzsr = new CopyOnWriteArrayList();
    private final zze zzss = new zze();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/zzk$zza.class */
    public final class zza extends ThreadPoolExecutor {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public zza() {
            super(1, 1, 1L, TimeUnit.MINUTES, new LinkedBlockingQueue());
            zzk.this = r10;
            setThreadFactory(new zzb(null));
            allowCoreThreadTimeOut(true);
        }

        @Override // java.util.concurrent.AbstractExecutorService
        public final <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
            return new zzm(this, runnable, t);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/zzk$zzb.class */
    public static final class zzb implements ThreadFactory {
        private static final AtomicInteger zzsz = new AtomicInteger();

        private zzb() {
        }

        public /* synthetic */ zzb(zzl zzlVar) {
            this();
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            int incrementAndGet = zzsz.incrementAndGet();
            StringBuilder sb = new StringBuilder(23);
            sb.append("measurement-");
            sb.append(incrementAndGet);
            return new zzc(runnable, sb.toString());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/zzk$zzc.class */
    public static final class zzc extends Thread {
        public zzc(Runnable runnable, String str) {
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
        this.zzrm = applicationContext;
    }

    public static void zzav() {
        if (Thread.currentThread() instanceof zzc) {
            return;
        }
        throw new IllegalStateException("Call expected from worker thread");
    }

    public static zzk zzb(Context context) {
        Preconditions.checkNotNull(context);
        if (zzsq == null) {
            synchronized (zzk.class) {
                try {
                    if (zzsq == null) {
                        zzsq = new zzk(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzsq;
    }

    public static void zzb(zzg zzgVar) {
        Preconditions.checkNotMainThread("deliver should be called from worker thread");
        Preconditions.checkArgument(zzgVar.zzan(), "Measurement must be submitted");
        List<zzo> zzak = zzgVar.zzak();
        if (zzak.isEmpty()) {
            return;
        }
        HashSet hashSet = new HashSet();
        for (zzo zzoVar : zzak) {
            Uri zzae = zzoVar.zzae();
            if (!hashSet.contains(zzae)) {
                hashSet.add(zzae);
                zzoVar.zzb(zzgVar);
            }
        }
    }

    public final Context getContext() {
        return this.zzrm;
    }

    public final <V> Future<V> zza(Callable<V> callable) {
        Preconditions.checkNotNull(callable);
        if (Thread.currentThread() instanceof zzc) {
            FutureTask futureTask = new FutureTask(callable);
            futureTask.run();
            return futureTask;
        }
        return this.zzst.submit(callable);
    }

    public final void zza(Runnable runnable) {
        Preconditions.checkNotNull(runnable);
        this.zzst.submit(runnable);
    }

    public final void zza(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.zzsv = uncaughtExceptionHandler;
    }

    public final zzq zzat() {
        String str;
        String str2;
        if (this.zzsu == null) {
            synchronized (this) {
                if (this.zzsu == null) {
                    zzq zzqVar = new zzq();
                    PackageManager packageManager = this.zzrm.getPackageManager();
                    String packageName = this.zzrm.getPackageName();
                    zzqVar.setAppId(packageName);
                    zzqVar.setAppInstallerId(packageManager.getInstallerPackageName(packageName));
                    String str3 = packageName;
                    try {
                        PackageInfo packageInfo = packageManager.getPackageInfo(this.zzrm.getPackageName(), 0);
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
                    zzqVar.setAppName(str2);
                    zzqVar.setAppVersion(str);
                    this.zzsu = zzqVar;
                }
            }
        }
        return this.zzsu;
    }

    public final zzv zzau() {
        DisplayMetrics displayMetrics = this.zzrm.getResources().getDisplayMetrics();
        zzv zzvVar = new zzv();
        zzvVar.setLanguage(zzcz.zza(Locale.getDefault()));
        zzvVar.zzul = displayMetrics.widthPixels;
        zzvVar.zzum = displayMetrics.heightPixels;
        return zzvVar;
    }

    public final void zze(zzg zzgVar) {
        if (!zzgVar.zzaq()) {
            if (zzgVar.zzan()) {
                throw new IllegalStateException("Measurement can only be submitted once");
            }
            zzg zzai = zzgVar.zzai();
            zzai.zzao();
            this.zzst.execute(new zzl(this, zzai));
            return;
        }
        throw new IllegalStateException("Measurement prototype can't be submitted");
    }
}

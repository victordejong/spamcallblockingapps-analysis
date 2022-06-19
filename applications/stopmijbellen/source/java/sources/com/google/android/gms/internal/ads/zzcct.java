package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import androidx.recyclerview.widget.C0608b;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcct.class */
public final class zzcct implements zzccv {
    @VisibleForTesting
    public static zzccv zza;
    @VisibleForTesting
    public static zzccv zzb;
    private static final Object zzc = new Object();
    private final Context zze;
    private final zzcjf zzh;
    private final Object zzd = new Object();
    private final WeakHashMap<Thread, Boolean> zzf = new WeakHashMap<>();
    private final ExecutorService zzg = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool());

    public zzcct(Context context, zzcjf zzcjfVar) {
        zzfpi.zza();
        this.zze = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzh = zzcjfVar;
    }

    public static zzccv zza(Context context) {
        synchronized (zzc) {
            if (zza == null) {
                if (zzbne.zze.zze().booleanValue()) {
                    if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzfG)).booleanValue()) {
                        zza = new zzcct(context, zzcjf.zza());
                    }
                }
                zza = new zzccu();
            }
        }
        return zza;
    }

    public static zzccv zzb(Context context, zzcjf zzcjfVar) {
        synchronized (zzc) {
            if (zzb == null) {
                if (zzbne.zze.zze().booleanValue()) {
                    if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzfG)).booleanValue()) {
                        zzcct zzcctVar = new zzcct(context, zzcjfVar);
                        Thread thread = Looper.getMainLooper().getThread();
                        if (thread != null) {
                            synchronized (zzcctVar.zzd) {
                                zzcctVar.zzf.put(thread, Boolean.TRUE);
                            }
                            thread.setUncaughtExceptionHandler(new zzccs(zzcctVar, thread.getUncaughtExceptionHandler()));
                        }
                        Thread.setDefaultUncaughtExceptionHandler(new zzccr(zzcctVar, Thread.getDefaultUncaughtExceptionHandler()));
                        zzb = zzcctVar;
                    }
                }
                zzb = new zzccu();
            }
        }
        return zzb;
    }

    public final void zzc(Thread thread, Throwable th) {
        StackTraceElement[] stackTrace;
        if (th != null) {
            boolean z = false;
            boolean z2 = false;
            for (Throwable th2 = th; th2 != null; th2 = th2.getCause()) {
                for (StackTraceElement stackTraceElement : th2.getStackTrace()) {
                    z |= zzcis.zzj(stackTraceElement.getClassName());
                    z2 |= zzcct.class.getName().equals(stackTraceElement.getClassName());
                }
            }
            if (!z || z2) {
                return;
            }
            zze(th, "", 1.0f);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccv
    public final void zzd(Throwable th, String str) {
        zze(th, str, 1.0f);
    }

    @Override // com.google.android.gms.internal.ads.zzccv
    public final void zze(Throwable th, String str, float f) {
        boolean z;
        String str2;
        if (zzcis.zzf(th) == null) {
            return;
        }
        String name = th.getClass().getName();
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        String stringWriter2 = stringWriter.toString();
        double d = f;
        double random = Math.random();
        int i = f > 0.0f ? (int) (1.0f / f) : 1;
        if (random >= d) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        try {
            z = Wrappers.packageManager(this.zze).isCallerInstantApp();
        } catch (Throwable th2) {
            zzciz.zzh("Error fetching instant app info", th2);
            z = false;
        }
        try {
            str2 = this.zze.getPackageName();
        } catch (Throwable th3) {
            zzciz.zzj("Cannot obtain package name, proceeding.");
            str2 = "unknown";
        }
        Uri.Builder appendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("is_aia", Boolean.toString(z)).appendQueryParameter(FacebookAdapter.KEY_ID, "gmob-apps-report-exception").appendQueryParameter("os", Build.VERSION.RELEASE).appendQueryParameter("api", String.valueOf(Build.VERSION.SDK_INT));
        String str3 = Build.MANUFACTURER;
        String str4 = Build.MODEL;
        if (!str4.startsWith(str3)) {
            str4 = C0608b.m7625j(new StringBuilder(String.valueOf(str3).length() + 1 + str4.length()), str3, " ", str4);
        }
        arrayList.add(appendQueryParameter.appendQueryParameter("device", str4).appendQueryParameter("js", this.zzh.zza).appendQueryParameter("appid", str2).appendQueryParameter("exceptiontype", name).appendQueryParameter("stacktrace", stringWriter2).appendQueryParameter("eids", TextUtils.join(",", zzblj.zza())).appendQueryParameter("exceptionkey", str).appendQueryParameter("cl", "428884702").appendQueryParameter("rc", "dev").appendQueryParameter("sampling_rate", Integer.toString(i)).appendQueryParameter("pb_tm", String.valueOf(zzbne.zzc.zze())).appendQueryParameter("gmscv", String.valueOf(GoogleApiAvailabilityLight.getInstance().getApkVersion(this.zze))).appendQueryParameter("lite", true != this.zzh.zze ? "0" : "1").toString());
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            final String str5 = (String) it2.next();
            final zzcje zzcjeVar = new zzcje(null);
            this.zzg.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzccq
                @Override // java.lang.Runnable
                public final void run() {
                    zzcje.this.zza(str5);
                }
            });
        }
    }
}

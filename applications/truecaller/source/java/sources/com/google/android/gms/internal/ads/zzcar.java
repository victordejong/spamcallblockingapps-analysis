package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.amazon.device.ads.DtbConstants;
import com.freshchat.consumer.sdk.beans.User;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcar.class */
public final class zzcar implements zzcat {
    @VisibleForTesting
    public static zzcat zza;
    @VisibleForTesting
    public static zzcat zzb;
    private static final Object zzc = new Object();
    private final Context zze;
    private final zzcgz zzh;
    private final Object zzd = new Object();
    private final WeakHashMap<Thread, Boolean> zzf = new WeakHashMap<>();
    private final ExecutorService zzg = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool());

    public zzcar(Context context, zzcgz zzcgzVar) {
        zzfkz.zza();
        this.zze = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzh = zzcgzVar;
    }

    public static zzcat zza(Context context) {
        synchronized (zzc) {
            if (zza == null) {
                if (zzblf.zze.zze().booleanValue()) {
                    if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzfz)).booleanValue()) {
                        zza = new zzcar(context, zzcgz.zza());
                    }
                }
                zza = new zzcas();
            }
        }
        return zza;
    }

    public static zzcat zzb(Context context, zzcgz zzcgzVar) {
        synchronized (zzc) {
            if (zzb == null) {
                if (zzblf.zze.zze().booleanValue()) {
                    if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzfz)).booleanValue()) {
                        zzcar zzcarVar = new zzcar(context, zzcgzVar);
                        Thread thread = Looper.getMainLooper().getThread();
                        if (thread != null) {
                            synchronized (zzcarVar.zzd) {
                                zzcarVar.zzf.put(thread, Boolean.TRUE);
                            }
                            thread.setUncaughtExceptionHandler(new zzcaq(zzcarVar, thread.getUncaughtExceptionHandler()));
                        }
                        Thread.setDefaultUncaughtExceptionHandler(new zzcap(zzcarVar, Thread.getDefaultUncaughtExceptionHandler()));
                        zzb = zzcarVar;
                    }
                }
                zzb = new zzcas();
            }
        }
        return zzb;
    }

    public final void zzc(Thread thread, Throwable th) {
        StackTraceElement[] stackTrace;
        if (th != null) {
            boolean z = false;
            boolean z2 = false;
            Throwable th2 = th;
            while (true) {
                Throwable th3 = th2;
                if (th3 == null) {
                    break;
                }
                for (StackTraceElement stackTraceElement : th3.getStackTrace()) {
                    z |= zzcgm.zzi(stackTraceElement.getClassName());
                    z2 |= zzcar.class.getName().equals(stackTraceElement.getClassName());
                }
                th2 = th3.getCause();
            }
            if (!z || z2) {
                return;
            }
            zze(th, "", 1.0f);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcat
    public final void zzd(Throwable th, String str) {
        zze(th, str, 1.0f);
    }

    @Override // com.google.android.gms.internal.ads.zzcat
    public final void zze(Throwable th, String str, float f) {
        boolean z;
        String str2;
        if (zzcgm.zzg(th) == null) {
            return;
        }
        String name = th.getClass().getName();
        StringWriter stringWriter = new StringWriter();
        zzged.zzc(th, new PrintWriter(stringWriter));
        String stringWriter2 = stringWriter.toString();
        double d = f;
        double random = Math.random();
        int i = f > 0.0f ? (int) (1.0f / f) : 1;
        if (random >= d) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        try {
            z = Wrappers.m38764a(this.zze).m38765d();
        } catch (Throwable th2) {
            zzcgt.zzg("Error fetching instant app info", th2);
            z = false;
        }
        try {
            str2 = this.zze.getPackageName();
        } catch (Throwable th3) {
            zzcgt.zzi("Cannot obtain package name, proceeding.");
            str2 = "unknown";
        }
        Uri.Builder appendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("is_aia", Boolean.toString(z)).appendQueryParameter("id", "gmob-apps-report-exception").appendQueryParameter(User.DEVICE_META_OS_NAME, Build.VERSION.RELEASE).appendQueryParameter("api", String.valueOf(Build.VERSION.SDK_INT));
        String str3 = Build.MANUFACTURER;
        String str4 = Build.MODEL;
        if (!str4.startsWith(str3)) {
            str4 = C22128a.m8610j(new StringBuilder(String.valueOf(str3).length() + 1 + str4.length()), str3, StringConstant.SPACE, str4);
        }
        Uri.Builder appendQueryParameter2 = appendQueryParameter.appendQueryParameter(AnalyticsConstants.DEVICE, str4).appendQueryParameter("js", this.zzh.zza).appendQueryParameter("appid", str2).appendQueryParameter("exceptiontype", name).appendQueryParameter("stacktrace", stringWriter2).appendQueryParameter("eids", TextUtils.join(",", zzbjl.zzc())).appendQueryParameter("exceptionkey", str).appendQueryParameter("cl", "407425155").appendQueryParameter("rc", "dev").appendQueryParameter(DTBMetricsConfiguration.SAMPLING_RATE_ANALYTICS_KEY_NAME, Integer.toString(i)).appendQueryParameter("pb_tm", String.valueOf(zzblf.zzc.zze()));
        GoogleApiAvailabilityLight googleApiAvailabilityLight = GoogleApiAvailabilityLight.f5675b;
        Context context = this.zze;
        Objects.requireNonNull(googleApiAvailabilityLight);
        arrayList.add(appendQueryParameter2.appendQueryParameter("gmscv", String.valueOf(GooglePlayServicesUtilLight.getApkVersion(context))).appendQueryParameter("lite", true != this.zzh.zze ? DtbConstants.NETWORK_TYPE_UNKNOWN : "1").toString());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            this.zzg.execute(new Runnable(new zzcgy(null), (String) it.next()) { // from class: com.google.android.gms.internal.ads.zzcao
                private final zzcgy zza;
                private final String zzb;

                {
                    this.zza = zzcgyVar;
                    this.zzb = str5;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zza(this.zzb);
                }
            });
        }
    }
}

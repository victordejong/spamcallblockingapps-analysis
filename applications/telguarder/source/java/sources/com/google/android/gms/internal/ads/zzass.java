package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import androidx.webkit.ProxyConfig;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.wrappers.Wrappers;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzass.class */
public final class zzass implements zzasw {
    private static final Object lock = new Object();
    private static zzasw zzdtt;
    private static zzasw zzdtu;
    private final Context zzcmf;
    private final Object zzdtv;
    private final WeakHashMap<Thread, Boolean> zzdtw;
    private final zzazn zzdtx;
    private final ExecutorService zzyy;

    private zzass(Context context) {
        this(context, zzazn.zzaab());
    }

    private zzass(Context context, zzazn zzaznVar) {
        this.zzdtv = new Object();
        this.zzdtw = new WeakHashMap<>();
        this.zzyy = zzdvd.zzayx().zzel(zzdvm.zzhvh);
        this.zzcmf = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzdtx = zzaznVar;
    }

    private final Uri.Builder zza(String str, String str2, String str3, int i) {
        boolean z;
        String str4;
        try {
            z = Wrappers.packageManager(this.zzcmf).isCallerInstantApp();
        } catch (Throwable th) {
            zzazk.zzc("Error fetching instant app info", th);
            z = false;
        }
        try {
            str4 = this.zzcmf.getPackageName();
        } catch (Throwable th2) {
            zzazk.zzex("Cannot obtain package name, proceeding.");
            str4 = "unknown";
        }
        Uri.Builder appendQueryParameter = new Uri.Builder().scheme(ProxyConfig.MATCH_HTTPS).path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("is_aia", Boolean.toString(z)).appendQueryParameter("id", "gmob-apps-report-exception").appendQueryParameter("os", Build.VERSION.RELEASE).appendQueryParameter(POBCommonConstants.API_PARAM, String.valueOf(Build.VERSION.SDK_INT));
        String str5 = Build.MANUFACTURER;
        String str6 = Build.MODEL;
        if (!str6.startsWith(str5)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str5).length() + 1 + String.valueOf(str6).length());
            sb.append(str5);
            sb.append(" ");
            sb.append(str6);
            str6 = sb.toString();
        }
        Uri.Builder appendQueryParameter2 = appendQueryParameter.appendQueryParameter(POBConstants.KEY_DEVICE, str6).appendQueryParameter("js", this.zzdtx.zzbrp).appendQueryParameter("appid", str4).appendQueryParameter("exceptiontype", str).appendQueryParameter("stacktrace", str2).appendQueryParameter("eids", TextUtils.join(",", zzabp.zzsc())).appendQueryParameter("exceptionkey", str3).appendQueryParameter("cl", "350251165").appendQueryParameter("rc", "dev").appendQueryParameter("sampling_rate", Integer.toString(i)).appendQueryParameter("pb_tm", String.valueOf(zzadr.zzdes.get()));
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcqw)).booleanValue()) {
            appendQueryParameter2.appendQueryParameter("gmscv", String.valueOf(GoogleApiAvailabilityLight.getInstance().getApkVersion(this.zzcmf))).appendQueryParameter("lite", this.zzdtx.zzeib ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
        }
        return appendQueryParameter2;
    }

    public static zzasw zzc(Context context, zzazn zzaznVar) {
        synchronized (lock) {
            if (zzdtu == null) {
                if (zzadr.zzdeu.get().booleanValue()) {
                    if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzczf)).booleanValue()) {
                        zzass zzassVar = new zzass(context, zzaznVar);
                        Thread thread = Looper.getMainLooper().getThread();
                        if (thread != null) {
                            synchronized (zzassVar.zzdtv) {
                                zzassVar.zzdtw.put(thread, true);
                            }
                            thread.setUncaughtExceptionHandler(new zzasx(zzassVar, thread.getUncaughtExceptionHandler()));
                        }
                        Thread.setDefaultUncaughtExceptionHandler(new zzasu(zzassVar, Thread.getDefaultUncaughtExceptionHandler()));
                        zzdtu = zzassVar;
                    }
                }
                zzdtu = new zzasz();
            }
        }
        return zzdtu;
    }

    public static zzasw zzq(Context context) {
        synchronized (lock) {
            if (zzdtt == null) {
                if (zzadr.zzdeu.get().booleanValue()) {
                    if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzczf)).booleanValue()) {
                        zzdtt = new zzass(context);
                    }
                }
                zzdtt = new zzasz();
            }
        }
        return zzdtt;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(java.lang.Thread r6, java.lang.Throwable r7) {
        /*
            r5 = this;
            r0 = 1
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L6f
            r0 = r7
            r6 = r0
            r0 = 0
            r9 = r0
            r0 = 0
            r10 = r0
        Le:
            r0 = r6
            if (r0 == 0) goto L5f
            r0 = r6
            java.lang.StackTraceElement[] r0 = r0.getStackTrace()
            r11 = r0
            r0 = r11
            int r0 = r0.length
            r12 = r0
            r0 = 0
            r13 = r0
        L20:
            r0 = r13
            r1 = r12
            if (r0 >= r1) goto L57
            r0 = r11
            r1 = r13
            r0 = r0[r1]
            r14 = r0
            r0 = r14
            java.lang.String r0 = r0.getClassName()
            boolean r0 = com.google.android.gms.internal.ads.zzaza.zzer(r0)
            if (r0 == 0) goto L3c
            r0 = 1
            r9 = r0
        L3c:
            r0 = r5
            java.lang.Class r0 = r0.getClass()
            java.lang.String r0 = r0.getName()
            r1 = r14
            java.lang.String r1 = r1.getClassName()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L51
            r0 = 1
            r10 = r0
        L51:
            int r13 = r13 + 1
            goto L20
        L57:
            r0 = r6
            java.lang.Throwable r0 = r0.getCause()
            r6 = r0
            goto Le
        L5f:
            r0 = r9
            if (r0 == 0) goto L6f
            r0 = r10
            if (r0 != 0) goto L6f
            r0 = r8
            r13 = r0
            goto L72
        L6f:
            r0 = 0
            r13 = r0
        L72:
            r0 = r13
            if (r0 == 0) goto L80
            r0 = r5
            r1 = r7
            java.lang.String r2 = ""
            r3 = 1065353216(0x3f800000, float:1.0)
            r0.zza(r1, r2, r3)
        L80:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzass.zza(java.lang.Thread, java.lang.Throwable):void");
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    public final void zza(Throwable th, String str) {
        zza(th, str, 1.0f);
    }

    @Override // com.google.android.gms.internal.ads.zzasw
    public final void zza(Throwable th, String str, float f) {
        if (zzaza.zzd(th) == null) {
            return;
        }
        String name = th.getClass().getName();
        StringWriter stringWriter = new StringWriter();
        zzeja.zza(th, new PrintWriter(stringWriter));
        String stringWriter2 = stringWriter.toString();
        int i = 1;
        boolean z = Math.random() < ((double) f);
        if (f > 0.0f) {
            i = (int) (1.0f / f);
        }
        if (!z) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(zza(name, stringWriter2, str, i).toString());
        ArrayList arrayList2 = arrayList;
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            i2++;
            this.zzyy.execute(new Runnable(new zzazo(), (String) arrayList2.get(i2)) { // from class: com.google.android.gms.internal.ads.zzasv
                private final String zzdjf;
                private final zzazo zzdua;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzdua = zzazoVar;
                    this.zzdjf = str2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzdua.zzel(this.zzdjf);
                }
            });
        }
    }
}

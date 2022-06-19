package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaty.class */
public final class zzaty {
    private float zzbsd;
    private int zzdqi;
    private int zzdqj;
    private int zzdxv;
    private boolean zzdxw;
    private boolean zzdxx;
    private int zzdxy;
    private int zzdxz;
    private int zzdya;
    private String zzdyb;
    private int zzdyc;
    private int zzdyd;
    private int zzdye;
    private boolean zzdyf;
    private int zzdyg;
    private double zzdyh;
    private boolean zzdyi;
    private String zzdyj;
    private String zzdyk;
    private boolean zzdyl;
    private boolean zzdym;
    private String zzdyn;
    private boolean zzdyo;
    private final boolean zzdyp;
    private boolean zzdyq;
    private String zzdyr;
    private String zzdys;
    private String zzdyt;
    private boolean zzdyu;

    public zzaty(Context context) {
        DisplayMetrics displayMetrics;
        PackageManager packageManager = context.getPackageManager();
        zzr(context);
        zzs(context);
        zzt(context);
        Locale locale = Locale.getDefault();
        this.zzdyl = zza(packageManager, "geo:0,0?q=donuts") != null;
        this.zzdym = zza(packageManager, "http://www.google.com") != null;
        this.zzdyn = locale.getCountry();
        zzwr.zzqn();
        this.zzdyo = zzaza.zzzw();
        this.zzdyp = DeviceProperties.isLatchsky(context);
        this.zzdyq = DeviceProperties.isSidewinder(context);
        this.zzdyr = locale.getLanguage();
        this.zzdys = zza(context, packageManager);
        this.zzdyt = zzu(context);
        Resources resources = context.getResources();
        if (resources == null || (displayMetrics = resources.getDisplayMetrics()) == null) {
            return;
        }
        this.zzbsd = displayMetrics.density;
        this.zzdqi = displayMetrics.widthPixels;
        this.zzdqj = displayMetrics.heightPixels;
    }

    public zzaty(Context context, zzatz zzatzVar) {
        zzr(context);
        zzs(context);
        zzt(context);
        this.zzdyj = Build.FINGERPRINT;
        this.zzdyk = Build.DEVICE;
        this.zzdyu = PlatformVersion.isAtLeastIceCreamSandwichMR1() && zzacp.zzj(context);
        this.zzdyl = zzatzVar.zzdyl;
        this.zzdym = zzatzVar.zzdym;
        this.zzdyn = zzatzVar.zzdyn;
        this.zzdyo = zzatzVar.zzdyo;
        this.zzdyp = zzatzVar.zzdyp;
        this.zzdyq = zzatzVar.zzdyq;
        this.zzdyr = zzatzVar.zzdyr;
        this.zzdys = zzatzVar.zzdys;
        this.zzdyt = zzatzVar.zzdyt;
        this.zzbsd = zzatzVar.zzbsd;
        this.zzdqi = zzatzVar.zzdqi;
        this.zzdqj = zzatzVar.zzdqj;
    }

    private static ResolveInfo zza(PackageManager packageManager, String str) {
        try {
            return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
        } catch (Throwable th) {
            zzr.zzkv().zza(th, "DeviceInfo.getResolveInfo");
            return null;
        }
    }

    private static String zza(Context context, PackageManager packageManager) {
        ActivityInfo activityInfo;
        ResolveInfo zza = zza(packageManager, "market://details?id=com.google.android.gms.ads");
        if (zza == null || (activityInfo = zza.activityInfo) == null) {
            return null;
        }
        try {
            PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(activityInfo.packageName, 0);
            if (packageInfo == null) {
                return null;
            }
            int i = packageInfo.versionCode;
            String str = activityInfo.packageName;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
            sb.append(i);
            sb.append(".");
            sb.append(str);
            return sb.toString();
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    private final void zzr(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager != null) {
            try {
                this.zzdxv = audioManager.getMode();
                this.zzdxw = audioManager.isMusicActive();
                this.zzdxx = audioManager.isSpeakerphoneOn();
                this.zzdxy = audioManager.getStreamVolume(3);
                this.zzdxz = audioManager.getRingerMode();
                this.zzdya = audioManager.getStreamVolume(2);
                return;
            } catch (Throwable th) {
                zzr.zzkv().zza(th, "DeviceInfo.gatherAudioInfo");
            }
        }
        this.zzdxv = -2;
        this.zzdxw = false;
        this.zzdxx = false;
        this.zzdxy = 0;
        this.zzdxz = 2;
        this.zzdya = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzs(android.content.Context r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "phone"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0
            r5 = r0
            r0 = r4
            java.lang.String r1 = "connectivity"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.net.ConnectivityManager r0 = (android.net.ConnectivityManager) r0
            r6 = r0
            r0 = r3
            r1 = r5
            java.lang.String r1 = r1.getNetworkOperator()
            r0.zzdyb = r1
            boolean r0 = com.google.android.gms.common.util.PlatformVersion.isAtLeastR()
            if (r0 == 0) goto L40
            com.google.android.gms.internal.ads.zzaba<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzabp.zzdag
            r7 = r0
            com.google.android.gms.internal.ads.zzabl r0 = com.google.android.gms.internal.ads.zzwr.zzqr()
            r1 = r7
            java.lang.Object r0 = r0.zzd(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L40
            r0 = 0
            r8 = r0
            goto L46
        L40:
            r0 = r5
            int r0 = r0.getNetworkType()
            r8 = r0
        L46:
            r0 = r3
            r1 = r8
            r0.zzdyd = r1
            r0 = r3
            r1 = r5
            int r1 = r1.getPhoneType()
            r0.zzdye = r1
            r0 = r3
            r1 = -2
            r0.zzdyc = r1
            r0 = r3
            r1 = 0
            r0.zzdyf = r1
            r0 = r3
            r1 = -1
            r0.zzdyg = r1
            com.google.android.gms.ads.internal.util.zzj r0 = com.google.android.gms.ads.internal.zzr.zzkr()
            r0 = r4
            java.lang.String r1 = "android.permission.ACCESS_NETWORK_STATE"
            boolean r0 = com.google.android.gms.ads.internal.util.zzj.zzp(r0, r1)
            if (r0 == 0) goto L9e
            r0 = r6
            android.net.NetworkInfo r0 = r0.getActiveNetworkInfo()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L91
            r0 = r3
            r1 = r4
            int r1 = r1.getType()
            r0.zzdyc = r1
            r0 = r3
            r1 = r4
            android.net.NetworkInfo$DetailedState r1 = r1.getDetailedState()
            int r1 = r1.ordinal()
            r0.zzdyg = r1
            goto L96
        L91:
            r0 = r3
            r1 = -1
            r0.zzdyc = r1
        L96:
            r0 = r3
            r1 = r6
            boolean r1 = r1.isActiveNetworkMetered()
            r0.zzdyf = r1
        L9e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaty.zzs(android.content.Context):void");
    }

    private final void zzt(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (registerReceiver == null) {
            this.zzdyh = -1.0d;
            this.zzdyi = false;
            return;
        }
        int intExtra = registerReceiver.getIntExtra("status", -1);
        this.zzdyh = registerReceiver.getIntExtra(FirebaseAnalytics.Param.LEVEL, -1) / registerReceiver.getIntExtra("scale", -1);
        if (intExtra == 2 || intExtra == 5) {
            z = true;
        }
        this.zzdyi = z;
    }

    private static String zzu(Context context) {
        try {
            PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo("com.android.vending", 128);
            if (packageInfo == null) {
                return null;
            }
            int i = packageInfo.versionCode;
            String str = packageInfo.packageName;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
            sb.append(i);
            sb.append(".");
            sb.append(str);
            return sb.toString();
        } catch (Exception e) {
            return null;
        }
    }

    public final zzatz zzws() {
        return new zzatz(this.zzdxv, this.zzdyl, this.zzdym, this.zzdyb, this.zzdyn, this.zzdyo, this.zzdyp, this.zzdyq, this.zzdxw, this.zzdxx, this.zzdyr, this.zzdys, this.zzdyt, this.zzdxy, this.zzdyc, this.zzdyd, this.zzdye, this.zzdxz, this.zzdya, this.zzbsd, this.zzdqi, this.zzdqj, this.zzdyh, this.zzdyi, this.zzdyf, this.zzdyg, this.zzdyj, this.zzdyu, this.zzdyk);
    }
}

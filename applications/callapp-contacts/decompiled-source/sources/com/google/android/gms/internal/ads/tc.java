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
import com.google.android.gms.common.d.c;
import com.google.android.gms.common.util.j;
import com.google.android.gms.common.util.n;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/tc.class */
public final class tc {
    private int A;
    private String B;
    private boolean C;

    /* renamed from: a  reason: collision with root package name */
    private int f28391a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f28392b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f28393c;

    /* renamed from: d  reason: collision with root package name */
    private int f28394d;
    private int e;
    private int f;
    private String g;
    private int h;
    private int i;
    private int j;
    private boolean k;
    private int l;
    private double m;
    private boolean n;
    private String o;
    private String p;
    private boolean q;
    private boolean r;
    private String s;
    private boolean t;
    private final boolean u;
    private boolean v;
    private String w;
    private String x;
    private float y;
    private int z;

    public tc(Context context) {
        DisplayMetrics displayMetrics;
        PackageManager packageManager = context.getPackageManager();
        a(context);
        b(context);
        c(context);
        Locale locale = Locale.getDefault();
        boolean z = true;
        this.q = a(packageManager, "geo:0,0?q=donuts") != null;
        if (a(packageManager, "http://www.google.com") == null) {
            z = false;
        }
        this.r = z;
        this.s = locale.getCountry();
        ekb.a();
        this.t = yq.a();
        this.u = j.d(context);
        this.v = j.c(context);
        this.w = locale.getLanguage();
        this.x = a(context, packageManager);
        this.B = d(context);
        Resources resources = context.getResources();
        if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
            this.y = displayMetrics.density;
            this.z = displayMetrics.widthPixels;
            this.A = displayMetrics.heightPixels;
        }
    }

    public tc(Context context, sz szVar) {
        a(context);
        b(context);
        c(context);
        this.o = Build.FINGERPRINT;
        this.p = Build.DEVICE;
        this.C = n.a() && br.a(context);
        this.q = szVar.f28381a;
        this.r = szVar.f28382b;
        this.s = szVar.f28383c;
        this.t = szVar.f28384d;
        this.u = szVar.e;
        this.v = szVar.f;
        this.w = szVar.g;
        this.x = szVar.h;
        this.B = szVar.i;
        this.y = szVar.l;
        this.z = szVar.m;
        this.A = szVar.n;
    }

    private static ResolveInfo a(PackageManager packageManager, String str) {
        try {
            return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
        } catch (Throwable th) {
            zzr.zzkz().a(th, "DeviceInfo.getResolveInfo");
            return null;
        }
    }

    private static String a(Context context, PackageManager packageManager) {
        ActivityInfo activityInfo;
        ResolveInfo a2 = a(packageManager, "market://details?id=com.google.android.gms.ads");
        if (a2 == null || (activityInfo = a2.activityInfo) == null) {
            return null;
        }
        try {
            PackageInfo b2 = c.a(context).b(activityInfo.packageName, 0);
            if (b2 == null) {
                return null;
            }
            int i = b2.versionCode;
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

    private final void a(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager != null) {
            try {
                this.f28391a = audioManager.getMode();
                this.f28392b = audioManager.isMusicActive();
                this.f28393c = audioManager.isSpeakerphoneOn();
                this.f28394d = audioManager.getStreamVolume(3);
                this.e = audioManager.getRingerMode();
                this.f = audioManager.getStreamVolume(2);
                return;
            } catch (Throwable th) {
                zzr.zzkz().a(th, "DeviceInfo.gatherAudioInfo");
            }
        }
        this.f28391a = -2;
        this.f28392b = false;
        this.f28393c = false;
        this.f28394d = 0;
        this.e = 2;
        this.f = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void b(android.content.Context r4) {
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
            r0.g = r1
            boolean r0 = com.google.android.gms.common.util.n.l()
            if (r0 == 0) goto L_0x0040
            com.google.android.gms.internal.ads.af<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.aq.eZ
            r7 = r0
            com.google.android.gms.internal.ads.am r0 = com.google.android.gms.internal.ads.ekb.e()
            r1 = r7
            java.lang.Object r0 = r0.a(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x0040
            r0 = 0
            r8 = r0
            goto L_0x0046
        L_0x0040:
            r0 = r5
            int r0 = r0.getNetworkType()
            r8 = r0
        L_0x0046:
            r0 = r3
            r1 = r8
            r0.i = r1
            r0 = r3
            r1 = r5
            int r1 = r1.getPhoneType()
            r0.j = r1
            r0 = r3
            r1 = -2
            r0.h = r1
            r0 = r3
            r1 = 0
            r0.k = r1
            r0 = r3
            r1 = -1
            r0.l = r1
            com.google.android.gms.ads.internal.util.zzj r0 = com.google.android.gms.ads.internal.zzr.zzkv()
            r0 = r4
            java.lang.String r1 = "android.permission.ACCESS_NETWORK_STATE"
            boolean r0 = com.google.android.gms.ads.internal.util.zzj.zzp(r0, r1)
            if (r0 == 0) goto L_0x009e
            r0 = r6
            android.net.NetworkInfo r0 = r0.getActiveNetworkInfo()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0091
            r0 = r3
            r1 = r4
            int r1 = r1.getType()
            r0.h = r1
            r0 = r3
            r1 = r4
            android.net.NetworkInfo$DetailedState r1 = r1.getDetailedState()
            int r1 = r1.ordinal()
            r0.l = r1
            goto L_0x0096
        L_0x0091:
            r0 = r3
            r1 = -1
            r0.h = r1
        L_0x0096:
            r0 = r3
            r1 = r6
            boolean r1 = r1.isActiveNetworkMetered()
            r0.k = r1
        L_0x009e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.tc.b(android.content.Context):void");
    }

    private final void c(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (registerReceiver != null) {
            int intExtra = registerReceiver.getIntExtra("status", -1);
            this.m = registerReceiver.getIntExtra("level", -1) / registerReceiver.getIntExtra("scale", -1);
            if (intExtra == 2 || intExtra == 5) {
                z = true;
            }
            this.n = z;
            return;
        }
        this.m = -1.0d;
        this.n = false;
    }

    private static String d(Context context) {
        try {
            PackageInfo b2 = c.a(context).b("com.android.vending", 128);
            if (b2 == null) {
                return null;
            }
            int i = b2.versionCode;
            String str = b2.packageName;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
            sb.append(i);
            sb.append(".");
            sb.append(str);
            return sb.toString();
        } catch (Exception e) {
            return null;
        }
    }

    public final sz a() {
        return new sz(this.f28391a, this.q, this.r, this.g, this.s, this.t, this.u, this.v, this.f28392b, this.f28393c, this.w, this.x, this.B, this.f28394d, this.h, this.i, this.j, this.e, this.f, this.y, this.z, this.A, this.m, this.n, this.k, this.l, this.o, this.C, this.p);
    }
}

package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.common.p132c.C2586c;
import com.google.android.gms.common.util.C2712i;
import com.google.android.gms.common.util.C2716m;
import java.util.Locale;
/* renamed from: com.google.android.gms.internal.ads.qe */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qe.class */
public final class C3432qe {

    /* renamed from: A */
    private int f17225A;

    /* renamed from: B */
    private String f17226B;

    /* renamed from: C */
    private boolean f17227C;

    /* renamed from: a */
    private int f17228a;

    /* renamed from: b */
    private boolean f17229b;

    /* renamed from: c */
    private boolean f17230c;

    /* renamed from: d */
    private int f17231d;

    /* renamed from: e */
    private int f17232e;

    /* renamed from: f */
    private int f17233f;

    /* renamed from: g */
    private String f17234g;

    /* renamed from: h */
    private int f17235h;

    /* renamed from: i */
    private int f17236i;

    /* renamed from: j */
    private int f17237j;

    /* renamed from: k */
    private boolean f17238k;

    /* renamed from: l */
    private int f17239l;

    /* renamed from: m */
    private double f17240m;

    /* renamed from: n */
    private boolean f17241n;

    /* renamed from: o */
    private String f17242o;

    /* renamed from: p */
    private String f17243p;

    /* renamed from: q */
    private boolean f17244q;

    /* renamed from: r */
    private boolean f17245r;

    /* renamed from: s */
    private String f17246s;

    /* renamed from: t */
    private boolean f17247t;

    /* renamed from: u */
    private final boolean f17248u;

    /* renamed from: v */
    private boolean f17249v;

    /* renamed from: w */
    private String f17250w;

    /* renamed from: x */
    private String f17251x;

    /* renamed from: y */
    private float f17252y;

    /* renamed from: z */
    private int f17253z;

    public C3432qe(Context context) {
        DisplayMetrics displayMetrics;
        PackageManager packageManager = context.getPackageManager();
        m7316a(context);
        m7313b(context);
        m7312c(context);
        Locale locale = Locale.getDefault();
        this.f17244q = m7314a(packageManager, "geo:0,0?q=donuts") != null;
        this.f17245r = m7314a(packageManager, "http://www.google.com") != null;
        this.f17246s = locale.getCountry();
        dyx.m8162a();
        this.f17247t = C3634xr.m6803a();
        this.f17248u = C2712i.m13854d(context);
        this.f17249v = C2712i.m13855c(context);
        this.f17250w = locale.getLanguage();
        this.f17251x = m7315a(context, packageManager);
        this.f17226B = m7311d(context);
        Resources resources = context.getResources();
        if (resources == null || (displayMetrics = resources.getDisplayMetrics()) == null) {
            return;
        }
        this.f17252y = displayMetrics.density;
        this.f17253z = displayMetrics.widthPixels;
        this.f17225A = displayMetrics.heightPixels;
    }

    public C3432qe(Context context, C3433qf c3433qf) {
        m7316a(context);
        m7313b(context);
        m7312c(context);
        this.f17242o = Build.FINGERPRINT;
        this.f17243p = Build.DEVICE;
        this.f17227C = C2716m.m13841b() && C3643y.m6757a(context);
        this.f17244q = c3433qf.f17257a;
        this.f17245r = c3433qf.f17258b;
        this.f17246s = c3433qf.f17259c;
        this.f17247t = c3433qf.f17260d;
        this.f17248u = c3433qf.f17261e;
        this.f17249v = c3433qf.f17262f;
        this.f17250w = c3433qf.f17263g;
        this.f17251x = c3433qf.f17264h;
        this.f17226B = c3433qf.f17265i;
        this.f17252y = c3433qf.f17268l;
        this.f17253z = c3433qf.f17269m;
        this.f17225A = c3433qf.f17270n;
    }

    /* renamed from: a */
    private static ResolveInfo m7314a(PackageManager packageManager, String str) {
        ResolveInfo resolveInfo;
        try {
            resolveInfo = packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
        } catch (Throwable th) {
            C2341q.m14740g().m7095a(th, "DeviceInfo.getResolveInfo");
            resolveInfo = null;
        }
        return resolveInfo;
    }

    /* renamed from: a */
    private static String m7315a(Context context, PackageManager packageManager) {
        String str;
        ResolveInfo m7314a = m7314a(packageManager, "market://details?id=com.google.android.gms.ads");
        if (m7314a == null) {
            str = null;
        } else {
            ActivityInfo activityInfo = m7314a.activityInfo;
            str = null;
            if (activityInfo != null) {
                try {
                    PackageInfo m14194b = C2586c.m14193a(context).m14194b(activityInfo.packageName, 0);
                    str = null;
                    if (m14194b != null) {
                        int i = m14194b.versionCode;
                        String str2 = activityInfo.packageName;
                        str = new StringBuilder(String.valueOf(str2).length() + 12).append(i).append(".").append(str2).toString();
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    str = null;
                }
            }
        }
        return str;
    }

    /* renamed from: a */
    private final void m7316a(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager != null) {
            try {
                this.f17228a = audioManager.getMode();
                this.f17229b = audioManager.isMusicActive();
                this.f17230c = audioManager.isSpeakerphoneOn();
                this.f17231d = audioManager.getStreamVolume(3);
                this.f17232e = audioManager.getRingerMode();
                this.f17233f = audioManager.getStreamVolume(2);
                return;
            } catch (Throwable th) {
                C2341q.m14740g().m7095a(th, "DeviceInfo.gatherAudioInfo");
            }
        }
        this.f17228a = -2;
        this.f17229b = false;
        this.f17230c = false;
        this.f17231d = 0;
        this.f17232e = 2;
        this.f17233f = 0;
    }

    @TargetApi(16)
    /* renamed from: b */
    private final void m7313b(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        this.f17234g = telephonyManager.getNetworkOperator();
        this.f17236i = telephonyManager.getNetworkType();
        this.f17237j = telephonyManager.getPhoneType();
        this.f17235h = -2;
        this.f17238k = false;
        this.f17239l = -1;
        C2341q.m14744c();
        if (C3567ve.m7005a(context, "android.permission.ACCESS_NETWORK_STATE")) {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                this.f17235h = activeNetworkInfo.getType();
                this.f17239l = activeNetworkInfo.getDetailedState().ordinal();
            } else {
                this.f17235h = -1;
            }
            this.f17238k = connectivityManager.isActiveNetworkMetered();
        }
    }

    /* renamed from: c */
    private final void m7312c(Context context) {
        boolean z = false;
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            this.f17240m = -1.0d;
            this.f17241n = false;
            return;
        }
        int intExtra = registerReceiver.getIntExtra("status", -1);
        this.f17240m = registerReceiver.getIntExtra("level", -1) / registerReceiver.getIntExtra("scale", -1);
        if (intExtra == 2 || intExtra == 5) {
            z = true;
        }
        this.f17241n = z;
    }

    /* renamed from: d */
    private static String m7311d(Context context) {
        String str;
        try {
            PackageInfo m14194b = C2586c.m14193a(context).m14194b("com.android.vending", 128);
            str = null;
            if (m14194b != null) {
                int i = m14194b.versionCode;
                String str2 = m14194b.packageName;
                str = new StringBuilder(String.valueOf(str2).length() + 12).append(i).append(".").append(str2).toString();
            }
        } catch (Exception e) {
            str = null;
        }
        return str;
    }

    /* renamed from: a */
    public final C3433qf m7317a() {
        return new C3433qf(this.f17228a, this.f17244q, this.f17245r, this.f17234g, this.f17246s, this.f17247t, this.f17248u, this.f17249v, this.f17229b, this.f17230c, this.f17250w, this.f17251x, this.f17226B, this.f17231d, this.f17235h, this.f17236i, this.f17237j, this.f17232e, this.f17233f, this.f17252y, this.f17253z, this.f17225A, this.f17240m, this.f17241n, this.f17238k, this.f17239l, this.f17242o, this.f17227C, this.f17243p);
    }
}

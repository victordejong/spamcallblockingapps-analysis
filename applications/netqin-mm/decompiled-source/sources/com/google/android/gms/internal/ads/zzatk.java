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
import com.applovin.sdk.AppLovinEventTypes;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.common.collect.MapMakerInternalMap;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzatk.class */
public final class zzatk {

    /* renamed from: A */
    public int f24467A;

    /* renamed from: B */
    public String f24468B;

    /* renamed from: C */
    public boolean f24469C;

    /* renamed from: a */
    public int f24470a;

    /* renamed from: b */
    public boolean f24471b;

    /* renamed from: c */
    public boolean f24472c;

    /* renamed from: d */
    public int f24473d;

    /* renamed from: e */
    public int f24474e;

    /* renamed from: f */
    public int f24475f;

    /* renamed from: g */
    public String f24476g;

    /* renamed from: h */
    public int f24477h;

    /* renamed from: i */
    public int f24478i;

    /* renamed from: j */
    public int f24479j;

    /* renamed from: k */
    public boolean f24480k;

    /* renamed from: l */
    public int f24481l;

    /* renamed from: m */
    public double f24482m;

    /* renamed from: n */
    public boolean f24483n;

    /* renamed from: o */
    public String f24484o;

    /* renamed from: p */
    public String f24485p;

    /* renamed from: q */
    public boolean f24486q;

    /* renamed from: r */
    public boolean f24487r;

    /* renamed from: s */
    public String f24488s;

    /* renamed from: t */
    public boolean f24489t;

    /* renamed from: u */
    public final boolean f24490u;

    /* renamed from: v */
    public boolean f24491v;

    /* renamed from: w */
    public String f24492w;

    /* renamed from: x */
    public String f24493x;

    /* renamed from: y */
    public float f24494y;

    /* renamed from: z */
    public int f24495z;

    public zzatk(Context context) {
        DisplayMetrics displayMetrics;
        PackageManager packageManager = context.getPackageManager();
        m16365a(context);
        m16362b(context);
        m16361c(context);
        Locale locale = Locale.getDefault();
        boolean z = true;
        this.f24486q = m16363a(packageManager, "geo:0,0?q=donuts") != null;
        if (m16363a(packageManager, "http://www.google.com") == null) {
            z = false;
        }
        this.f24487r = z;
        this.f24488s = locale.getCountry();
        zzwm.m11170a();
        this.f24489t = zzbbg.m15912a();
        this.f24490u = DeviceProperties.m17085b(context);
        this.f24491v = DeviceProperties.m17083c(context);
        this.f24492w = locale.getLanguage();
        this.f24493x = m16364a(context, packageManager);
        this.f24468B = m16360d(context);
        Resources resources = context.getResources();
        if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
            this.f24494y = displayMetrics.density;
            this.f24495z = displayMetrics.widthPixels;
            this.f24467A = displayMetrics.heightPixels;
        }
    }

    public zzatk(Context context, zzatl zzatlVar) {
        m16365a(context);
        m16362b(context);
        m16361c(context);
        this.f24484o = Build.FINGERPRINT;
        this.f24485p = Build.DEVICE;
        this.f24469C = PlatformVersion.m17066b() && zzacc.m16870a(context);
        this.f24486q = zzatlVar.f24496a;
        this.f24487r = zzatlVar.f24497b;
        this.f24488s = zzatlVar.f24498c;
        this.f24489t = zzatlVar.f24499d;
        this.f24490u = zzatlVar.f24500e;
        this.f24491v = zzatlVar.f24501f;
        this.f24492w = zzatlVar.f24502g;
        this.f24493x = zzatlVar.f24503h;
        this.f24468B = zzatlVar.f24504i;
        this.f24494y = zzatlVar.f24507l;
        this.f24495z = zzatlVar.f24508m;
        this.f24467A = zzatlVar.f24509n;
    }

    /* renamed from: a */
    public static ResolveInfo m16363a(PackageManager packageManager, String str) {
        try {
            return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), MapMakerInternalMap.MAX_SEGMENTS);
        } catch (Throwable th) {
            zzp.m17965g().m16188a(th, "DeviceInfo.getResolveInfo");
            return null;
        }
    }

    /* renamed from: a */
    public static String m16364a(Context context, PackageManager packageManager) {
        ActivityInfo activityInfo;
        ResolveInfo a = m16363a(packageManager, "market://details?id=com.google.android.gms.ads");
        if (a == null || (activityInfo = a.activityInfo) == null) {
            return null;
        }
        try {
            PackageInfo b = Wrappers.m17026b(context).m17028b(activityInfo.packageName, 0);
            if (b == null) {
                return null;
            }
            int i = b.versionCode;
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

    /* renamed from: d */
    public static String m16360d(Context context) {
        try {
            PackageInfo b = Wrappers.m17026b(context).m17028b("com.android.vending", 128);
            if (b == null) {
                return null;
            }
            int i = b.versionCode;
            String str = b.packageName;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
            sb.append(i);
            sb.append(".");
            sb.append(str);
            return sb.toString();
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: a */
    public final zzatl m16366a() {
        return new zzatl(this.f24470a, this.f24486q, this.f24487r, this.f24476g, this.f24488s, this.f24489t, this.f24490u, this.f24491v, this.f24471b, this.f24472c, this.f24492w, this.f24493x, this.f24468B, this.f24473d, this.f24477h, this.f24478i, this.f24479j, this.f24474e, this.f24475f, this.f24494y, this.f24495z, this.f24467A, this.f24482m, this.f24483n, this.f24480k, this.f24481l, this.f24484o, this.f24469C, this.f24485p);
    }

    /* renamed from: a */
    public final void m16365a(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager != null) {
            try {
                this.f24470a = audioManager.getMode();
                this.f24471b = audioManager.isMusicActive();
                this.f24472c = audioManager.isSpeakerphoneOn();
                this.f24473d = audioManager.getStreamVolume(3);
                this.f24474e = audioManager.getRingerMode();
                this.f24475f = audioManager.getStreamVolume(2);
                return;
            } catch (Throwable th) {
                zzp.m17965g().m16188a(th, "DeviceInfo.gatherAudioInfo");
            }
        }
        this.f24470a = -2;
        this.f24471b = false;
        this.f24472c = false;
        this.f24473d = 0;
        this.f24474e = 2;
        this.f24475f = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m16362b(android.content.Context r4) {
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
            r0.f24476g = r1
            boolean r0 = com.google.android.gms.common.util.PlatformVersion.m17054n()
            if (r0 == 0) goto L_0x0040
            com.google.android.gms.internal.ads.zzaaq<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzabb.f23873p4
            r7 = r0
            com.google.android.gms.internal.ads.zzaax r0 = com.google.android.gms.internal.ads.zzwm.m11166e()
            r1 = r7
            java.lang.Object r0 = r0.m16921a(r1)
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
            r0.f24478i = r1
            r0 = r3
            r1 = r5
            int r1 = r1.getPhoneType()
            r0.f24479j = r1
            r0 = r3
            r1 = -2
            r0.f24477h = r1
            r0 = r3
            r1 = 0
            r0.f24480k = r1
            r0 = r3
            r1 = -1
            r0.f24481l = r1
            com.google.android.gms.internal.ads.zzayu r0 = com.google.android.gms.ads.internal.zzp.m17969c()
            r0 = r4
            java.lang.String r1 = "android.permission.ACCESS_NETWORK_STATE"
            boolean r0 = com.google.android.gms.internal.ads.zzayu.m16111b(r0, r1)
            if (r0 == 0) goto L_0x009e
            r0 = r6
            android.net.NetworkInfo r0 = r0.getActiveNetworkInfo()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0091
            r0 = r3
            r1 = r4
            int r1 = r1.getType()
            r0.f24477h = r1
            r0 = r3
            r1 = r4
            android.net.NetworkInfo$DetailedState r1 = r1.getDetailedState()
            int r1 = r1.ordinal()
            r0.f24481l = r1
            goto L_0x0096
        L_0x0091:
            r0 = r3
            r1 = -1
            r0.f24477h = r1
        L_0x0096:
            r0 = r3
            r1 = r6
            boolean r1 = r1.isActiveNetworkMetered()
            r0.f24480k = r1
        L_0x009e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzatk.m16362b(android.content.Context):void");
    }

    /* renamed from: c */
    public final void m16361c(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (registerReceiver != null) {
            int intExtra = registerReceiver.getIntExtra("status", -1);
            this.f24482m = registerReceiver.getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, -1) / registerReceiver.getIntExtra("scale", -1);
            if (intExtra == 2 || intExtra == 5) {
                z = true;
            }
            this.f24483n = z;
            return;
        }
        this.f24482m = -1.0d;
        this.f24483n = false;
    }
}

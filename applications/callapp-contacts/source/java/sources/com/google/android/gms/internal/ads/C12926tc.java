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
import com.google.android.gms.common.p352d.C11946c;
import com.google.android.gms.common.util.C12106j;
import com.google.android.gms.common.util.C12110n;
import java.util.Locale;
/* renamed from: com.google.android.gms.internal.ads.tc */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/tc.class */
public final class C12926tc {

    /* renamed from: A */
    private int f49838A;

    /* renamed from: B */
    private String f49839B;

    /* renamed from: C */
    private boolean f49840C;

    /* renamed from: a */
    private int f49841a;

    /* renamed from: b */
    private boolean f49842b;

    /* renamed from: c */
    private boolean f49843c;

    /* renamed from: d */
    private int f49844d;

    /* renamed from: e */
    private int f49845e;

    /* renamed from: f */
    private int f49846f;

    /* renamed from: g */
    private String f49847g;

    /* renamed from: h */
    private int f49848h;

    /* renamed from: i */
    private int f49849i;

    /* renamed from: j */
    private int f49850j;

    /* renamed from: k */
    private boolean f49851k;

    /* renamed from: l */
    private int f49852l;

    /* renamed from: m */
    private double f49853m;

    /* renamed from: n */
    private boolean f49854n;

    /* renamed from: o */
    private String f49855o;

    /* renamed from: p */
    private String f49856p;

    /* renamed from: q */
    private boolean f49857q;

    /* renamed from: r */
    private boolean f49858r;

    /* renamed from: s */
    private String f49859s;

    /* renamed from: t */
    private boolean f49860t;

    /* renamed from: u */
    private final boolean f49861u;

    /* renamed from: v */
    private boolean f49862v;

    /* renamed from: w */
    private String f49863w;

    /* renamed from: x */
    private String f49864x;

    /* renamed from: y */
    private float f49865y;

    /* renamed from: z */
    private int f49866z;

    public C12926tc(Context context) {
        DisplayMetrics displayMetrics;
        PackageManager packageManager = context.getPackageManager();
        m14183a(context);
        m14180b(context);
        m14179c(context);
        Locale locale = Locale.getDefault();
        this.f49857q = m14181a(packageManager, "geo:0,0?q=donuts") != null;
        this.f49858r = m14181a(packageManager, "http://www.google.com") != null;
        this.f49859s = locale.getCountry();
        ekb.m14835a();
        this.f49860t = C13077yq.m13952a();
        this.f49861u = C12106j.m19030d(context);
        this.f49862v = C12106j.m19031c(context);
        this.f49863w = locale.getLanguage();
        this.f49864x = m14182a(context, packageManager);
        this.f49839B = m14178d(context);
        Resources resources = context.getResources();
        if (resources == null || (displayMetrics = resources.getDisplayMetrics()) == null) {
            return;
        }
        this.f49865y = displayMetrics.density;
        this.f49866z = displayMetrics.widthPixels;
        this.f49838A = displayMetrics.heightPixels;
    }

    public C12926tc(Context context, C12922sz c12922sz) {
        m14183a(context);
        m14180b(context);
        m14179c(context);
        this.f49855o = Build.FINGERPRINT;
        this.f49856p = Build.DEVICE;
        this.f49840C = C12110n.m19021a() && C12250br.m17658a(context);
        this.f49857q = c12922sz.f49795a;
        this.f49858r = c12922sz.f49796b;
        this.f49859s = c12922sz.f49797c;
        this.f49860t = c12922sz.f49798d;
        this.f49861u = c12922sz.f49799e;
        this.f49862v = c12922sz.f49800f;
        this.f49863w = c12922sz.f49801g;
        this.f49864x = c12922sz.f49802h;
        this.f49839B = c12922sz.f49803i;
        this.f49865y = c12922sz.f49806l;
        this.f49866z = c12922sz.f49807m;
        this.f49838A = c12922sz.f49808n;
    }

    /* renamed from: a */
    private static ResolveInfo m14181a(PackageManager packageManager, String str) {
        try {
            return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
        } catch (Throwable th) {
            zzr.zzkz().m13979a(th, "DeviceInfo.getResolveInfo");
            return null;
        }
    }

    /* renamed from: a */
    private static String m14182a(Context context, PackageManager packageManager) {
        ActivityInfo activityInfo;
        ResolveInfo m14181a = m14181a(packageManager, "market://details?id=com.google.android.gms.ads");
        if (m14181a == null || (activityInfo = m14181a.activityInfo) == null) {
            return null;
        }
        try {
            PackageInfo m19259b = C11946c.m19258a(context).m19259b(activityInfo.packageName, 0);
            if (m19259b == null) {
                return null;
            }
            int i = m19259b.versionCode;
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

    /* renamed from: a */
    private final void m14183a(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager != null) {
            try {
                this.f49841a = audioManager.getMode();
                this.f49842b = audioManager.isMusicActive();
                this.f49843c = audioManager.isSpeakerphoneOn();
                this.f49844d = audioManager.getStreamVolume(3);
                this.f49845e = audioManager.getRingerMode();
                this.f49846f = audioManager.getStreamVolume(2);
                return;
            } catch (Throwable th) {
                zzr.zzkz().m13979a(th, "DeviceInfo.gatherAudioInfo");
            }
        }
        this.f49841a = -2;
        this.f49842b = false;
        this.f49843c = false;
        this.f49844d = 0;
        this.f49845e = 2;
        this.f49846f = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m14180b(android.content.Context r4) {
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
            r0.f49847g = r1
            boolean r0 = com.google.android.gms.common.util.C12110n.m19010l()
            if (r0 == 0) goto L40
            com.google.android.gms.internal.ads.af<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.C12187aq.f42875eZ
            r7 = r0
            com.google.android.gms.internal.ads.am r0 = com.google.android.gms.internal.ads.ekb.m14831e()
            r1 = r7
            java.lang.Object r0 = r0.m18571a(r1)
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
            r0.f49849i = r1
            r0 = r3
            r1 = r5
            int r1 = r1.getPhoneType()
            r0.f49850j = r1
            r0 = r3
            r1 = -2
            r0.f49848h = r1
            r0 = r3
            r1 = 0
            r0.f49851k = r1
            r0 = r3
            r1 = -1
            r0.f49852l = r1
            com.google.android.gms.ads.internal.util.zzj r0 = com.google.android.gms.ads.internal.zzr.zzkv()
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
            r0.f49848h = r1
            r0 = r3
            r1 = r4
            android.net.NetworkInfo$DetailedState r1 = r1.getDetailedState()
            int r1 = r1.ordinal()
            r0.f49852l = r1
            goto L96
        L91:
            r0 = r3
            r1 = -1
            r0.f49848h = r1
        L96:
            r0 = r3
            r1 = r6
            boolean r1 = r1.isActiveNetworkMetered()
            r0.f49851k = r1
        L9e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C12926tc.m14180b(android.content.Context):void");
    }

    /* renamed from: c */
    private final void m14179c(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (registerReceiver == null) {
            this.f49853m = -1.0d;
            this.f49854n = false;
            return;
        }
        int intExtra = registerReceiver.getIntExtra("status", -1);
        this.f49853m = registerReceiver.getIntExtra("level", -1) / registerReceiver.getIntExtra("scale", -1);
        if (intExtra == 2 || intExtra == 5) {
            z = true;
        }
        this.f49854n = z;
    }

    /* renamed from: d */
    private static String m14178d(Context context) {
        try {
            PackageInfo m19259b = C11946c.m19258a(context).m19259b("com.android.vending", 128);
            if (m19259b == null) {
                return null;
            }
            int i = m19259b.versionCode;
            String str = m19259b.packageName;
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
    public final C12922sz m14184a() {
        return new C12922sz(this.f49841a, this.f49857q, this.f49858r, this.f49847g, this.f49859s, this.f49860t, this.f49861u, this.f49862v, this.f49842b, this.f49843c, this.f49863w, this.f49864x, this.f49839B, this.f49844d, this.f49848h, this.f49849i, this.f49850j, this.f49845e, this.f49846f, this.f49865y, this.f49866z, this.f49838A, this.f49853m, this.f49854n, this.f49851k, this.f49852l, this.f49855o, this.f49840C, this.f49856p);
    }
}

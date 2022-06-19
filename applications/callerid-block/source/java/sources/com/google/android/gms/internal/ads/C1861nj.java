package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.common.util.C1617n;
/* renamed from: com.google.android.gms.internal.ads.nj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/nj.class */
public final class C1861nj {

    /* renamed from: A */
    private int f7694A;

    /* renamed from: B */
    private final String f7695B;

    /* renamed from: C */
    private boolean f7696C;

    /* renamed from: a */
    private int f7697a;

    /* renamed from: b */
    private boolean f7698b;

    /* renamed from: c */
    private boolean f7699c;

    /* renamed from: d */
    private int f7700d;

    /* renamed from: e */
    private int f7701e;

    /* renamed from: f */
    private int f7702f;

    /* renamed from: g */
    private String f7703g;

    /* renamed from: h */
    private int f7704h;

    /* renamed from: i */
    private int f7705i;

    /* renamed from: j */
    private int f7706j;

    /* renamed from: k */
    private boolean f7707k;

    /* renamed from: l */
    private int f7708l;

    /* renamed from: m */
    private double f7709m;

    /* renamed from: n */
    private boolean f7710n;

    /* renamed from: o */
    private String f7711o;

    /* renamed from: p */
    private String f7712p;

    /* renamed from: q */
    private final boolean f7713q;

    /* renamed from: r */
    private final boolean f7714r;

    /* renamed from: s */
    private final String f7715s;

    /* renamed from: t */
    private final boolean f7716t;

    /* renamed from: u */
    private final boolean f7717u;

    /* renamed from: v */
    private final boolean f7718v;

    /* renamed from: w */
    private final String f7719w;

    /* renamed from: x */
    private final String f7720x;

    /* renamed from: y */
    private float f7721y;

    /* renamed from: z */
    private int f7722z;

    /* JADX WARN: Can't wrap try/catch for region: R(15:2|(1:4)(1:5)|6|(1:8)(1:9)|10|(3:37|15|(9:17|18|19|35|20|21|(1:23)|26|(2:32|33)(1:31)))|12|18|19|35|20|21|(0)|26|(1:28)(3:29|32|33)) */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0140, code lost:
        r6 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0102 A[Catch: Exception -> 0x013f, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x013f, blocks: (B:20:0x00ee, B:23:0x0102), top: B:35:0x00ee }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1861nj(android.content.Context r5) {
        /*
            Method dump skipped, instructions count: 377
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C1861nj.<init>(android.content.Context):void");
    }

    public C1861nj(Context context, C1876oj c1876oj) {
        m6432b(context);
        m6431c(context);
        m6430d(context);
        this.f7711o = Build.FINGERPRINT;
        this.f7712p = Build.DEVICE;
        boolean z = false;
        if (C1617n.m8216b()) {
            z = false;
            if (C1828l4.m6720a(context)) {
                z = true;
            }
        }
        this.f7696C = z;
        this.f7713q = c1876oj.f7853a;
        this.f7714r = c1876oj.f7854b;
        this.f7715s = c1876oj.f7855c;
        this.f7716t = c1876oj.f7856d;
        this.f7717u = c1876oj.f7857e;
        this.f7718v = c1876oj.f7858f;
        this.f7719w = c1876oj.f7859g;
        this.f7720x = c1876oj.f7860h;
        this.f7695B = c1876oj.f7861i;
        this.f7721y = c1876oj.f7864l;
        this.f7722z = c1876oj.f7865m;
        this.f7694A = c1876oj.f7866n;
    }

    /* renamed from: b */
    private final void m6432b(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager != null) {
            try {
                this.f7697a = audioManager.getMode();
                this.f7698b = audioManager.isMusicActive();
                this.f7699c = audioManager.isSpeakerphoneOn();
                this.f7700d = audioManager.getStreamVolume(3);
                this.f7701e = audioManager.getRingerMode();
                this.f7702f = audioManager.getStreamVolume(2);
                return;
            } catch (Throwable th) {
                C1407r.m8916h().m4590g(th, "DeviceInfo.gatherAudioInfo");
            }
        }
        this.f7697a = -2;
        this.f7698b = false;
        this.f7699c = false;
        this.f7700d = 0;
        this.f7701e = 2;
        this.f7702f = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
    @android.annotation.TargetApi(16)
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m6431c(android.content.Context r4) {
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
            r0.f7703g = r1
            boolean r0 = com.google.android.gms.common.util.C1617n.m8205m()
            if (r0 == 0) goto L40
            com.google.android.gms.internal.ads.e3<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.C1842m3.f7376a5
            r7 = r0
            com.google.android.gms.internal.ads.k3 r0 = com.google.android.gms.internal.ads.C1674c.m7906c()
            r1 = r7
            java.lang.Object r0 = r0.m6878b(r1)
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
            r0.f7705i = r1
            r0 = r3
            r1 = r5
            int r1 = r1.getPhoneType()
            r0.f7706j = r1
            r0 = r3
            r1 = -2
            r0.f7704h = r1
            r0 = r3
            r1 = 0
            r0.f7707k = r1
            r0 = r3
            r1 = -1
            r0.f7708l = r1
            com.google.android.gms.ads.internal.util.l1 r0 = com.google.android.gms.ads.internal.C1407r.m8920d()
            r0 = r4
            java.lang.String r1 = "android.permission.ACCESS_NETWORK_STATE"
            boolean r0 = com.google.android.gms.ads.internal.util.C1433l1.m8765d(r0, r1)
            if (r0 == 0) goto L9e
            r0 = r6
            android.net.NetworkInfo r0 = r0.getActiveNetworkInfo()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L91
            r0 = r3
            r1 = r4
            int r1 = r1.getType()
            r0.f7704h = r1
            r0 = r3
            r1 = r4
            android.net.NetworkInfo$DetailedState r1 = r1.getDetailedState()
            int r1 = r1.ordinal()
            r0.f7708l = r1
            goto L96
        L91:
            r0 = r3
            r1 = -1
            r0.f7704h = r1
        L96:
            r0 = r3
            r1 = r6
            boolean r1 = r1.isActiveNetworkMetered()
            r0.f7707k = r1
        L9e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C1861nj.m6431c(android.content.Context):void");
    }

    /* renamed from: d */
    private final void m6430d(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (registerReceiver == null) {
            this.f7709m = -1.0d;
            this.f7710n = false;
            return;
        }
        int intExtra = registerReceiver.getIntExtra("status", -1);
        this.f7709m = registerReceiver.getIntExtra("level", -1) / registerReceiver.getIntExtra("scale", -1);
        if (intExtra == 2 || intExtra == 5) {
            z = true;
        }
        this.f7710n = z;
    }

    /* renamed from: e */
    private static ResolveInfo m6429e(PackageManager packageManager, String str) {
        try {
            return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
        } catch (Throwable th) {
            C1407r.m8916h().m4590g(th, "DeviceInfo.getResolveInfo");
            return null;
        }
    }

    /* renamed from: a */
    public final C1876oj m6433a() {
        return new C1876oj(this.f7697a, this.f7713q, this.f7714r, this.f7703g, this.f7715s, this.f7716t, this.f7717u, this.f7718v, this.f7698b, this.f7699c, this.f7719w, this.f7720x, this.f7695B, this.f7700d, this.f7704h, this.f7705i, this.f7706j, this.f7701e, this.f7702f, this.f7721y, this.f7722z, this.f7694A, this.f7709m, this.f7710n, this.f7707k, this.f7708l, this.f7711o, this.f7696C, this.f7712p);
    }
}

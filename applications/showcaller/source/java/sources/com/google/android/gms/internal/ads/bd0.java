package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.common.util.C6237o;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bd0.class */
public final class bd0 {

    /* renamed from: A */
    private int f20356A;

    /* renamed from: B */
    private final String f20357B;

    /* renamed from: C */
    private boolean f20358C;

    /* renamed from: a */
    private int f20359a;

    /* renamed from: b */
    private boolean f20360b;

    /* renamed from: c */
    private boolean f20361c;

    /* renamed from: d */
    private int f20362d;

    /* renamed from: e */
    private int f20363e;

    /* renamed from: f */
    private int f20364f;

    /* renamed from: g */
    private String f20365g;

    /* renamed from: h */
    private int f20366h;

    /* renamed from: i */
    private int f20367i;

    /* renamed from: j */
    private int f20368j;

    /* renamed from: k */
    private boolean f20369k;

    /* renamed from: l */
    private int f20370l;

    /* renamed from: m */
    private double f20371m;

    /* renamed from: n */
    private boolean f20372n;

    /* renamed from: o */
    private String f20373o;

    /* renamed from: p */
    private String f20374p;

    /* renamed from: q */
    private final boolean f20375q;

    /* renamed from: r */
    private final boolean f20376r;

    /* renamed from: s */
    private final String f20377s;

    /* renamed from: t */
    private final boolean f20378t;

    /* renamed from: u */
    private final boolean f20379u;

    /* renamed from: v */
    private final boolean f20380v;

    /* renamed from: w */
    private final String f20381w;

    /* renamed from: x */
    private final String f20382x;

    /* renamed from: y */
    private float f20383y;

    /* renamed from: z */
    private int f20384z;

    /* JADX WARN: Can't wrap try/catch for region: R(15:2|(1:4)(1:5)|6|(1:8)(1:9)|10|(3:37|15|(9:17|18|19|35|20|21|(1:23)|26|(2:32|33)(1:31)))|12|18|19|35|20|21|(0)|26|(1:28)(3:29|32|33)) */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0157, code lost:
        r8 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0111 A[Catch: Exception -> 0x0155, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x0155, blocks: (B:20:0x00fd, B:23:0x0111), top: B:35:0x00fd }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public bd0(android.content.Context r5) {
        /*
            Method dump skipped, instructions count: 402
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.bd0.<init>(android.content.Context):void");
    }

    public bd0(Context context, cd0 cd0Var) {
        m16401b(context);
        m16400c(context);
        m16399d(context);
        this.f20373o = Build.FINGERPRINT;
        this.f20374p = Build.DEVICE;
        boolean z = false;
        if (C6237o.m16782b()) {
            z = false;
            if (C6643jx.m14023a(context)) {
                z = true;
            }
        }
        this.f20358C = z;
        this.f20375q = cd0Var.f21174a;
        this.f20376r = cd0Var.f21175b;
        this.f20377s = cd0Var.f21177d;
        this.f20378t = cd0Var.f21178e;
        this.f20379u = cd0Var.f21179f;
        this.f20380v = cd0Var.f21180g;
        this.f20381w = cd0Var.f21181h;
        this.f20382x = cd0Var.f21182i;
        this.f20357B = cd0Var.f21183j;
        this.f20383y = cd0Var.f21186m;
        this.f20384z = cd0Var.f21187n;
        this.f20356A = cd0Var.f21188o;
    }

    /* renamed from: b */
    private final void m16401b(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager != null) {
            try {
                this.f20359a = audioManager.getMode();
                this.f20360b = audioManager.isMusicActive();
                this.f20361c = audioManager.isSpeakerphoneOn();
                this.f20362d = audioManager.getStreamVolume(3);
                this.f20363e = audioManager.getRingerMode();
                this.f20364f = audioManager.getStreamVolume(2);
                return;
            } catch (Throwable th) {
                C5667s.m18156h().m12235k(th, "DeviceInfo.gatherAudioInfo");
            }
        }
        this.f20359a = -2;
        this.f20360b = false;
        this.f20361c = false;
        this.f20362d = 0;
        this.f20363e = 2;
        this.f20364f = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
    @android.annotation.TargetApi(16)
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m16400c(android.content.Context r4) {
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
            r0.f20365g = r1
            boolean r0 = com.google.android.gms.common.util.C6237o.m16771m()
            if (r0 == 0) goto L40
            com.google.android.gms.internal.ads.cw<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.C6679kw.f25677d6
            r7 = r0
            com.google.android.gms.internal.ads.iw r0 = com.google.android.gms.internal.ads.C7192yr.m8714c()
            r1 = r7
            java.lang.Object r0 = r0.m14263c(r1)
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
            r0.f20367i = r1
            r0 = r3
            r1 = r5
            int r1 = r1.getPhoneType()
            r0.f20368j = r1
            r0 = r3
            r1 = -2
            r0.f20366h = r1
            r0 = r3
            r1 = 0
            r0.f20369k = r1
            r0 = r3
            r1 = -1
            r0.f20370l = r1
            com.google.android.gms.ads.internal.util.c2 r0 = com.google.android.gms.ads.internal.C5667s.m18160d()
            r0 = r4
            java.lang.String r1 = "android.permission.ACCESS_NETWORK_STATE"
            boolean r0 = com.google.android.gms.ads.internal.util.C5679c2.m18073e(r0, r1)
            if (r0 == 0) goto L9e
            r0 = r6
            android.net.NetworkInfo r0 = r0.getActiveNetworkInfo()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L91
            r0 = r3
            r1 = r4
            int r1 = r1.getType()
            r0.f20366h = r1
            r0 = r3
            r1 = r4
            android.net.NetworkInfo$DetailedState r1 = r1.getDetailedState()
            int r1 = r1.ordinal()
            r0.f20370l = r1
            goto L96
        L91:
            r0 = r3
            r1 = -1
            r0.f20366h = r1
        L96:
            r0 = r3
            r1 = r6
            boolean r1 = r1.isActiveNetworkMetered()
            r0.f20369k = r1
        L9e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.bd0.m16400c(android.content.Context):void");
    }

    /* renamed from: d */
    private final void m16399d(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (registerReceiver == null) {
            this.f20371m = -1.0d;
            this.f20372n = false;
            return;
        }
        int intExtra = registerReceiver.getIntExtra("status", -1);
        this.f20371m = registerReceiver.getIntExtra("level", -1) / registerReceiver.getIntExtra("scale", -1);
        if (intExtra == 2 || intExtra == 5) {
            z = true;
        }
        this.f20372n = z;
    }

    /* renamed from: e */
    private static ResolveInfo m16398e(PackageManager packageManager, String str) {
        try {
            return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
        } catch (Throwable th) {
            C5667s.m18156h().m12235k(th, "DeviceInfo.getResolveInfo");
            return null;
        }
    }

    /* renamed from: a */
    public final cd0 m16402a() {
        return new cd0(this.f20359a, this.f20375q, this.f20376r, this.f20365g, this.f20377s, this.f20378t, this.f20379u, this.f20380v, this.f20360b, this.f20361c, this.f20381w, this.f20382x, this.f20357B, this.f20362d, this.f20366h, this.f20367i, this.f20368j, this.f20363e, this.f20364f, this.f20383y, this.f20384z, this.f20356A, this.f20371m, this.f20372n, this.f20369k, this.f20370l, this.f20373o, this.f20358C, this.f20374p);
    }
}

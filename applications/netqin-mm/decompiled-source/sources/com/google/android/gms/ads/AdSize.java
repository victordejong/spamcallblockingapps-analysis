package com.google.android.gms.ads;

import android.content.Context;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzbbg;
import com.google.android.gms.internal.ads.zzvn;
import com.google.android.gms.internal.ads.zzwm;
import com.google.logging.type.LogSeverity;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdSize.class */
public final class AdSize {

    /* renamed from: g */
    public static final AdSize f22648g = new AdSize(320, 50, "320x50_mb");

    /* renamed from: h */
    public static final AdSize f22649h = new AdSize(468, 60, "468x60_as");

    /* renamed from: i */
    public static final AdSize f22650i = new AdSize(320, 100, "320x100_as");

    /* renamed from: j */
    public static final AdSize f22651j = new AdSize(728, 90, "728x90_as");

    /* renamed from: k */
    public static final AdSize f22652k = new AdSize(LogSeverity.NOTICE_VALUE, 250, "300x250_as");

    /* renamed from: l */
    public static final AdSize f22653l = new AdSize(160, LogSeverity.CRITICAL_VALUE, "160x600_as");

    /* renamed from: m */
    public static final AdSize f22654m = new AdSize(-1, -2, "smart_banner");

    /* renamed from: n */
    public static final AdSize f22655n = new AdSize(-3, -4, "fluid");

    /* renamed from: o */
    public static final AdSize f22656o = new AdSize(0, 0, "invalid");

    /* renamed from: p */
    public static final AdSize f22657p = new AdSize(50, 50, "50x50_mb");

    /* renamed from: a */
    public final int f22658a;

    /* renamed from: b */
    public final int f22659b;

    /* renamed from: c */
    public final String f22660c;

    /* renamed from: d */
    public boolean f22661d;

    /* renamed from: e */
    public boolean f22662e;

    /* renamed from: f */
    public int f22663f;

    static {
        new AdSize(-3, 0, "search_v2");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AdSize(int r6, int r7) {
        /*
            r5 = this;
            r0 = r6
            r1 = -1
            if (r0 != r1) goto L_0x000b
            java.lang.String r0 = "FULL"
            r8 = r0
            goto L_0x0010
        L_0x000b:
            r0 = r6
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r8 = r0
        L_0x0010:
            r0 = r7
            r1 = -2
            if (r0 != r1) goto L_0x001d
            java.lang.String r0 = "AUTO"
            r9 = r0
            goto L_0x0023
        L_0x001d:
            r0 = r7
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r9 = r0
        L_0x0023:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r8
            java.lang.String r2 = java.lang.String.valueOf(r2)
            int r2 = r2.length()
            r3 = 4
            int r2 = r2 + r3
            r3 = r9
            java.lang.String r3 = java.lang.String.valueOf(r3)
            int r3 = r3.length()
            int r2 = r2 + r3
            r1.<init>(r2)
            r10 = r0
            r0 = r10
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            java.lang.String r1 = "x"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            r1 = r9
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            java.lang.String r1 = "_as"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r10
            java.lang.String r3 = r3.toString()
            r0.<init>(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.AdSize.<init>(int, int):void");
    }

    public AdSize(int i, int i2, String str) {
        if (i < 0 && i != -1 && i != -3) {
            StringBuilder sb = new StringBuilder(37);
            sb.append("Invalid width for AdSize: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        } else if (i2 >= 0 || i2 == -2 || i2 == -4) {
            this.f22658a = i;
            this.f22659b = i2;
            this.f22660c = str;
        } else {
            StringBuilder sb2 = new StringBuilder(38);
            sb2.append("Invalid height for AdSize: ");
            sb2.append(i2);
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    /* renamed from: a */
    public final int m18137a() {
        return this.f22659b;
    }

    /* renamed from: a */
    public final int m18135a(Context context) {
        int i = this.f22659b;
        if (i == -4 || i == -3) {
            return -1;
        }
        if (i == -2) {
            return zzvn.m11198b(context.getResources().getDisplayMetrics());
        }
        zzwm.m11170a();
        return zzbbg.m15897b(context, this.f22659b);
    }

    /* renamed from: a */
    public final void m18136a(int i) {
        this.f22663f = i;
    }

    /* renamed from: a */
    public final void m18134a(boolean z) {
        this.f22662e = true;
    }

    /* renamed from: b */
    public final int m18133b() {
        return this.f22658a;
    }

    /* renamed from: b */
    public final int m18132b(Context context) {
        int i = this.f22658a;
        if (i == -4 || i == -3) {
            return -1;
        }
        if (i == -1) {
            return zzvn.m11199a(context.getResources().getDisplayMetrics());
        }
        zzwm.m11170a();
        return zzbbg.m15897b(context, this.f22658a);
    }

    /* renamed from: c */
    public final boolean m18131c() {
        return this.f22658a == -3 && this.f22659b == -4;
    }

    /* renamed from: d */
    public final boolean m18130d() {
        return this.f22661d;
    }

    /* renamed from: e */
    public final boolean m18129e() {
        return this.f22662e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AdSize)) {
            return false;
        }
        AdSize adSize = (AdSize) obj;
        return this.f22658a == adSize.f22658a && this.f22659b == adSize.f22659b && this.f22660c.equals(adSize.f22660c);
    }

    /* renamed from: f */
    public final int m18128f() {
        return this.f22663f;
    }

    public final int hashCode() {
        return this.f22660c.hashCode();
    }

    public final String toString() {
        return this.f22660c;
    }
}

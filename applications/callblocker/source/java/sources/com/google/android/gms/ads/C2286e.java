package com.google.android.gms.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.C3634xr;
import com.google.android.gms.internal.ads.dyd;
import com.google.android.gms.internal.ads.dyx;
/* renamed from: com.google.android.gms.ads.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/e.class */
public final class C2286e {

    /* renamed from: a */
    public static final C2286e f6599a = new C2286e(320, 50, "320x50_mb");

    /* renamed from: b */
    public static final C2286e f6600b = new C2286e(468, 60, "468x60_as");

    /* renamed from: c */
    public static final C2286e f6601c = new C2286e(320, 100, "320x100_as");

    /* renamed from: d */
    public static final C2286e f6602d = new C2286e(728, 90, "728x90_as");

    /* renamed from: e */
    public static final C2286e f6603e = new C2286e(300, 250, "300x250_as");

    /* renamed from: f */
    public static final C2286e f6604f = new C2286e(160, 600, "160x600_as");

    /* renamed from: g */
    public static final C2286e f6605g = new C2286e(-1, -2, "smart_banner");

    /* renamed from: h */
    public static final C2286e f6606h = new C2286e(-3, -4, "fluid");

    /* renamed from: i */
    public static final C2286e f6607i = new C2286e(0, 0, "invalid");

    /* renamed from: j */
    public static final C2286e f6608j = new C2286e(50, 50, "50x50_mb");

    /* renamed from: k */
    public static final C2286e f6609k = new C2286e(-3, 0, "search_v2");

    /* renamed from: l */
    private final int f6610l;

    /* renamed from: m */
    private final int f6611m;

    /* renamed from: n */
    private final String f6612n;

    /* renamed from: o */
    private boolean f6613o;

    /* renamed from: p */
    private boolean f6614p;

    /* renamed from: q */
    private int f6615q;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C2286e(int r9, int r10) {
        /*
            r8 = this;
            r0 = r9
            r1 = -1
            if (r0 != r1) goto L48
            java.lang.String r0 = "FULL"
            r11 = r0
        L8:
            r0 = r10
            r1 = -2
            if (r0 != r1) goto L50
            java.lang.String r0 = "AUTO"
            r12 = r0
        L12:
            r0 = r8
            r1 = r9
            r2 = r10
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r4 = r3
            r5 = r11
            java.lang.String r5 = java.lang.String.valueOf(r5)
            int r5 = r5.length()
            r6 = 4
            int r5 = r5 + r6
            r6 = r12
            java.lang.String r6 = java.lang.String.valueOf(r6)
            int r6 = r6.length()
            int r5 = r5 + r6
            r4.<init>(r5)
            r4 = r11
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r4 = "x"
            java.lang.StringBuilder r3 = r3.append(r4)
            r4 = r12
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r4 = "_as"
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r3 = r3.toString()
            r0.<init>(r1, r2, r3)
            return
        L48:
            r0 = r9
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r11 = r0
            goto L8
        L50:
            r0 = r10
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r12 = r0
            goto L12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.C2286e.<init>(int, int):void");
    }

    public C2286e(int i, int i2, String str) {
        if (i >= 0 || i == -1 || i == -3) {
            if (i2 < 0 && i2 != -2 && i2 != -4) {
                throw new IllegalArgumentException(new StringBuilder(38).append("Invalid height for AdSize: ").append(i2).toString());
            }
            this.f6610l = i;
            this.f6611m = i2;
            this.f6612n = str;
            return;
        }
        throw new IllegalArgumentException(new StringBuilder(37).append("Invalid width for AdSize: ").append(i).toString());
    }

    /* renamed from: a */
    public final int m14831a() {
        return this.f6611m;
    }

    /* renamed from: a */
    public final int m14829a(Context context) {
        int i;
        switch (this.f6611m) {
            case -4:
            case -3:
                i = -1;
                break;
            case -2:
                i = dyd.m8190b(context.getResources().getDisplayMetrics());
                break;
            default:
                dyx.m8162a();
                i = C3634xr.m6801a(context, this.f6611m);
                break;
        }
        return i;
    }

    /* renamed from: a */
    public final void m14830a(int i) {
        this.f6615q = i;
    }

    /* renamed from: a */
    public final void m14828a(boolean z) {
        this.f6614p = true;
    }

    /* renamed from: b */
    public final int m14827b() {
        return this.f6610l;
    }

    /* renamed from: b */
    public final int m14826b(Context context) {
        int i;
        switch (this.f6610l) {
            case -4:
            case -3:
                i = -1;
                break;
            case -2:
            default:
                dyx.m8162a();
                i = C3634xr.m6801a(context, this.f6610l);
                break;
            case -1:
                i = dyd.m8192a(context.getResources().getDisplayMetrics());
                break;
        }
        return i;
    }

    /* renamed from: c */
    public final boolean m14825c() {
        return this.f6610l == -3 && this.f6611m == -4;
    }

    /* renamed from: d */
    public final boolean m14824d() {
        return this.f6613o;
    }

    /* renamed from: e */
    public final boolean m14823e() {
        return this.f6614p;
    }

    public final boolean equals(Object obj) {
        boolean z = true;
        if (obj != this) {
            if (!(obj instanceof C2286e)) {
                z = false;
            } else {
                C2286e c2286e = (C2286e) obj;
                if (this.f6610l != c2286e.f6610l || this.f6611m != c2286e.f6611m || !this.f6612n.equals(c2286e.f6612n)) {
                    z = false;
                }
            }
        }
        return z;
    }

    /* renamed from: f */
    public final int m14822f() {
        return this.f6615q;
    }

    public final int hashCode() {
        return this.f6612n.hashCode();
    }

    public final String toString() {
        return this.f6612n;
    }
}

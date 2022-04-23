package com.google.android.gms.ads;

import android.content.Context;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.internal.ads.C1786io;
import com.google.android.gms.internal.ads.m03;
import com.google.android.gms.internal.ads.zzyx;
/* renamed from: com.google.android.gms.ads.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/f.class */
public final class C1359f {
    @RecentlyNonNull

    /* renamed from: i */
    public static final C1359f f5453i = new C1359f(320, 50, "320x50_mb");
    @RecentlyNonNull

    /* renamed from: j */
    public static final C1359f f5454j = new C1359f(468, 60, "468x60_as");
    @RecentlyNonNull

    /* renamed from: k */
    public static final C1359f f5455k = new C1359f(320, 100, "320x100_as");
    @RecentlyNonNull

    /* renamed from: l */
    public static final C1359f f5456l = new C1359f(728, 90, "728x90_as");
    @RecentlyNonNull

    /* renamed from: m */
    public static final C1359f f5457m = new C1359f(300, 250, "300x250_as");
    @RecentlyNonNull

    /* renamed from: n */
    public static final C1359f f5458n = new C1359f(160, 600, "160x600_as");
    @RecentlyNonNull
    @Deprecated

    /* renamed from: o */
    public static final C1359f f5459o = new C1359f(-1, -2, "smart_banner");
    @RecentlyNonNull

    /* renamed from: p */
    public static final C1359f f5460p = new C1359f(-3, -4, "fluid");
    @RecentlyNonNull

    /* renamed from: q */
    public static final C1359f f5461q = new C1359f(0, 0, "invalid");
    @RecentlyNonNull

    /* renamed from: r */
    public static final C1359f f5462r = new C1359f(50, 50, "50x50_mb");

    /* renamed from: a */
    private final int f5463a;

    /* renamed from: b */
    private final int f5464b;

    /* renamed from: c */
    private final String f5465c;

    /* renamed from: d */
    private boolean f5466d;

    /* renamed from: e */
    private boolean f5467e;

    /* renamed from: f */
    private int f5468f;

    /* renamed from: g */
    private boolean f5469g;

    /* renamed from: h */
    private int f5470h;

    static {
        new C1359f(-3, 0, "search_v2");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1359f(int r6, int r7) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.C1359f.<init>(int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1359f(int i, int i2, String str) {
        if (i < 0 && i != -1 && i != -3) {
            StringBuilder sb = new StringBuilder(37);
            sb.append("Invalid width for AdSize: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        } else if (i2 >= 0 || i2 == -2 || i2 == -4) {
            this.f5463a = i;
            this.f5464b = i2;
            this.f5465c = str;
        } else {
            StringBuilder sb2 = new StringBuilder(38);
            sb2.append("Invalid height for AdSize: ");
            sb2.append(i2);
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    @RecentlyNonNull
    /* renamed from: a */
    public static C1359f m9021a(@RecentlyNonNull Context context, int i) {
        C1359f h = C1786io.m7136h(context, i, 50, 0);
        h.f5466d = true;
        return h;
    }

    /* renamed from: b */
    public int m9020b() {
        return this.f5464b;
    }

    /* renamed from: c */
    public int m9019c(@RecentlyNonNull Context context) {
        int i = this.f5464b;
        if (i == -4 || i == -3) {
            return -1;
        }
        if (i == -2) {
            return zzyx.a(context.getResources().getDisplayMetrics());
        }
        m03.m6636a();
        return C1786io.m7125s(context, this.f5464b);
    }

    /* renamed from: d */
    public int m9018d() {
        return this.f5463a;
    }

    /* renamed from: e */
    public int m9017e(@RecentlyNonNull Context context) {
        int i = this.f5463a;
        if (i == -3) {
            return -1;
        }
        if (i != -1) {
            m03.m6636a();
            return C1786io.m7125s(context, this.f5463a);
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Parcelable.Creator creator = zzyx.CREATOR;
        return displayMetrics.widthPixels;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C1359f)) {
            return false;
        }
        C1359f fVar = (C1359f) obj;
        return this.f5463a == fVar.f5463a && this.f5464b == fVar.f5464b && this.f5465c.equals(fVar.f5465c);
    }

    /* renamed from: f */
    public boolean m9016f() {
        return this.f5463a == -3 && this.f5464b == -4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final boolean m9015g() {
        return this.f5466d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final boolean m9014h() {
        return this.f5467e;
    }

    public int hashCode() {
        return this.f5465c.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public final void m9013i(boolean z) {
        this.f5467e = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public final void m9012j(int i) {
        this.f5468f = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public final int m9011k() {
        return this.f5468f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public final boolean m9010l() {
        return this.f5469g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public final void m9009m(boolean z) {
        this.f5469g = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public final int m9008n() {
        return this.f5470h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public final void m9007o(int i) {
        this.f5470h = i;
    }

    @RecentlyNonNull
    public String toString() {
        return this.f5465c;
    }
}

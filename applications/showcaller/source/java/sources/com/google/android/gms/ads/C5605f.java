package com.google.android.gms.ads;

import android.content.Context;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.internal.ads.C7118wr;
import com.google.android.gms.internal.ads.xh0;
import com.google.android.gms.internal.ads.zzbdl;
/* renamed from: com.google.android.gms.ads.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/f.class */
public final class C5605f {

    /* renamed from: l */
    private final int f18238l;

    /* renamed from: m */
    private final int f18239m;

    /* renamed from: n */
    private final String f18240n;

    /* renamed from: o */
    private boolean f18241o;

    /* renamed from: p */
    private boolean f18242p;

    /* renamed from: q */
    private int f18243q;

    /* renamed from: r */
    private boolean f18244r;

    /* renamed from: s */
    private int f18245s;
    @RecentlyNonNull

    /* renamed from: a */
    public static final C5605f f18227a = new C5605f(320, 50, "320x50_mb");
    @RecentlyNonNull

    /* renamed from: b */
    public static final C5605f f18228b = new C5605f(468, 60, "468x60_as");
    @RecentlyNonNull

    /* renamed from: c */
    public static final C5605f f18229c = new C5605f(320, 100, "320x100_as");
    @RecentlyNonNull

    /* renamed from: d */
    public static final C5605f f18230d = new C5605f(728, 90, "728x90_as");
    @RecentlyNonNull

    /* renamed from: e */
    public static final C5605f f18231e = new C5605f(300, 250, "300x250_as");
    @RecentlyNonNull

    /* renamed from: f */
    public static final C5605f f18232f = new C5605f(160, 600, "160x600_as");
    @RecentlyNonNull
    @Deprecated

    /* renamed from: g */
    public static final C5605f f18233g = new C5605f(-1, -2, "smart_banner");
    @RecentlyNonNull

    /* renamed from: h */
    public static final C5605f f18234h = new C5605f(-3, -4, "fluid");
    @RecentlyNonNull

    /* renamed from: i */
    public static final C5605f f18235i = new C5605f(0, 0, "invalid");
    @RecentlyNonNull

    /* renamed from: k */
    public static final C5605f f18237k = new C5605f(50, 50, "50x50_mb");
    @RecentlyNonNull

    /* renamed from: j */
    public static final C5605f f18236j = new C5605f(-3, 0, "search_v2");

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C5605f(int r6, int r7) {
        /*
            r5 = this;
            r0 = r6
            r1 = -1
            if (r0 != r1) goto Lb
            java.lang.String r0 = "FULL"
            r8 = r0
            goto L10
        Lb:
            r0 = r6
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r8 = r0
        L10:
            r0 = r7
            r1 = -2
            if (r0 != r1) goto L1d
            java.lang.String r0 = "AUTO"
            r9 = r0
            goto L23
        L1d:
            r0 = r7
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r9 = r0
        L23:
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.C5605f.<init>(int, int):void");
    }

    public C5605f(int i, int i2, String str) {
        if (i < 0 && i != -1 && i != -3) {
            StringBuilder sb = new StringBuilder(37);
            sb.append("Invalid width for AdSize: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        } else if (i2 >= 0 || i2 == -2 || i2 == -4) {
            this.f18238l = i;
            this.f18239m = i2;
            this.f18240n = str;
        } else {
            StringBuilder sb2 = new StringBuilder(38);
            sb2.append("Invalid height for AdSize: ");
            sb2.append(i2);
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    /* renamed from: a */
    public int m18275a() {
        return this.f18239m;
    }

    /* renamed from: b */
    public int m18274b(@RecentlyNonNull Context context) {
        int i = this.f18239m;
        if (i == -4 || i == -3) {
            return -1;
        }
        if (i == -2) {
            return zzbdl.m8083k0(context.getResources().getDisplayMetrics());
        }
        C7118wr.m9485a();
        return xh0.m9161q(context, this.f18239m);
    }

    /* renamed from: c */
    public int m18273c() {
        return this.f18238l;
    }

    /* renamed from: d */
    public int m18272d(@RecentlyNonNull Context context) {
        int i = this.f18238l;
        if (i != -3) {
            if (i != -1) {
                C7118wr.m9485a();
                return xh0.m9161q(context, this.f18238l);
            }
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            Parcelable.Creator<zzbdl> creator = zzbdl.CREATOR;
            return displayMetrics.widthPixels;
        }
        return -1;
    }

    /* renamed from: e */
    public boolean m18271e() {
        return this.f18238l == -3 && this.f18239m == -4;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C5605f)) {
            return false;
        }
        C5605f c5605f = (C5605f) obj;
        return this.f18238l == c5605f.f18238l && this.f18239m == c5605f.f18239m && this.f18240n.equals(c5605f.f18240n);
    }

    /* renamed from: f */
    public final boolean m18270f() {
        return this.f18241o;
    }

    /* renamed from: g */
    public final boolean m18269g() {
        return this.f18242p;
    }

    /* renamed from: h */
    public final void m18268h(boolean z) {
        this.f18242p = true;
    }

    public int hashCode() {
        return this.f18240n.hashCode();
    }

    /* renamed from: i */
    public final void m18267i(int i) {
        this.f18243q = i;
    }

    /* renamed from: j */
    public final int m18266j() {
        return this.f18243q;
    }

    /* renamed from: k */
    public final boolean m18265k() {
        return this.f18244r;
    }

    /* renamed from: l */
    public final void m18264l(boolean z) {
        this.f18244r = true;
    }

    /* renamed from: m */
    public final int m18263m() {
        return this.f18245s;
    }

    /* renamed from: n */
    public final void m18262n(int i) {
        this.f18245s = i;
    }

    @RecentlyNonNull
    public String toString() {
        return this.f18240n;
    }
}

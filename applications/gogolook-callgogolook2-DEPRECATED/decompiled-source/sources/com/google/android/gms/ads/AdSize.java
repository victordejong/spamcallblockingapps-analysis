package com.google.android.gms.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzjo;
import p081h.p203i.p204a.p224e.p259j.p260a.C7343o1;
import p081h.p203i.p204a.p224e.p259j.p260a.C7430v3;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/AdSize.class */
public final class AdSize {
    public static final int AUTO_HEIGHT = -2;
    public static final int FULL_WIDTH = -1;
    public final int zzvb;
    public final int zzvc;
    public final String zzvd;
    public static final AdSize BANNER = new AdSize(320, 50, "320x50_mb");
    public static final AdSize FULL_BANNER = new AdSize(468, 60, "468x60_as");
    public static final AdSize LARGE_BANNER = new AdSize(320, 100, "320x100_as");
    public static final AdSize LEADERBOARD = new AdSize(728, 90, "728x90_as");
    public static final AdSize MEDIUM_RECTANGLE = new AdSize(300, 250, "300x250_as");
    public static final AdSize WIDE_SKYSCRAPER = new AdSize(160, 600, "160x600_as");
    public static final AdSize SMART_BANNER = new AdSize(-1, -2, "smart_banner");
    public static final AdSize FLUID = new AdSize(-3, -4, "fluid");
    public static final AdSize zzva = new AdSize(50, 50, "50x50_mb");
    public static final AdSize SEARCH = new AdSize(-3, 0, "search_v2");

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
            this.zzvb = i;
            this.zzvc = i2;
            this.zzvd = str;
        } else {
            StringBuilder sb2 = new StringBuilder(38);
            sb2.append("Invalid height for AdSize: ");
            sb2.append(i2);
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AdSize)) {
            return false;
        }
        AdSize adSize = (AdSize) obj;
        return this.zzvb == adSize.zzvb && this.zzvc == adSize.zzvc && this.zzvd.equals(adSize.zzvd);
    }

    public final int getHeight() {
        return this.zzvc;
    }

    public final int getHeightInPixels(Context context) {
        int i = this.zzvc;
        if (i == -4 || i == -3) {
            return -1;
        }
        if (i == -2) {
            return zzjo.m31850b(context.getResources().getDisplayMetrics());
        }
        C7430v3.m20640a();
        return C7343o1.m20778a(context, this.zzvc);
    }

    public final int getWidth() {
        return this.zzvb;
    }

    public final int getWidthInPixels(Context context) {
        int i = this.zzvb;
        if (i == -4 || i == -3) {
            return -1;
        }
        if (i == -1) {
            return zzjo.m31851a(context.getResources().getDisplayMetrics());
        }
        C7430v3.m20640a();
        return C7343o1.m20778a(context, this.zzvb);
    }

    public final int hashCode() {
        return this.zzvd.hashCode();
    }

    public final boolean isAutoHeight() {
        return this.zzvc == -2;
    }

    public final boolean isFluid() {
        return this.zzvb == -3 && this.zzvc == -4;
    }

    public final boolean isFullWidth() {
        return this.zzvb == -1;
    }

    public final String toString() {
        return this.zzvd;
    }
}

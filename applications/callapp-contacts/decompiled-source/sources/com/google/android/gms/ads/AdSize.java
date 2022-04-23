package com.google.android.gms.ads;

import android.content.Context;
import com.explorestack.iab.vast.VastError;
import com.google.android.gms.internal.ads.ekb;
import com.google.android.gms.internal.ads.yq;
import com.google.android.gms.internal.ads.zzvt;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/AdSize.class */
public final class AdSize {
    public static final int AUTO_HEIGHT = -2;
    public static final int FULL_WIDTH = -1;
    private final int height;
    private final int width;
    private final String zzadd;
    private boolean zzade;
    private boolean zzadf;
    private int zzadg;
    private boolean zzadh;
    private int zzadi;
    public static final AdSize BANNER = new AdSize(320, 50, "320x50_mb");
    public static final AdSize FULL_BANNER = new AdSize(468, 60, "468x60_as");
    public static final AdSize LARGE_BANNER = new AdSize(320, 100, "320x100_as");
    public static final AdSize LEADERBOARD = new AdSize(728, 90, "728x90_as");
    public static final AdSize MEDIUM_RECTANGLE = new AdSize(VastError.ERROR_CODE_GENERAL_WRAPPER, 250, "300x250_as");
    public static final AdSize WIDE_SKYSCRAPER = new AdSize(160, 600, "160x600_as");
    public static final AdSize SMART_BANNER = new AdSize(-1, -2, "smart_banner");
    public static final AdSize FLUID = new AdSize(-3, -4, "fluid");
    public static final AdSize INVALID = new AdSize(0, 0, "invalid");
    public static final AdSize zzadc = new AdSize(50, 50, "50x50_mb");
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdSize(int i, int i2, String str) {
        if (i < 0 && i != -1 && i != -3) {
            StringBuilder sb = new StringBuilder(37);
            sb.append("Invalid width for AdSize: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        } else if (i2 >= 0 || i2 == -2 || i2 == -4) {
            this.width = i;
            this.height = i2;
            this.zzadd = str;
        } else {
            StringBuilder sb2 = new StringBuilder(38);
            sb2.append("Invalid height for AdSize: ");
            sb2.append(i2);
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    public static AdSize getCurrentOrientationAnchoredAdaptiveBannerAdSize(Context context, int i) {
        AdSize a2 = yq.a(context, i, 0);
        a2.zzade = true;
        return a2;
    }

    @Deprecated
    public static AdSize getCurrentOrientationBannerAdSizeWithWidth(Context context, int i) {
        return getCurrentOrientationAnchoredAdaptiveBannerAdSize(context, i);
    }

    public static AdSize getCurrentOrientationInlineAdaptiveBannerAdSize(Context context, int i) {
        int d2 = yq.d(context, 0);
        if (d2 == -1) {
            return INVALID;
        }
        AdSize adSize = new AdSize(i, 0);
        adSize.zzadg = d2;
        adSize.zzadf = true;
        return adSize;
    }

    public static AdSize getCurrentOrientationInterscrollerAdSize(Context context, int i) {
        return zza(i, yq.d(context, 0));
    }

    public static AdSize getLandscapeAnchoredAdaptiveBannerAdSize(Context context, int i) {
        AdSize a2 = yq.a(context, i, 2);
        a2.zzade = true;
        return a2;
    }

    @Deprecated
    public static AdSize getLandscapeBannerAdSizeWithWidth(Context context, int i) {
        return getLandscapeAnchoredAdaptiveBannerAdSize(context, i);
    }

    public static AdSize getLandscapeInlineAdaptiveBannerAdSize(Context context, int i) {
        int d2 = yq.d(context, 2);
        AdSize adSize = new AdSize(i, 0);
        if (d2 == -1) {
            return INVALID;
        }
        adSize.zzadg = d2;
        adSize.zzadf = true;
        return adSize;
    }

    public static AdSize getLandscapeInterscrollerAdSize(Context context, int i) {
        return zza(i, yq.d(context, 2));
    }

    public static AdSize getPortraitAnchoredAdaptiveBannerAdSize(Context context, int i) {
        AdSize a2 = yq.a(context, i, 1);
        a2.zzade = true;
        return a2;
    }

    @Deprecated
    public static AdSize getPortraitBannerAdSizeWithWidth(Context context, int i) {
        return getPortraitAnchoredAdaptiveBannerAdSize(context, i);
    }

    public static AdSize getPortraitInlineAdaptiveBannerAdSize(Context context, int i) {
        int d2 = yq.d(context, 1);
        AdSize adSize = new AdSize(i, 0);
        if (d2 == -1) {
            return INVALID;
        }
        adSize.zzadg = d2;
        adSize.zzadf = true;
        return adSize;
    }

    public static AdSize getPortraitInterscrollerAdSize(Context context, int i) {
        return zza(i, yq.d(context, 1));
    }

    private static AdSize zza(int i, int i2) {
        if (i2 == -1) {
            return INVALID;
        }
        AdSize adSize = new AdSize(i, 0);
        adSize.zzadi = i2;
        adSize.zzadh = true;
        return adSize;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AdSize)) {
            return false;
        }
        AdSize adSize = (AdSize) obj;
        return this.width == adSize.width && this.height == adSize.height && this.zzadd.equals(adSize.zzadd);
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getHeightInPixels(Context context) {
        int i = this.height;
        if (i == -4 || i == -3) {
            return -1;
        }
        if (i == -2) {
            return zzvt.zzc(context.getResources().getDisplayMetrics());
        }
        ekb.a();
        return yq.a(context, this.height);
    }

    public final int getWidth() {
        return this.width;
    }

    public final int getWidthInPixels(Context context) {
        int i = this.width;
        if (i == -4 || i == -3) {
            return -1;
        }
        if (i == -1) {
            return zzvt.zzb(context.getResources().getDisplayMetrics());
        }
        ekb.a();
        return yq.a(context, this.width);
    }

    public final int hashCode() {
        return this.zzadd.hashCode();
    }

    public final boolean isAutoHeight() {
        return this.height == -2;
    }

    public final boolean isFluid() {
        return this.width == -3 && this.height == -4;
    }

    public final boolean isFullWidth() {
        return this.width == -1;
    }

    public final String toString() {
        return this.zzadd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzc(boolean z) {
        this.zzadf = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzd(boolean z) {
        this.zzadh = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzdu() {
        return this.zzade;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzdv() {
        return this.zzadf;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zzdw() {
        return this.zzadg;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzdx() {
        return this.zzadh;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zzdy() {
        return this.zzadi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzr(int i) {
        this.zzadg = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzs(int i) {
        this.zzadi = i;
    }
}

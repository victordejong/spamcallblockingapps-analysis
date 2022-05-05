package com.google.ads;

import android.content.Context;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/ads/AdSize.class */
public final class AdSize {
    public static final int AUTO_HEIGHT = -2;
    public static final int FULL_WIDTH = -1;
    public static final int LANDSCAPE_AD_HEIGHT = 32;
    public static final int LARGE_AD_HEIGHT = 90;
    public static final int PORTRAIT_AD_HEIGHT = 50;
    public final com.google.android.gms.ads.AdSize zzco;
    public static final AdSize SMART_BANNER = new AdSize(-1, -2, "mb");
    public static final AdSize BANNER = new AdSize(320, 50, "mb");
    public static final AdSize IAB_MRECT = new AdSize(300, 250, "as");
    public static final AdSize IAB_BANNER = new AdSize(468, 60, "as");
    public static final AdSize IAB_LEADERBOARD = new AdSize(728, 90, "as");
    public static final AdSize IAB_WIDE_SKYSCRAPER = new AdSize(160, 600, "as");

    public AdSize(int i, int i2) {
        this(new com.google.android.gms.ads.AdSize(i, i2));
    }

    public AdSize(int i, int i2, String str) {
        this(new com.google.android.gms.ads.AdSize(i, i2));
    }

    public AdSize(com.google.android.gms.ads.AdSize adSize) {
        this.zzco = adSize;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AdSize)) {
            return false;
        }
        return this.zzco.equals(((AdSize) obj).zzco);
    }

    public final AdSize findBestSize(AdSize... adSizeArr) {
        int width;
        int height;
        AdSize adSize = null;
        if (adSizeArr == null) {
            return null;
        }
        float f = 0.0f;
        int width2 = getWidth();
        int height2 = getHeight();
        for (AdSize adSize2 : adSizeArr) {
            adSize = adSize;
            f = f;
            if (isSizeAppropriate(adSize2.getWidth(), adSize2.getHeight())) {
                float f2 = (width * height) / (width2 * height2);
                float f3 = f2;
                if (f2 > 1.0f) {
                    f3 = 1.0f / f2;
                }
                adSize = adSize;
                f = f;
                if (f3 > f) {
                    adSize = adSize2;
                    f = f3;
                }
            }
        }
        return adSize;
    }

    public final int getHeight() {
        return this.zzco.getHeight();
    }

    public final int getHeightInPixels(Context context) {
        return this.zzco.getHeightInPixels(context);
    }

    public final int getWidth() {
        return this.zzco.getWidth();
    }

    public final int getWidthInPixels(Context context) {
        return this.zzco.getWidthInPixels(context);
    }

    public final int hashCode() {
        return this.zzco.hashCode();
    }

    public final boolean isAutoHeight() {
        return this.zzco.isAutoHeight();
    }

    public final boolean isCustomAdSize() {
        return false;
    }

    public final boolean isFullWidth() {
        return this.zzco.isFullWidth();
    }

    public final boolean isSizeAppropriate(int i, int i2) {
        int width = getWidth();
        int height = getHeight();
        float f = i;
        float f2 = width;
        if (f > f2 * 1.25f || f < f2 * 0.8f) {
            return false;
        }
        float f3 = i2;
        float f4 = height;
        return f3 <= 1.25f * f4 && f3 >= f4 * 0.8f;
    }

    public final String toString() {
        return this.zzco.toString();
    }
}

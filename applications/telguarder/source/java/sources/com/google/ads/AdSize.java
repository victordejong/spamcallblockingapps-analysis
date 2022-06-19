package com.google.ads;

import android.content.Context;
import com.pubmatic.sdk.video.POBVastError;
import kotlin.text.Typography;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/ads/AdSize.class */
public final class AdSize {
    public static final int AUTO_HEIGHT = -2;
    public static final int FULL_WIDTH = -1;
    public static final int LANDSCAPE_AD_HEIGHT = 32;
    public static final int LARGE_AD_HEIGHT = 90;
    public static final int PORTRAIT_AD_HEIGHT = 50;
    private final com.google.android.gms.ads.AdSize zzdu;
    public static final AdSize SMART_BANNER = new AdSize(-1, -2, "mb");
    public static final AdSize BANNER = new AdSize(320, 50, "mb");
    public static final AdSize IAB_MRECT = new AdSize(300, 250, "as");
    public static final AdSize IAB_BANNER = new AdSize(468, 60, "as");
    public static final AdSize IAB_LEADERBOARD = new AdSize(728, 90, "as");
    public static final AdSize IAB_WIDE_SKYSCRAPER = new AdSize(Typography.nbsp, POBVastError.GENERAL_COMPANION_AD_ERROR, "as");

    public AdSize(int i, int i2) {
        this(new com.google.android.gms.ads.AdSize(i, i2));
    }

    private AdSize(int i, int i2, String str) {
        this(new com.google.android.gms.ads.AdSize(i, i2));
    }

    public AdSize(com.google.android.gms.ads.AdSize adSize) {
        this.zzdu = adSize;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AdSize)) {
            return false;
        }
        return this.zzdu.equals(((AdSize) obj).zzdu);
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
        int length = adSizeArr.length;
        int i = 0;
        while (i < length) {
            AdSize adSize2 = adSizeArr[i];
            AdSize adSize3 = adSize;
            float f2 = f;
            if (isSizeAppropriate(adSize2.getWidth(), adSize2.getHeight())) {
                float f3 = (width * height) / (width2 * height2);
                float f4 = f3;
                if (f3 > 1.0f) {
                    f4 = 1.0f / f3;
                }
                adSize3 = adSize;
                f2 = f;
                if (f4 > f) {
                    adSize3 = adSize2;
                    f2 = f4;
                }
            }
            i++;
            adSize = adSize3;
            f = f2;
        }
        return adSize;
    }

    public final int getHeight() {
        return this.zzdu.getHeight();
    }

    public final int getHeightInPixels(Context context) {
        return this.zzdu.getHeightInPixels(context);
    }

    public final int getWidth() {
        return this.zzdu.getWidth();
    }

    public final int getWidthInPixels(Context context) {
        return this.zzdu.getWidthInPixels(context);
    }

    public final int hashCode() {
        return this.zzdu.hashCode();
    }

    public final boolean isAutoHeight() {
        return this.zzdu.isAutoHeight();
    }

    public final boolean isCustomAdSize() {
        return false;
    }

    public final boolean isFullWidth() {
        return this.zzdu.isFullWidth();
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
        return this.zzdu.toString();
    }
}

package com.google.ads;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import io.agora.rtc.Constants;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/ads/AdSize.class */
public final class AdSize {
    public static final int AUTO_HEIGHT = -2;
    public static final int FULL_WIDTH = -1;
    public static final int LANDSCAPE_AD_HEIGHT = 32;
    public static final int LARGE_AD_HEIGHT = 90;
    public static final int PORTRAIT_AD_HEIGHT = 50;

    /* renamed from: a */
    public final com.google.android.gms.ads.AdSize f4826a;
    @RecentlyNonNull
    public static final AdSize SMART_BANNER = new AdSize(-1, -2, "mb");
    @RecentlyNonNull
    public static final AdSize BANNER = new AdSize(320, 50, "mb");
    @RecentlyNonNull
    public static final AdSize IAB_MRECT = new AdSize(300, 250, "as");
    @RecentlyNonNull
    public static final AdSize IAB_BANNER = new AdSize(468, 60, "as");
    @RecentlyNonNull
    public static final AdSize IAB_LEADERBOARD = new AdSize(728, 90, "as");
    @RecentlyNonNull
    public static final AdSize IAB_WIDE_SKYSCRAPER = new AdSize(Constants.ERR_ALREADY_IN_RECORDING, 600, "as");

    public AdSize(int i, int i2) {
        this(new com.google.android.gms.ads.AdSize(i, i2));
    }

    public AdSize(int i, int i2, String str) {
        this(new com.google.android.gms.ads.AdSize(i, i2));
    }

    public AdSize(@RecentlyNonNull com.google.android.gms.ads.AdSize adSize) {
        this.f4826a = adSize;
    }

    public boolean equals(@RecentlyNonNull Object obj) {
        if (!(obj instanceof AdSize)) {
            return false;
        }
        return this.f4826a.equals(((AdSize) obj).f4826a);
    }

    @RecentlyNonNull
    public AdSize findBestSize(@RecentlyNonNull AdSize... adSizeArr) {
        int width;
        int height;
        AdSize adSize = null;
        if (adSizeArr == null) {
            return null;
        }
        int width2 = getWidth();
        int height2 = getHeight();
        int length = adSizeArr.length;
        float f = 0.0f;
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

    public int getHeight() {
        return this.f4826a.getHeight();
    }

    public int getHeightInPixels(@RecentlyNonNull Context context) {
        return this.f4826a.getHeightInPixels(context);
    }

    public int getWidth() {
        return this.f4826a.getWidth();
    }

    public int getWidthInPixels(@RecentlyNonNull Context context) {
        return this.f4826a.getWidthInPixels(context);
    }

    public int hashCode() {
        return this.f4826a.hashCode();
    }

    public boolean isAutoHeight() {
        return this.f4826a.isAutoHeight();
    }

    public boolean isCustomAdSize() {
        return false;
    }

    public boolean isFullWidth() {
        return this.f4826a.isFullWidth();
    }

    public boolean isSizeAppropriate(int i, int i2) {
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

    @RecentlyNonNull
    public String toString() {
        return this.f4826a.toString();
    }
}

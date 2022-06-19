package com.facebook.ads;

import androidx.annotation.Keep;
import com.facebook.ads.internal.api.AdSizeApi;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import java.io.Serializable;
@Keep
/* loaded from: classes2-dex2jar.jar:com/facebook/ads/AdSize.class */
public class AdSize implements Serializable {
    private final int UNDEFINED;
    private AdSizeApi mAdSizeApi;
    private final int mInitHeight;
    private final int mInitSizeType;
    private final int mInitWidth;
    @Deprecated
    public static final AdSize BANNER_320_50 = new AdSize(4);
    public static final AdSize INTERSTITIAL = new AdSize(100);
    public static final AdSize BANNER_HEIGHT_50 = new AdSize(5);
    public static final AdSize BANNER_HEIGHT_90 = new AdSize(6);
    public static final AdSize RECTANGLE_HEIGHT_250 = new AdSize(7);

    private AdSize(int i) {
        this.UNDEFINED = -1;
        this.mInitSizeType = i;
        this.mInitWidth = -1;
        this.mInitHeight = -1;
    }

    public AdSize(int i, int i2) {
        this.UNDEFINED = -1;
        this.mInitSizeType = -1;
        this.mInitWidth = i;
        this.mInitHeight = i2;
    }

    public static AdSize fromWidthAndHeight(int i, int i2) {
        AdSize adSize = INTERSTITIAL;
        if (adSize.getHeight() == i2 && adSize.getWidth() == i) {
            return adSize;
        }
        AdSize adSize2 = BANNER_320_50;
        if (adSize2.getHeight() == i2 && adSize2.getWidth() == i) {
            return adSize2;
        }
        AdSize adSize3 = BANNER_HEIGHT_50;
        if (adSize3.getHeight() == i2 && adSize3.getWidth() == i) {
            return adSize3;
        }
        AdSize adSize4 = BANNER_HEIGHT_90;
        if (adSize4.getHeight() == i2 && adSize4.getWidth() == i) {
            return adSize4;
        }
        AdSize adSize5 = RECTANGLE_HEIGHT_250;
        if (adSize5.getHeight() != i2 || adSize5.getWidth() != i) {
            throw new IllegalArgumentException("Can't create AdSize using this width and height.");
        }
        return adSize5;
    }

    private AdSizeApi getAdSizeApi(int i) {
        if (this.mAdSizeApi == null) {
            this.mAdSizeApi = DynamicLoaderFactory.makeLoaderUnsafe().createAdSizeApi(i);
        }
        return this.mAdSizeApi;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AdSize adSize = (AdSize) obj;
        if (getWidth() != adSize.getWidth()) {
            return false;
        }
        if (getHeight() != adSize.getHeight()) {
            z = false;
        }
        return z;
    }

    public int getHeight() {
        int i = this.mInitSizeType;
        return i != -1 ? getAdSizeApi(i).getHeight() : this.mInitHeight;
    }

    public int getWidth() {
        int i = this.mInitSizeType;
        return i != -1 ? getAdSizeApi(i).getWidth() : this.mInitWidth;
    }

    public int hashCode() {
        return getHeight() + (getWidth() * 31);
    }
}

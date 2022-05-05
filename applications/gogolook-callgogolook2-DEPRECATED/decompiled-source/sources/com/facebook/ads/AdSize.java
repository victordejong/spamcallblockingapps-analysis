package com.facebook.ads;

import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.api.AdSizeApi;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import java.io.Serializable;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/AdSize.class */
public class AdSize implements Serializable {
    public final int UNDEFINED;
    @Nullable
    public AdSizeApi mAdSizeApi;
    public final int mInitHeight;
    public final int mInitSizeType;
    public final int mInitWidth;
    @Deprecated
    public static final AdSize BANNER_320_50 = new AdSize(4);
    public static final AdSize INTERSTITIAL = new AdSize(100);
    public static final AdSize BANNER_HEIGHT_50 = new AdSize(5);
    public static final AdSize BANNER_HEIGHT_90 = new AdSize(6);
    public static final AdSize RECTANGLE_HEIGHT_250 = new AdSize(7);

    public AdSize(int i) {
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
        if (INTERSTITIAL.getHeight() == i2 && INTERSTITIAL.getWidth() == i) {
            return INTERSTITIAL;
        }
        if (BANNER_320_50.getHeight() == i2 && BANNER_320_50.getWidth() == i) {
            return BANNER_320_50;
        }
        if (BANNER_HEIGHT_50.getHeight() == i2 && BANNER_HEIGHT_50.getWidth() == i) {
            return BANNER_HEIGHT_50;
        }
        if (BANNER_HEIGHT_90.getHeight() == i2 && BANNER_HEIGHT_90.getWidth() == i) {
            return BANNER_HEIGHT_90;
        }
        if (RECTANGLE_HEIGHT_250.getHeight() == i2 && RECTANGLE_HEIGHT_250.getWidth() == i) {
            return RECTANGLE_HEIGHT_250;
        }
        return null;
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
        if (obj == null || AdSize.class != obj.getClass()) {
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
        return (getWidth() * 31) + getHeight();
    }
}

package io.bidmachine.banner;

import com.explorestack.iab.vast.VastError;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/banner/BannerSize.class */
public enum BannerSize {
    Size_320x50(320, 50),
    Size_300x250(VastError.ERROR_CODE_GENERAL_WRAPPER, 250),
    Size_728x90(728, 90);
    
    public final int height;
    public final int width;

    BannerSize(int i, int i2) {
        this.width = i;
        this.height = i2;
    }
}

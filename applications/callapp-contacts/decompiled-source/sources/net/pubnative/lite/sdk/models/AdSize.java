package net.pubnative.lite.sdk.models;

import com.explorestack.iab.vast.VastError;
import java.util.Locale;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/AdSize.class */
public enum AdSize {
    SIZE_320x50(320, 50, "s"),
    SIZE_300x250(VastError.ERROR_CODE_GENERAL_WRAPPER, 250, "m"),
    SIZE_300x50(VastError.ERROR_CODE_GENERAL_WRAPPER, 50, "s"),
    SIZE_320x480(320, 480, "l"),
    SIZE_1024x768(1024, 768, "l"),
    SIZE_768x1024(768, 1024, "l"),
    SIZE_728x90(728, 90, "s"),
    SIZE_160x600(160, 600, "m"),
    SIZE_250x250(250, 250, "m"),
    SIZE_300x600(VastError.ERROR_CODE_GENERAL_WRAPPER, 600, "l"),
    SIZE_320x100(320, 100, "s"),
    SIZE_480x320(480, 320, "l"),
    SIZE_INTERSTITIAL(0, 0, "l");
    
    private final String adLayoutSize;
    private final int height;
    private final int width;

    AdSize(int i, int i2, String str) {
        this.width = i;
        this.height = i2;
        this.adLayoutSize = str;
    }

    public final String getAdLayoutSize() {
        return this.adLayoutSize;
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getWidth() {
        return this.width;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return String.format(Locale.ENGLISH, "(%d x %d)", Integer.valueOf(getWidth()), Integer.valueOf(getHeight()));
    }
}

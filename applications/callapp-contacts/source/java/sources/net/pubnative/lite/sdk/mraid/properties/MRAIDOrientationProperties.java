package net.pubnative.lite.sdk.mraid.properties;

import com.verizon.ads.EnvironmentInfo;
import java.util.Arrays;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/mraid/properties/MRAIDOrientationProperties.class */
public final class MRAIDOrientationProperties {
    public static final int FORCE_ORIENTATION_LANDSCAPE = 1;
    public static final int FORCE_ORIENTATION_NONE = 2;
    public static final int FORCE_ORIENTATION_PORTRAIT = 0;
    public boolean allowOrientationChange;
    public int forceOrientation;

    public MRAIDOrientationProperties() {
        this(true, 2);
    }

    public MRAIDOrientationProperties(boolean z, int i) {
        this.allowOrientationChange = z;
        this.forceOrientation = i;
    }

    public static int forceOrientationFromString(String str) {
        int indexOf = Arrays.asList(EnvironmentInfo.DeviceInfo.ORIENTATION_PORTRAIT, EnvironmentInfo.DeviceInfo.ORIENTATION_LANDSCAPE, "none").indexOf(str);
        if (indexOf != -1) {
            return indexOf;
        }
        return 2;
    }

    public final String forceOrientationString() {
        int i = this.forceOrientation;
        return i != 0 ? i != 1 ? i != 2 ? "error" : "none" : EnvironmentInfo.DeviceInfo.ORIENTATION_LANDSCAPE : EnvironmentInfo.DeviceInfo.ORIENTATION_PORTRAIT;
    }
}

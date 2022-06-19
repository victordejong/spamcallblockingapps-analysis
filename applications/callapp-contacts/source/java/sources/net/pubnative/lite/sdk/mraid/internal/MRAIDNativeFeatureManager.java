package net.pubnative.lite.sdk.mraid.internal;

import android.content.Context;
import java.util.ArrayList;
import net.pubnative.lite.sdk.mraid.MRAIDNativeFeature;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/mraid/internal/MRAIDNativeFeatureManager.class */
public class MRAIDNativeFeatureManager {
    private static final String TAG = "MRAIDNativeFeatureManager";
    private Context context;
    private ArrayList<String> supportedNativeFeatures;

    public MRAIDNativeFeatureManager(Context context, ArrayList<String> arrayList) {
        this.context = context;
        this.supportedNativeFeatures = arrayList;
    }

    public ArrayList<String> getSupportedNativeFeatures() {
        return this.supportedNativeFeatures;
    }

    public boolean isCalendarSupported() {
        boolean z = this.supportedNativeFeatures.contains(MRAIDNativeFeature.CALENDAR) && this.context.checkCallingOrSelfPermission("android.permission.WRITE_CALENDAR") == 0;
        MRAIDLog.m639d(TAG, "isCalendarSupported ".concat(String.valueOf(z)));
        return z;
    }

    public boolean isInlineVideoSupported() {
        boolean contains = this.supportedNativeFeatures.contains(MRAIDNativeFeature.INLINE_VIDEO);
        MRAIDLog.m639d(TAG, "isInlineVideoSupported ".concat(String.valueOf(contains)));
        return contains;
    }

    public boolean isSmsSupported() {
        boolean z = this.supportedNativeFeatures.contains(MRAIDNativeFeature.SMS) && this.context.checkCallingOrSelfPermission("android.permission.SEND_SMS") == 0;
        MRAIDLog.m639d(TAG, "isSmsSupported ".concat(String.valueOf(z)));
        return z;
    }

    public boolean isStorePictureSupported() {
        boolean contains = this.supportedNativeFeatures.contains(MRAIDNativeFeature.STORE_PICTURE);
        MRAIDLog.m639d(TAG, "isStorePictureSupported ".concat(String.valueOf(contains)));
        return contains;
    }

    public boolean isTelSupported() {
        boolean z = this.supportedNativeFeatures.contains(MRAIDNativeFeature.TEL) && this.context.checkCallingOrSelfPermission("android.permission.CALL_PHONE") == 0;
        MRAIDLog.m639d(TAG, "isTelSupported ".concat(String.valueOf(z)));
        return z;
    }
}

package com.pubmatic.sdk.common.viewability;

import android.view.View;
import com.pubmatic.sdk.common.POBDataType;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider.class */
public interface POBVideoMeasurementProvider extends POBMeasurementProvider {

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBOmidSessionListener.class */
    public interface POBOmidSessionListener {
        void onOmidSessionInitialized();
    }

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVerificationScriptResource.class */
    public interface POBVerificationScriptResource {
        List<String> getJavaScriptResource();

        String getVendorKey();

        String getVerificationParameter();
    }

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType.class */
    public enum POBVideoAdErrorType {
        GENERIC,
        VIDEO
    }

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState.class */
    public enum POBVideoPlayerState {
        FULLSCREEN,
        MINIMIZED,
        COLLAPSED,
        NORMAL,
        EXPANDED
    }

    void impressionOccurred();

    void loaded(boolean z, float f);

    void signalAdEvent(POBDataType.POBVideoAdEventType pOBVideoAdEventType);

    void signalError(POBVideoAdErrorType pOBVideoAdErrorType, String str);

    void signalPlayerStateChange(POBVideoPlayerState pOBVideoPlayerState);

    void start(float f, float f2);

    void startAdSession(View view, List<POBVerificationScriptResource> list, POBOmidSessionListener pOBOmidSessionListener);
}

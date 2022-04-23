package zendesk.core;

import android.support.annotation.Nullable;
import com.google.gson.annotations.SerializedName;
/* loaded from: classes3-dex2jar.jar:zendesk/core/PushRegistrationResponseWrapper.class */
class PushRegistrationResponseWrapper {
    @SerializedName("push_notification_device")
    private PushRegistrationResponse registrationResponse;

    PushRegistrationResponseWrapper() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public PushRegistrationResponse getRegistrationResponse() {
        return this.registrationResponse;
    }
}

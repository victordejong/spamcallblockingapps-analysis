package zendesk.core;

import io.fabric.sdk.android.services.common.AbstractSpiCall;
/* loaded from: classes3-dex2jar.jar:zendesk/core/PushRegistrationRequest.class */
class PushRegistrationRequest {
    private final String deviceType = AbstractSpiCall.ANDROID_CLIENT_TYPE;
    private String identifier;
    private String locale;
    private String sdkGuid;
    private String tokenType;

    String getIdentifier() {
        return this.identifier;
    }

    String getLocale() {
        return this.locale;
    }

    String getSdkGuid() {
        return this.sdkGuid;
    }

    String getTokenType() {
        return this.tokenType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setIdentifier(String str) {
        this.identifier = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLocale(String str) {
        this.locale = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSdkGuid(String str) {
        this.sdkGuid = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTokenType(String str) {
        this.tokenType = str;
    }
}

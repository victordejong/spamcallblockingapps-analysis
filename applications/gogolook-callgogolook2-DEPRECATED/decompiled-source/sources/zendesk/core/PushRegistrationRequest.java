package zendesk.core;

import com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor;
/* loaded from: classes3-dex2jar.jar:zendesk/core/PushRegistrationRequest.class */
public class PushRegistrationRequest {
    public final String deviceType = IJSExecutor.JS_FUNCTION_GROUP;
    public String identifier;
    public String locale;
    public String sdkGuid;
    public String tokenType;

    public String getIdentifier() {
        return this.identifier;
    }

    public String getLocale() {
        return this.locale;
    }

    public String getSdkGuid() {
        return this.sdkGuid;
    }

    public String getTokenType() {
        return this.tokenType;
    }

    public void setIdentifier(String str) {
        this.identifier = str;
    }

    public void setLocale(String str) {
        this.locale = str;
    }

    public void setSdkGuid(String str) {
        this.sdkGuid = str;
    }

    public void setTokenType(String str) {
        this.tokenType = str;
    }
}

package com.crashlytics.android.answers;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/LoginEvent.class */
public class LoginEvent extends PredefinedEvent<LoginEvent> {
    static final String METHOD_ATTRIBUTE = "method";
    static final String SUCCESS_ATTRIBUTE = "success";
    static final String TYPE = "login";

    @Override // com.crashlytics.android.answers.PredefinedEvent
    public String getPredefinedType() {
        return "login";
    }

    public LoginEvent putMethod(String str) {
        this.predefinedAttributes.put("method", str);
        return this;
    }

    public LoginEvent putSuccess(boolean z) {
        this.predefinedAttributes.put("success", Boolean.toString(z));
        return this;
    }
}

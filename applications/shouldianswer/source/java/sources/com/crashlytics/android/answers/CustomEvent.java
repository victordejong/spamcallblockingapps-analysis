package com.crashlytics.android.answers;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/CustomEvent.class */
public class CustomEvent extends AnswersEvent<CustomEvent> {
    private final String eventName;

    public CustomEvent(String str) {
        if (str != null) {
            this.eventName = this.validator.limitStringLength(str);
            return;
        }
        throw new NullPointerException("eventName must not be null");
    }

    public String getCustomType() {
        return this.eventName;
    }

    public String toString() {
        return "{eventName:\"" + this.eventName + "\", customAttributes:" + this.customAttributes + "}";
    }
}

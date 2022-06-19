package com.crashlytics.android.answers;

import io.fabric.sdk.android.C1449c;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/AnswersEventValidator.class */
class AnswersEventValidator {
    boolean failFast;
    final int maxNumAttributes;
    final int maxStringLength;

    public AnswersEventValidator(int i, int i2, boolean z) {
        this.maxNumAttributes = i;
        this.maxStringLength = i2;
        this.failFast = z;
    }

    private void logOrThrowException(RuntimeException runtimeException) {
        if (!this.failFast) {
            C1449c.m3572g().mo3545e(Answers.TAG, "Invalid user input detected", runtimeException);
            return;
        }
        throw runtimeException;
    }

    public boolean isFullMap(Map<String, Object> map, String str) {
        if (map.size() < this.maxNumAttributes || map.containsKey(str)) {
            return false;
        }
        logOrThrowException(new IllegalArgumentException(String.format(Locale.US, "Limit of %d attributes reached, skipping attribute", Integer.valueOf(this.maxNumAttributes))));
        return true;
    }

    public boolean isNull(Object obj, String str) {
        if (obj == null) {
            logOrThrowException(new NullPointerException(str + " must not be null"));
            return true;
        }
        return false;
    }

    public String limitStringLength(String str) {
        String str2 = str;
        if (str.length() > this.maxStringLength) {
            logOrThrowException(new IllegalArgumentException(String.format(Locale.US, "String is too long, truncating to %d characters", Integer.valueOf(this.maxStringLength))));
            str2 = str.substring(0, this.maxStringLength);
        }
        return str2;
    }
}

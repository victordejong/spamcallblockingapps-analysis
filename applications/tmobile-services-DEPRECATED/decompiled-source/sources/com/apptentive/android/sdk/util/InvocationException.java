package com.apptentive.android.sdk.util;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/InvocationException.class */
public class InvocationException extends Exception {
    public InvocationException(String str, Object... objArr) {
        super(StringUtils.format(str, objArr));
    }

    public InvocationException(Throwable th, String str, Object... objArr) {
        super(StringUtils.format(str, objArr), th);
    }
}

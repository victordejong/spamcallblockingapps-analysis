package com.telguarder.helpers.errorhandling;
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/errorhandling/NoInternetError.class */
public class NoInternetError extends Exception {
    @Override // java.lang.Throwable
    public String getMessage() {
        return "Your are not connected to the Internet.\n Please connect to the Internet, and try again.";
    }
}

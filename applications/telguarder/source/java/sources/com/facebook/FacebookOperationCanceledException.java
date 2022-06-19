package com.facebook;
/* loaded from: classes-dex2jar.jar:com/facebook/FacebookOperationCanceledException.class */
public class FacebookOperationCanceledException extends FacebookException {
    static final long serialVersionUID = 1;

    public FacebookOperationCanceledException() {
    }

    public FacebookOperationCanceledException(String str) {
        super(str);
    }

    public FacebookOperationCanceledException(String str, Throwable th) {
        super(str, th);
    }

    public FacebookOperationCanceledException(Throwable th) {
        super(th);
    }
}

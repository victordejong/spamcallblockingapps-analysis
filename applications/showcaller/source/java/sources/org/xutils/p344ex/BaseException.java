package org.xutils.p344ex;

import java.io.IOException;
/* renamed from: org.xutils.ex.BaseException */
/* loaded from: classes2-dex2jar.jar:org/xutils/ex/BaseException.class */
public class BaseException extends IOException {
    private static final long serialVersionUID = 1;

    public BaseException() {
    }

    public BaseException(String str) {
        super(str);
    }

    public BaseException(String str, Throwable th) {
        super(str);
        initCause(th);
    }

    public BaseException(Throwable th) {
        super(th.getMessage());
        initCause(th);
    }
}

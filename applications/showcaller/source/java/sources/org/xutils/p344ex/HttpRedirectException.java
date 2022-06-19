package org.xutils.p344ex;
/* renamed from: org.xutils.ex.HttpRedirectException */
/* loaded from: classes2-dex2jar.jar:org/xutils/ex/HttpRedirectException.class */
public class HttpRedirectException extends HttpException {
    private static final long serialVersionUID = 1;

    public HttpRedirectException(int i, String str, String str2) {
        super(i, str);
        setResult(str2);
    }
}

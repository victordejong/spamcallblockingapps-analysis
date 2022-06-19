package org.apache.commons.lang3;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/NotImplementedException.class */
public class NotImplementedException extends UnsupportedOperationException {

    /* renamed from: a */
    private final String f67177a;

    public NotImplementedException() {
        this.f67177a = null;
    }

    public NotImplementedException(String str) {
        this(str, (String) null);
    }

    public NotImplementedException(String str, String str2) {
        super(str);
        this.f67177a = str2;
    }

    public NotImplementedException(String str, Throwable th) {
        this(str, th, null);
    }

    public NotImplementedException(String str, Throwable th, String str2) {
        super(str, th);
        this.f67177a = str2;
    }

    public NotImplementedException(Throwable th) {
        this(th, (String) null);
    }

    public NotImplementedException(Throwable th, String str) {
        super(th);
        this.f67177a = str;
    }
}

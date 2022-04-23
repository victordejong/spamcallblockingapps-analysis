package org.apache.commons.lang3;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/NotImplementedException.class */
public class NotImplementedException extends UnsupportedOperationException {

    /* renamed from: a  reason: collision with root package name */
    private final String f39130a;

    public NotImplementedException() {
        this.f39130a = null;
    }

    public NotImplementedException(String str) {
        this(str, (String) null);
    }

    public NotImplementedException(String str, String str2) {
        super(str);
        this.f39130a = str2;
    }

    public NotImplementedException(String str, Throwable th) {
        this(str, th, null);
    }

    public NotImplementedException(String str, Throwable th, String str2) {
        super(str, th);
        this.f39130a = str2;
    }

    public NotImplementedException(Throwable th) {
        this(th, (String) null);
    }

    public NotImplementedException(Throwable th, String str) {
        super(th);
        this.f39130a = str;
    }
}

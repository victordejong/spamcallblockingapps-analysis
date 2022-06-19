package org.bson;
/* loaded from: classes-dex2jar.jar:org/bson/BSONException.class */
public class BSONException extends RuntimeException {
    private static final long serialVersionUID = -4415279469780082174L;
    private Integer errorCode;

    public BSONException(int i, String str) {
        super(str);
        this.errorCode = null;
        this.errorCode = Integer.valueOf(i);
    }

    public BSONException(int i, String str, Throwable th) {
        super(str, th);
        this.errorCode = null;
        this.errorCode = Integer.valueOf(i);
    }

    public BSONException(String str) {
        super(str);
        this.errorCode = null;
    }

    public BSONException(String str, Throwable th) {
        super(str, th);
        this.errorCode = null;
    }

    public Integer getErrorCode() {
        return this.errorCode;
    }

    public boolean hasErrorCode() {
        return this.errorCode != null;
    }
}

package com.tmobile.tmoid.helperlib.sit;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/SitServerCommunicationErrorException.class */
public class SitServerCommunicationErrorException extends SitException {
    private int errorCode;
    private SitErrorType sitErrorType;

    public SitServerCommunicationErrorException() {
        this.sitErrorType = SitErrorType.OTHER;
        this.errorCode = -1;
    }

    public SitServerCommunicationErrorException(SitErrorType sitErrorType) {
        super("ErrorType: " + sitErrorType.toString());
        this.sitErrorType = SitErrorType.OTHER;
        this.errorCode = -1;
        this.sitErrorType = sitErrorType;
    }

    public SitServerCommunicationErrorException(SitErrorType sitErrorType, int i) {
        super("ErrorType: " + sitErrorType.toString() + ", errorCode: " + Integer.toString(i));
        this.sitErrorType = SitErrorType.OTHER;
        this.errorCode = -1;
        this.sitErrorType = sitErrorType;
        this.errorCode = i;
    }

    public SitServerCommunicationErrorException(SitErrorType sitErrorType, String str) {
        super("ErrorType: " + sitErrorType.toString() + ", description: " + str);
        this.sitErrorType = SitErrorType.OTHER;
        this.errorCode = -1;
        this.sitErrorType = sitErrorType;
        this.description = str;
    }

    public SitServerCommunicationErrorException(SitErrorType sitErrorType, Throwable th) {
        super(th);
        this.sitErrorType = SitErrorType.OTHER;
        this.errorCode = -1;
        this.sitErrorType = sitErrorType;
    }

    public SitServerCommunicationErrorException(Throwable th) {
        super(th);
        this.sitErrorType = SitErrorType.OTHER;
        this.errorCode = -1;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public SitErrorType getSitErrorType() {
        return this.sitErrorType;
    }
}

package com.tmobile.tmoid.helperlib;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/ServerErrorException.class */
public class ServerErrorException extends IAMException {
    public static final int AGENT_ERROR_CLIENT_PROTOCOL = -1003;
    public static final int AGENT_ERROR_GENERIC_ERROR = -1000;
    public static final int AGENT_ERROR_JSON_DECODING = -1001;
    public static final int AGENT_ERROR_UNSUPPORTED_ENCODING = -1002;
    public static final int ERROR_AUTHENTICATION = -4;
    public static final int ERROR_BAD_URL = -12;
    public static final int ERROR_CONNECT = -6;
    public static final int ERROR_FAILED_SSL_HANDSHAKE = -11;
    public static final int ERROR_FILE = -13;
    public static final int ERROR_FILE_NOT_FOUND = -14;
    public static final int ERROR_HOST_LOOKUP = -2;
    public static final int ERROR_IO = -7;
    public static final int ERROR_PROXY_AUTHENTICATION = -5;
    public static final int ERROR_REDIRECT_LOOP = -9;
    public static final int ERROR_TIMEOUT = -8;
    public static final int ERROR_TOO_MANY_REQUESTS = -15;
    public static final int ERROR_UNKNOWN = -1;
    public static final int ERROR_UNSUPPORTED_AUTH_SCHEME = -3;
    public static final int ERROR_UNSUPPORTED_SCHEME = -10;
    public static final int NO_ERROR = 0;
    int _error;
    String description;
    String error;
    String failURL;

    public ServerErrorException(int i) {
        this._error = 0;
        this._error = i;
    }

    public ServerErrorException(int i, Throwable th) {
        super(th);
        this._error = 0;
        this._error = i;
    }

    public String getDescription() {
        return this.description;
    }

    public String getError() {
        return this.error;
    }

    public String getFailURL() {
        return this.failURL;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setError(String str) {
        this.error = str;
    }

    public void setFailURL(String str) {
        this.failURL = str;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "ServerErrorException{error_code=" + this._error + ", error='" + this.error + "', description='" + this.description + "', failURL='" + this.failURL + "'}";
    }
}

package com.amazon.device.ads;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/AdError.class */
public class AdError {
    private final ErrorCode code;
    private final String message;

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/AdError$ErrorCode.class */
    public enum ErrorCode {
        NO_ERROR,
        NETWORK_ERROR,
        NETWORK_TIMEOUT,
        NO_FILL,
        INTERNAL_ERROR,
        REQUEST_ERROR
    }

    public AdError(ErrorCode errorCode, String str) {
        this.code = errorCode;
        this.message = str;
    }

    public ErrorCode getCode() {
        return this.code;
    }

    public String getMessage() {
        return this.message;
    }
}

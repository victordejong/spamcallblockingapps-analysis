package com.amazon.device.ads;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/AdError.class */
public class AdError {

    /* renamed from: a */
    public final ErrorCode f11667a;

    /* renamed from: b */
    public final String f11668b;

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
        this.f11667a = errorCode;
        this.f11668b = str;
    }
}

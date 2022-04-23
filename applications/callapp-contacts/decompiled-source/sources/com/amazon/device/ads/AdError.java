package com.amazon.device.ads;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/AdError.class */
public class AdError {

    /* renamed from: a  reason: collision with root package name */
    public final ErrorCode f6365a;

    /* renamed from: b  reason: collision with root package name */
    public final String f6366b;

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/AdError$ErrorCode.class */
    public enum ErrorCode {
        NO_ERROR,
        NETWORK_ERROR,
        NETWORK_TIMEOUT,
        NO_FILL,
        INTERNAL_ERROR,
        REQUEST_ERROR
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdError(ErrorCode errorCode, String str) {
        this.f6365a = errorCode;
        this.f6366b = str;
    }
}

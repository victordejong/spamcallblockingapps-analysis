package com.mopub.nativeads;

import com.mopub.mobileads.MoPubError;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/NativeErrorCode.class */
public enum NativeErrorCode implements MoPubError {
    AD_SUCCESS("ad successfully loaded."),
    EMPTY_AD_RESPONSE("Server returned empty response."),
    INVALID_RESPONSE("Unable to parse response from server."),
    IMAGE_DOWNLOAD_FAILURE("Unable to download images associated with ad."),
    INVALID_REQUEST_URL("Invalid request url."),
    UNEXPECTED_RESPONSE_CODE("Received unexpected response code from server."),
    SERVER_ERROR_RESPONSE_CODE("Server returned erroneous response code."),
    CONNECTION_ERROR("Network is unavailable."),
    TOO_MANY_REQUESTS("Too many failed requests have been made. Please try again later."),
    UNSPECIFIED("Unspecified error occurred."),
    NETWORK_INVALID_REQUEST("Third-party network received invalid request."),
    NETWORK_TIMEOUT("Third-party network failed to respond in a timely manner."),
    NETWORK_NO_FILL("Third-party network failed to provide an ad."),
    NETWORK_INVALID_STATE("Third-party network failed due to invalid internal state."),
    NATIVE_RENDERER_CONFIGURATION_ERROR("A required renderer was not registered for the CustomEventNative."),
    NATIVE_ADAPTER_CONFIGURATION_ERROR("CustomEventNative was configured incorrectly."),
    NATIVE_ADAPTER_NOT_FOUND("Unable to find CustomEventNative."),
    MIN_FLOOR_PRICE_REACHED("Minimum floor price reached");
    
    private final String message;

    /* renamed from: com.mopub.nativeads.NativeErrorCode$1  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/NativeErrorCode$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f34611a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[NativeErrorCode.values().length];
            f34611a = iArr;
            try {
                iArr[NativeErrorCode.NETWORK_TIMEOUT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f34611a[NativeErrorCode.NATIVE_ADAPTER_NOT_FOUND.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f34611a[NativeErrorCode.AD_SUCCESS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    NativeErrorCode(String str) {
        this.message = str;
    }

    @Override // com.mopub.mobileads.MoPubError
    public final int getIntCode() {
        int i = AnonymousClass1.f34611a[ordinal()];
        if (i == 1) {
            return 2;
        }
        if (i != 2) {
            return i != 3 ? 10000 : 0;
        }
        return 1;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.message;
    }
}

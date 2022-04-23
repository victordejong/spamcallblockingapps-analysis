package com.inmobi.commons.core.network;
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/network/NetworkError.class */
public final class NetworkError {

    /* renamed from: a */
    public ErrorCode f32582a;

    /* renamed from: b */
    public String f32583b;

    /* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/network/NetworkError$ErrorCode.class */
    public enum ErrorCode {
        NETWORK_UNAVAILABLE_ERROR(0),
        UNKNOWN_ERROR(-1),
        NETWORK_IO_ERROR(-2),
        OUT_OF_MEMORY_ERROR(-3),
        INVALID_ENCRYPTED_RESPONSE_RECEIVED(-4),
        RESPONSE_EXCEEDS_SPECIFIED_SIZE_LIMIT(-5),
        GZIP_DECOMPRESSION_FAILED(-6),
        BAD_REQUEST(-7),
        GDPR_COMPLIANCE_ENFORCED(-8),
        GENERIC_HTTP_2XX(-9),
        HTTP_NO_CONTENT(204),
        HTTP_NOT_MODIFIED(304),
        HTTP_SEE_OTHER(303),
        HTTP_SERVER_NOT_FOUND(404),
        HTTP_MOVED_TEMP(302),
        HTTP_INTERNAL_SERVER_ERROR(500),
        HTTP_NOT_IMPLEMENTED(501),
        HTTP_BAD_GATEWAY(502),
        HTTP_SERVER_NOT_AVAILABLE(503),
        HTTP_GATEWAY_TIMEOUT(504),
        HTTP_VERSION_NOT_SUPPORTED(505);
        

        /* renamed from: a */
        public int f32584a;

        ErrorCode(int i) {
            this.f32584a = i;
        }

        public static ErrorCode fromValue(int i) {
            ErrorCode[] values;
            if (400 <= i && 500 > i) {
                return BAD_REQUEST;
            }
            if (200 < i && 300 > i) {
                return GENERIC_HTTP_2XX;
            }
            for (ErrorCode errorCode : values()) {
                if (errorCode.f32584a == i) {
                    return errorCode;
                }
            }
            return null;
        }

        public final int getValue() {
            return this.f32584a;
        }
    }

    public NetworkError(ErrorCode errorCode, String str) {
        this.f32582a = errorCode;
        this.f32583b = str;
    }
}

package net.pubnative.lite.sdk.vpaid.enums;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/enums/VastError.class */
public enum VastError {
    XML_PARSING(100),
    TRAFFICKING(200),
    WRAPPER(com.explorestack.iab.vast.VastError.ERROR_CODE_GENERAL_WRAPPER),
    WRAPPER_TIMEOUT(com.explorestack.iab.vast.VastError.ERROR_CODE_BAD_URI),
    WRAPPER_LIMIT(com.explorestack.iab.vast.VastError.ERROR_CODE_EXCEEDED_WRAPPER_LIMIT),
    WRAPPER_NO_VAST(com.explorestack.iab.vast.VastError.ERROR_CODE_WRAPPER_RESPONSE_NO_AD),
    FILE_NOT_FOUND(com.explorestack.iab.vast.VastError.ERROR_CODE_NO_FILE),
    TIMEOUT(402),
    MEDIA_FILE_NO_SUPPORTED_TYPE(com.explorestack.iab.vast.VastError.ERROR_CODE_BAD_FILE),
    MEDIA_FILE_UNSUPPORTED(com.explorestack.iab.vast.VastError.ERROR_CODE_ERROR_SHOWING),
    COMPANION(600),
    UNDEFINED(com.explorestack.iab.vast.VastError.ERROR_CODE_UNKNOWN),
    VPAID(901);
    
    private int value;

    VastError(int i) {
        this.value = i;
    }

    public final String getValue() {
        return String.valueOf(this.value);
    }
}

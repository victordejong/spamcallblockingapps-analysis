package com.google.ads;
/* loaded from: classes-dex2jar.jar:com/google/ads/AdRequest$ErrorCode.class */
public enum AdRequest$ErrorCode {
    INVALID_REQUEST("Invalid Ad request."),
    NO_FILL("Ad request successful, but no ad returned due to lack of ad inventory."),
    NETWORK_ERROR("A network error occurred."),
    INTERNAL_ERROR("There was an internal error.");
    
    public final String description;

    AdRequest$ErrorCode(String str) {
        this.description = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.description;
    }
}

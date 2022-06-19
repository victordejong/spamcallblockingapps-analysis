package com.monet.bidder;

import android.text.TextUtils;
/* renamed from: com.monet.bidder.b */
/* loaded from: classes4-dex2jar.jar:com/monet/bidder/b.class */
public enum EnumC16669b {
    NO_FILL("No ads found."),
    INTERNAL_ERROR("Unable to serve ad due to invalid internal state."),
    NETWORK_TIMEOUT("Third-party network failed to respond in a timely manner."),
    NETWORK_NO_FILL("Third-party network failed to provide an ad."),
    NETWORK_INVALID_STATE("Third-party network failed due to invalid internal state."),
    CUSTOM_BANNER_LOAD_ERROR("Custom Banner not found."),
    UNSPECIFIED("Unspecified error.");
    
    private final String message;

    EnumC16669b(String str) {
        this.message = str;
    }

    public static EnumC16669b parseHyBidException(Throwable th) {
        if (th != null && !TextUtils.isEmpty(th.getMessage())) {
            if (th.getMessage().contains("HyBid - No fill")) {
                return NO_FILL;
            }
            if (th.getMessage().contains("HyBid - Server error") || th.getMessage().contains("PNApiClient - Parse error")) {
                return INTERNAL_ERROR;
            }
        }
        return UNSPECIFIED;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.message;
    }
}

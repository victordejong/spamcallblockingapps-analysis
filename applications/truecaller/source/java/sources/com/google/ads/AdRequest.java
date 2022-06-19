package com.google.ads;

import androidx.annotation.RecentlyNonNull;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/ads/AdRequest.class */
public final class AdRequest {
    @RecentlyNonNull
    public static final String LOGTAG = "Ads";
    @RecentlyNonNull
    public static final String TEST_EMULATOR = "B3EEABB8EE11C2BE770B684D95219ECB";
    @RecentlyNonNull
    public static final String VERSION = "0.0.0";

    /* loaded from: classes2-dex2jar.jar:com/google/ads/AdRequest$ErrorCode.class */
    public enum ErrorCode {
        INVALID_REQUEST("Invalid Ad request."),
        NO_FILL("Ad request successful, but no ad returned due to lack of ad inventory."),
        NETWORK_ERROR("A network error occurred."),
        INTERNAL_ERROR("There was an internal error.");
        

        /* renamed from: a */
        public final String f4824a;

        ErrorCode(String str) {
            this.f4824a = str;
        }

        @Override // java.lang.Enum
        @RecentlyNonNull
        public String toString() {
            return this.f4824a;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/ads/AdRequest$Gender.class */
    public enum Gender {
        UNKNOWN,
        MALE,
        FEMALE
    }
}

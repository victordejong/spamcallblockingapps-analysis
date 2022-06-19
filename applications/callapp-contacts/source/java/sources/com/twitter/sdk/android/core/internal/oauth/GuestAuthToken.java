package com.twitter.sdk.android.core.internal.oauth;

import com.google.gson.annotations.AbstractC15952b;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/oauth/GuestAuthToken.class */
public class GuestAuthToken extends OAuth2Token {
    private static final long EXPIRES_IN_MS = 10800000;
    public static final String HEADER_GUEST_TOKEN = "x-guest-token";
    @AbstractC15952b(m7988a = "guest_token")
    private final String guestToken;

    public GuestAuthToken(String str, String str2, String str3) {
        super(str, str2);
        this.guestToken = str3;
    }

    public GuestAuthToken(String str, String str2, String str3, long j) {
        super(str, str2, j);
        this.guestToken = str3;
    }

    @Override // com.twitter.sdk.android.core.internal.oauth.OAuth2Token
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        String str = this.guestToken;
        String str2 = ((GuestAuthToken) obj).guestToken;
        return str != null ? str.equals(str2) : str2 == null;
    }

    public String getGuestToken() {
        return this.guestToken;
    }

    @Override // com.twitter.sdk.android.core.internal.oauth.OAuth2Token
    public int hashCode() {
        int hashCode = super.hashCode();
        String str = this.guestToken;
        return (hashCode * 31) + (str != null ? str.hashCode() : 0);
    }

    @Override // com.twitter.sdk.android.core.internal.oauth.OAuth2Token, com.twitter.sdk.android.core.AbstractC17205a
    public boolean isExpired() {
        return System.currentTimeMillis() >= this.createdAt + EXPIRES_IN_MS;
    }
}

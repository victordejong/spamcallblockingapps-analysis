package com.firstorion.libcyd;
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/TokenRefreshResult.class */
public final class TokenRefreshResult {
    public static final String ACTION = "cyd:token_refresh:result";
    public static final String EXTRA_FAILURE_REASON = "cyd:token_refresh:result:status:failure:reason";
    public static final String EXTRA_STATUS = "cyd:token_refresh:result:status";
    public static final String FAILURE_REASON_NOT_VERIFIED = "not_verified";
    public static final String STATUS_FAILURE = "failure";
    public static final String STATUS_SUCCESS = "success";

    private TokenRefreshResult() {
    }
}

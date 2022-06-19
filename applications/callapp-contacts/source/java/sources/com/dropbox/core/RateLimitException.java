package com.dropbox.core;

import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/RateLimitException.class */
public class RateLimitException extends RetryException {
    public RateLimitException(String str, String str2, long j, TimeUnit timeUnit) {
        super(str, str2, j, timeUnit);
    }
}

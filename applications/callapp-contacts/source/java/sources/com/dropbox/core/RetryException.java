package com.dropbox.core;

import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/RetryException.class */
public class RetryException extends DbxException {

    /* renamed from: a */
    public final long f30447a;

    public RetryException(String str, String str2) {
        this(str, str2, 0L, TimeUnit.MILLISECONDS);
    }

    public RetryException(String str, String str2, long j, TimeUnit timeUnit) {
        super(str, str2);
        this.f30447a = timeUnit.toMillis(j);
    }
}

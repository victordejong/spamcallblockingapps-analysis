package com.bumptech.glide.load;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/HttpException.class */
public final class HttpException extends IOException {

    /* renamed from: a */
    private final int f13800a;

    public HttpException(int i) {
        this("Http request failed", i);
    }

    @Deprecated
    public HttpException(String str) {
        this(str, -1);
    }

    public HttpException(String str, int i) {
        this(str, i, null);
    }

    public HttpException(String str, int i, Throwable th) {
        super(str + ", status code: " + i, th);
        this.f13800a = i;
    }
}

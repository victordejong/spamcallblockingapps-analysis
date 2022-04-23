package org.jsoup;

import java.io.IOException;
/* loaded from: classes5-dex2jar.jar:org/jsoup/HttpStatusException.class */
public class HttpStatusException extends IOException {

    /* renamed from: a  reason: collision with root package name */
    private int f39194a;

    /* renamed from: b  reason: collision with root package name */
    private String f39195b;

    public HttpStatusException(String str, int i, String str2) {
        super(str);
        this.f39194a = i;
        this.f39195b = str2;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return super.toString() + ". Status=" + this.f39194a + ", URL=" + this.f39195b;
    }
}

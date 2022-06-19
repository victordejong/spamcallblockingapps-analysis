package org.jsoup;

import java.io.IOException;
/* loaded from: classes5-dex2jar.jar:org/jsoup/HttpStatusException.class */
public class HttpStatusException extends IOException {

    /* renamed from: a */
    private int f67284a;

    /* renamed from: b */
    private String f67285b;

    public HttpStatusException(String str, int i, String str2) {
        super(str);
        this.f67284a = i;
        this.f67285b = str2;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return super.toString() + ". Status=" + this.f67284a + ", URL=" + this.f67285b;
    }
}

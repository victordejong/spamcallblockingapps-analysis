package org.jsoup;

import java.io.IOException;
/* loaded from: classes5-dex2jar.jar:org/jsoup/UnsupportedMimeTypeException.class */
public class UnsupportedMimeTypeException extends IOException {

    /* renamed from: a  reason: collision with root package name */
    private String f39196a;

    /* renamed from: b  reason: collision with root package name */
    private String f39197b;

    public UnsupportedMimeTypeException(String str, String str2, String str3) {
        super(str);
        this.f39196a = str2;
        this.f39197b = str3;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return super.toString() + ". Mimetype=" + this.f39196a + ", URL=" + this.f39197b;
    }
}

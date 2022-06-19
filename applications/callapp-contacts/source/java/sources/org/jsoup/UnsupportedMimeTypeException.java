package org.jsoup;

import java.io.IOException;
/* loaded from: classes5-dex2jar.jar:org/jsoup/UnsupportedMimeTypeException.class */
public class UnsupportedMimeTypeException extends IOException {

    /* renamed from: a */
    private String f67286a;

    /* renamed from: b */
    private String f67287b;

    public UnsupportedMimeTypeException(String str, String str2, String str3) {
        super(str);
        this.f67286a = str2;
        this.f67287b = str3;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return super.toString() + ". Mimetype=" + this.f67286a + ", URL=" + this.f67287b;
    }
}

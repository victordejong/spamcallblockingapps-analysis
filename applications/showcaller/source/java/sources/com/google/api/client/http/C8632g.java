package com.google.api.client.http;

import com.google.api.client.util.C8731w;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
/* renamed from: com.google.api.client.http.g */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/g.class */
public final class C8632g extends AbstractC8616b {

    /* renamed from: c */
    private final File f38329c;

    public C8632g(String str, File file) {
        super(str);
        this.f38329c = (File) C8731w.m2836d(file);
    }

    @Override // com.google.api.client.http.AbstractC8646j
    /* renamed from: b */
    public boolean mo3048b() {
        return true;
    }

    @Override // com.google.api.client.http.AbstractC8616b
    /* renamed from: d */
    public InputStream mo3047d() {
        return new FileInputStream(this.f38329c);
    }

    /* renamed from: g */
    public C8632g mo3046f(String str) {
        return (C8632g) super.mo3046f(str);
    }

    @Override // com.google.api.client.http.AbstractC8646j
    public long getLength() {
        return this.f38329c.length();
    }
}

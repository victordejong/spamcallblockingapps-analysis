package com.google.api.client.http;

import com.google.common.base.m;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/g.class */
public final class g extends b {

    /* renamed from: a  reason: collision with root package name */
    private final File f31804a;

    public g(String str, File file) {
        super(str);
        this.f31804a = (File) m.a(file);
    }

    @Override // com.google.api.client.http.b
    public final /* bridge */ /* synthetic */ b a(String str) {
        return (g) super.a(str);
    }

    @Override // com.google.api.client.http.b
    public final /* bridge */ /* synthetic */ b a(boolean z) {
        return (g) super.a(z);
    }

    @Override // com.google.api.client.http.b
    public final InputStream a() throws FileNotFoundException {
        return new FileInputStream(this.f31804a);
    }

    @Override // com.google.api.client.http.j
    public final long getLength() {
        return this.f31804a.length();
    }

    @Override // com.google.api.client.http.j
    public final boolean retrySupported() {
        return true;
    }
}

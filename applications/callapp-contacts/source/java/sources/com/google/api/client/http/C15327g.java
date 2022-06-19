package com.google.api.client.http;

import com.google.common.base.C15391m;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
/* renamed from: com.google.api.client.http.g */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/g.class */
public final class C15327g extends AbstractC15322b {

    /* renamed from: a */
    private final File f55330a;

    public C15327g(String str, File file) {
        super(str);
        this.f55330a = (File) C15391m.m8946a(file);
    }

    @Override // com.google.api.client.http.AbstractC15322b
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC15322b mo9000a(String str) {
        return (C15327g) super.mo9000a(str);
    }

    @Override // com.google.api.client.http.AbstractC15322b
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC15322b mo8999a(boolean z) {
        return (C15327g) super.mo8999a(z);
    }

    @Override // com.google.api.client.http.AbstractC15322b
    /* renamed from: a */
    public final InputStream mo9002a() throws FileNotFoundException {
        return new FileInputStream(this.f55330a);
    }

    @Override // com.google.api.client.http.AbstractC15331j
    public final long getLength() {
        return this.f55330a.length();
    }

    @Override // com.google.api.client.http.AbstractC15331j
    public final boolean retrySupported() {
        return true;
    }
}

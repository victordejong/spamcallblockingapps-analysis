package com.google.api.client.p379a;

import java.io.IOException;
import java.io.OutputStream;
/* renamed from: com.google.api.client.a.e */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/e.class */
final class C15224e extends OutputStream {

    /* renamed from: a */
    long f55065a;

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        this.f55065a++;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        this.f55065a += i2;
    }
}

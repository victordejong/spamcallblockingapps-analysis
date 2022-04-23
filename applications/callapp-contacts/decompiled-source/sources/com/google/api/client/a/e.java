package com.google.api.client.a;

import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/e.class */
final class e extends OutputStream {

    /* renamed from: a  reason: collision with root package name */
    long f31615a;

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        this.f31615a++;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        this.f31615a += i2;
    }
}

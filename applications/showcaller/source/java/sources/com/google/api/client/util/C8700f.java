package com.google.api.client.util;

import java.io.OutputStream;
/* renamed from: com.google.api.client.util.f */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/util/f.class */
final class C8700f extends OutputStream {

    /* renamed from: d */
    long f38494d;

    @Override // java.io.OutputStream
    public void write(int i) {
        this.f38494d++;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        this.f38494d += i2;
    }
}

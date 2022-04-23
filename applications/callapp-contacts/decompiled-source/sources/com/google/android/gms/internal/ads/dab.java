package com.google.android.gms.internal.ads;

import java.io.OutputStream;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dab.class */
final class dab extends OutputStream {
    public final String toString() {
        return "ByteStreams.nullOutputStream()";
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        cyg.a(bArr);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        cyg.a(bArr);
    }
}

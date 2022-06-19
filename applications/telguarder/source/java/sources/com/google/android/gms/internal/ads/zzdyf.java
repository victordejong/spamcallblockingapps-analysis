package com.google.android.gms.internal.ads;

import java.io.OutputStream;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyf.class */
final class zzdyf extends OutputStream {
    public final String toString() {
        return "ByteStreams.nullOutputStream()";
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        zzdwl.checkNotNull(bArr);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        zzdwl.checkNotNull(bArr);
    }
}

package com.google.android.gms.internal.d;

import java.io.OutputStream;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/d/e.class */
final class e extends OutputStream {
    public final String toString() {
        return "ByteStreams.nullOutputStream()";
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        Objects.requireNonNull(bArr);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        Objects.requireNonNull(bArr);
    }
}

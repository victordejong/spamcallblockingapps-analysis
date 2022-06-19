package com.google.android.gms.internal.firebase_messaging;

import java.io.OutputStream;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/firebase_messaging/zzj.class */
public final class zzj extends OutputStream {
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

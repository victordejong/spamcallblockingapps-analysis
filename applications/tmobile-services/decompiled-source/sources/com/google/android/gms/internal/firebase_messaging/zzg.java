package com.google.android.gms.internal.firebase_messaging;

import java.io.OutputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_messaging/zzg.class */
final class zzg extends OutputStream {
    public final String toString() {
        return "ByteStreams.nullOutputStream()";
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        zze.m14081a(bArr);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        zze.m14081a(bArr);
    }
}

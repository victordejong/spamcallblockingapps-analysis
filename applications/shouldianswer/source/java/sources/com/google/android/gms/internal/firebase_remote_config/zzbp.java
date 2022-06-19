package com.google.android.gms.internal.firebase_remote_config;

import java.io.OutputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzbp.class */
final class zzbp extends OutputStream {
    long zzel;

    @Override // java.io.OutputStream
    public final void write(int i) {
        this.zzel++;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        this.zzel += i2;
    }
}

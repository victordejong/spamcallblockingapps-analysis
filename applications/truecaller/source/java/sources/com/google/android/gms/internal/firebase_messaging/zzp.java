package com.google.android.gms.internal.firebase_messaging;

import java.io.OutputStream;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/firebase_messaging/zzp.class */
public final class zzp extends OutputStream {
    private long zza = 0;

    @Override // java.io.OutputStream
    public final void write(int i) {
        this.zza++;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        this.zza += bArr.length;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        int length;
        int i3;
        if (i < 0 || i > (length = bArr.length) || i2 < 0 || (i3 = i + i2) > length || i3 < 0) {
            throw new IndexOutOfBoundsException();
        }
        this.zza += i2;
    }

    public final long zza() {
        return this.zza;
    }
}

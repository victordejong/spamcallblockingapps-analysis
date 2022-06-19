package com.google.android.gms.internal.firebase_remote_config;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzq.class */
final class zzq extends BufferedOutputStream {
    public zzq(zzr zzrVar, OutputStream outputStream) {
        super(outputStream);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            flush();
        } catch (IOException e) {
        }
    }
}

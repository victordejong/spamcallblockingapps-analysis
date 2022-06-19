package com.google.android.gms.internal.firebase_remote_config;

import java.io.OutputStream;
import java.util.zip.GZIPOutputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzr.class */
public final class zzr implements zzv {
    @Override // com.google.android.gms.internal.firebase_remote_config.zzv
    public final String getName() {
        return "gzip";
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzv
    public final void zza(zzcm zzcmVar, OutputStream outputStream) {
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(new zzq(this, outputStream));
        zzcmVar.writeTo(gZIPOutputStream);
        gZIPOutputStream.close();
    }
}

package com.google.android.gms.internal.firebase_remote_config;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzaw.class */
public abstract class zzaw {
    private final String zza(Object obj, boolean z) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        zzaz zza = zza(byteArrayOutputStream, zzbo.UTF_8);
        if (z) {
            zza.zzax();
        }
        zza.zzd(obj);
        zza.flush();
        return byteArrayOutputStream.toString("UTF-8");
    }

    public final String toString(Object obj) {
        return zza(obj, false);
    }

    public abstract zzaz zza(OutputStream outputStream, Charset charset);

    public abstract zzba zza(InputStream inputStream);

    public abstract zzba zza(InputStream inputStream, Charset charset);

    public abstract zzba zzac(String str);

    public final String zzc(Object obj) {
        return zza(obj, true);
    }
}

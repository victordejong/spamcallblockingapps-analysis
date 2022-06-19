package com.google.android.gms.internal.firebase_remote_config;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringReader;
import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzbf.class */
public final class zzbf extends zzaw {
    private final zzba zza(Reader reader) {
        return new zzbk(this, new zzfj(reader));
    }

    public static zzbf zzbq() {
        return zzbi.zzdw;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzaw
    public final zzaz zza(OutputStream outputStream, Charset charset) {
        return new zzbh(this, new zzfo(new OutputStreamWriter(outputStream, charset)));
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzaw
    public final zzba zza(InputStream inputStream) {
        return zza(new InputStreamReader(inputStream, zzbo.UTF_8));
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzaw
    public final zzba zza(InputStream inputStream, Charset charset) {
        return charset == null ? zza(inputStream) : zza(new InputStreamReader(inputStream, charset));
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzaw
    public final zzba zzac(String str) {
        return zza(new StringReader(str));
    }
}

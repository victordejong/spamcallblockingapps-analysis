package com.google.android.gms.internal.ads;

import androidx.recyclerview.widget.C0608b;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaid.class */
public final class zzaid extends zzgpc {
    private static final zzgpj zza = zzgpj.zzb(zzaid.class);

    public zzaid(zzgpd zzgpdVar, zzaic zzaicVar) throws IOException {
        zzf(zzgpdVar, zzgpdVar.zzc(), zzaicVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgpc, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
    }

    @Override // com.google.android.gms.internal.ads.zzgpc
    public final String toString() {
        String obj = this.zzd.toString();
        return C0608b.m7625j(new StringBuilder(String.valueOf(obj).length() + 7), "model(", obj, ")");
    }
}

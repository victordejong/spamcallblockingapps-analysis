package com.google.android.gms.internal.firebase_remote_config;

import java.io.OutputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzu.class */
public final class zzu implements zzcm {
    private final zzcm zzan;
    private final zzv zzao;

    public zzu(zzcm zzcmVar, zzv zzvVar) {
        this.zzan = (zzcm) zzdt.checkNotNull(zzcmVar);
        this.zzao = (zzv) zzdt.checkNotNull(zzvVar);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzcm
    public final void writeTo(OutputStream outputStream) {
        this.zzao.zza(this.zzan, outputStream);
    }
}

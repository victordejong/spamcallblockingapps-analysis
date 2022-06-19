package com.google.android.gms.internal.firebase_remote_config;

import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzcg.class */
public final class zzcg implements zzcm {
    private final Logger logger;
    private final zzcm zzan;
    private final int zzbf;
    private final Level zzgd;

    public zzcg(zzcm zzcmVar, Logger logger, Level level, int i) {
        this.zzan = zzcmVar;
        this.logger = logger;
        this.zzgd = level;
        this.zzbf = i;
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.google.android.gms.internal.firebase_remote_config.zzcm
    public final void writeTo(OutputStream outputStream) {
        zzcd zzcdVar = new zzcd(outputStream, this.logger, this.zzgd, this.zzbf);
        try {
            this.zzan.writeTo(zzcdVar);
            zzcdVar.zzcc().close();
            outputStream.flush();
        } catch (Throwable th) {
            zzcdVar.zzcc().close();
            throw th;
        }
    }
}

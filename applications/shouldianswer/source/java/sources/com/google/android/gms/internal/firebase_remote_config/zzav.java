package com.google.android.gms.internal.firebase_remote_config;

import java.io.OutputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzav.class */
public final class zzav extends zzp {
    private final Object data;
    private final zzaw zzda;
    private String zzdb;

    public zzav(zzaw zzawVar, Object obj) {
        super("application/json; charset=UTF-8");
        this.zzda = (zzaw) zzdt.checkNotNull(zzawVar);
        this.data = zzdt.checkNotNull(obj);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzcm
    public final void writeTo(OutputStream outputStream) {
        zzaz zza = this.zzda.zza(outputStream, zzo());
        if (this.zzdb != null) {
            zza.zzau();
            zza.zzad(this.zzdb);
        }
        zza.zzd(this.data);
        if (this.zzdb != null) {
            zza.zzav();
        }
        zza.flush();
    }

    public final zzav zzab(String str) {
        this.zzdb = str;
        return this;
    }
}

package com.google.android.gms.internal.firebase_remote_config;

import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzp.class */
public abstract class zzp implements zzs {
    private zzy zzag;
    private long zzah;

    private zzp(zzy zzyVar) {
        this.zzah = -1L;
        this.zzag = zzyVar;
    }

    public zzp(String str) {
        this(str == null ? null : new zzy(str));
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzs
    public final long getLength() {
        if (this.zzah == -1) {
            this.zzah = zzca.zzb(this);
        }
        return this.zzah;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzs
    public final String getType() {
        zzy zzyVar = this.zzag;
        if (zzyVar == null) {
            return null;
        }
        return zzyVar.zzp();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzs
    public final boolean zzn() {
        return true;
    }

    public final Charset zzo() {
        zzy zzyVar = this.zzag;
        return (zzyVar == null || zzyVar.zzr() == null) ? zzbo.UTF_8 : this.zzag.zzr();
    }
}

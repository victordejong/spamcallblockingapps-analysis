package com.google.android.gms.internal.firebase_remote_config;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzae.class */
public final class zzae {
    String message;
    int statusCode;
    zzw zzbc;
    String zzbv;
    String zzby;

    public zzae(int i, String str, zzw zzwVar) {
        if (i >= 0) {
            this.statusCode = i;
            this.zzbv = str;
            this.zzbc = (zzw) zzdt.checkNotNull(zzwVar);
            return;
        }
        throw new IllegalArgumentException();
    }

    public zzae(zzac zzacVar) {
        this(zzacVar.getStatusCode(), zzacVar.getStatusMessage(), zzacVar.zzx());
        try {
            this.zzby = zzacVar.zzae();
            if (this.zzby.length() == 0) {
                this.zzby = null;
            }
        } catch (IOException e) {
            zzea.zza(e);
        }
        StringBuilder zzc = zzaf.zzc(zzacVar);
        if (this.zzby != null) {
            zzc.append(zzcl.zzgg);
            zzc.append(this.zzby);
        }
        this.message = zzc.toString();
    }

    public final zzae zzx(String str) {
        this.message = str;
        return this;
    }

    public final zzae zzy(String str) {
        this.zzby = str;
        return this;
    }
}

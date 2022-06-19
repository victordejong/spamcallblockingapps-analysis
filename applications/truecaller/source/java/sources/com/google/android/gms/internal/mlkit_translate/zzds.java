package com.google.android.gms.internal.mlkit_translate;

import java.io.IOException;
import java.io.StringWriter;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzds.class */
public class zzds {
    public String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            zzgd zzgdVar = new zzgd(stringWriter);
            zzgdVar.zza(true);
            zzeo.zza.zza(zzgdVar, this);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    public final zzdx zza() {
        if (this instanceof zzdx) {
            return (zzdx) this;
        }
        throw new IllegalStateException("Not a JSON Object: " + this);
    }

    public boolean zzb() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public Boolean zzc() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public Number zzd() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String zze() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public long zzf() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }
}

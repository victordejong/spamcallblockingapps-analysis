package com.google.android.gms.internal.firebase_remote_config;

import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzay.class */
public final class zzay implements zzci {
    private final zzaw zzda;
    private final Set<String> zzdc;

    public zzay(zzbb zzbbVar) {
        this.zzda = zzbbVar.zzda;
        this.zzdc = new HashSet(zzbbVar.zzdf);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzci
    public final <T> T zza(InputStream inputStream, Charset charset, Class<T> cls) {
        zzba zza = this.zzda.zza(inputStream, charset);
        if (!this.zzdc.isEmpty()) {
            try {
                boolean z = (zza.zza(this.zzdc) == null || zza.zzba() == zzbg.END_OBJECT) ? false : true;
                Set<String> set = this.zzdc;
                if (!z) {
                    throw new IllegalArgumentException(zzdy.zza("wrapper key(s) not found: %s", set));
                }
            } catch (Throwable th) {
                zza.close();
                throw th;
            }
        }
        return (T) zza.zza(cls, true, null);
    }

    public final Set<String> zzar() {
        return Collections.unmodifiableSet(this.zzdc);
    }

    public final zzaw zzl() {
        return this.zzda;
    }
}

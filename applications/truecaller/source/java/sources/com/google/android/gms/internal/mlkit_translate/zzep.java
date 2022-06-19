package com.google.android.gms.internal.mlkit_translate;

import java.io.EOFException;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzep.class */
public final class zzep {
    public static zzds zza(zzfy zzfyVar) throws zzdw {
        boolean z;
        EOFException e;
        try {
            try {
                zzfyVar.zzg();
                z = false;
                try {
                    return zzeo.zza.zza(zzfyVar);
                } catch (EOFException e2) {
                    e = e2;
                    if (!z) {
                        throw new zzeb(e);
                    }
                    return zzdu.zza;
                }
            } catch (EOFException e3) {
                e = e3;
                z = true;
            }
        } catch (zzgc e4) {
            throw new zzeb(e4);
        } catch (IOException e5) {
            throw new zzdv(e5);
        } catch (NumberFormatException e6) {
            throw new zzeb(e6);
        }
    }
}

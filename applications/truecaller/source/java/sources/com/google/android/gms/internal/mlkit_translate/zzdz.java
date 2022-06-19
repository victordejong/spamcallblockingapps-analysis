package com.google.android.gms.internal.mlkit_translate;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzdz.class */
public final class zzdz {
    private static zzds zza(zzfy zzfyVar) throws zzdv, zzeb {
        boolean zza = zzfyVar.zza();
        zzfyVar.zza(true);
        try {
            try {
                zzds zza2 = zzep.zza(zzfyVar);
                zzfyVar.zza(zza);
                return zza2;
            } catch (OutOfMemoryError e) {
                throw new zzdw("Failed parsing JSON source: " + zzfyVar + " to Json", e);
            } catch (StackOverflowError e2) {
                throw new zzdw("Failed parsing JSON source: " + zzfyVar + " to Json", e2);
            }
        } catch (Throwable th) {
            zzfyVar.zza(zza);
            throw th;
        }
    }

    private static zzds zza(Reader reader) throws zzdv, zzeb {
        try {
            zzfy zzfyVar = new zzfy(reader);
            zzds zza = zza(zzfyVar);
            if (!(zza instanceof zzdu) && zzfyVar.zzg() != zzga.END_DOCUMENT) {
                throw new zzeb("Did not consume the entire document.");
            }
            return zza;
        } catch (zzgc e) {
            throw new zzeb(e);
        } catch (IOException e2) {
            throw new zzdv(e2);
        } catch (NumberFormatException e3) {
            throw new zzeb(e3);
        }
    }

    public static zzds zza(String str) throws zzeb {
        return zza(new StringReader(str));
    }
}

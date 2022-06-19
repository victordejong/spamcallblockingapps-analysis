package com.google.android.gms.internal.mlkit_translate;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzfw.class */
public final class zzfw extends zzea<AtomicInteger> {
    private static AtomicInteger zzb(zzfy zzfyVar) throws IOException {
        try {
            return new AtomicInteger(zzfyVar.zzn());
        } catch (NumberFormatException e) {
            throw new zzeb(e);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ AtomicInteger zza(zzfy zzfyVar) throws IOException {
        return zzb(zzfyVar);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ void zza(zzgd zzgdVar, AtomicInteger atomicInteger) throws IOException {
        zzgdVar.zza(atomicInteger.get());
    }
}

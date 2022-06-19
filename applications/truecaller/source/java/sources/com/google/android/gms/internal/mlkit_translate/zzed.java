package com.google.android.gms.internal.mlkit_translate;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzed.class */
public final class zzed extends zzea<T> {
    private final /* synthetic */ zzea zza;

    public zzed(zzea zzeaVar) {
        this.zza = zzeaVar;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final T zza(zzfy zzfyVar) throws IOException {
        if (zzfyVar.zzg() == zzga.NULL) {
            zzfyVar.zzk();
            return null;
        }
        return this.zza.zza(zzfyVar);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final void zza(zzgd zzgdVar, T t) throws IOException {
        if (t == 0) {
            zzgdVar.zze();
        } else {
            this.zza.zza(zzgdVar, t);
        }
    }
}

package com.google.android.gms.internal.mlkit_translate;

import java.io.IOException;
import java.util.UUID;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzfh.class */
public final class zzfh extends zzea<UUID> {
    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ UUID zza(zzfy zzfyVar) throws IOException {
        if (zzfyVar.zzg() == zzga.NULL) {
            zzfyVar.zzk();
            return null;
        }
        return UUID.fromString(zzfyVar.zzi());
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ void zza(zzgd zzgdVar, UUID uuid) throws IOException {
        UUID uuid2 = uuid;
        zzgdVar.zzb(uuid2 == null ? null : uuid2.toString());
    }
}

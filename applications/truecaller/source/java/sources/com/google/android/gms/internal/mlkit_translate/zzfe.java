package com.google.android.gms.internal.mlkit_translate;

import java.io.IOException;
import java.net.InetAddress;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzfe.class */
public final class zzfe extends zzea<InetAddress> {
    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ InetAddress zza(zzfy zzfyVar) throws IOException {
        if (zzfyVar.zzg() == zzga.NULL) {
            zzfyVar.zzk();
            return null;
        }
        return InetAddress.getByName(zzfyVar.zzi());
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ void zza(zzgd zzgdVar, InetAddress inetAddress) throws IOException {
        InetAddress inetAddress2 = inetAddress;
        zzgdVar.zzb(inetAddress2 == null ? null : inetAddress2.getHostAddress());
    }
}

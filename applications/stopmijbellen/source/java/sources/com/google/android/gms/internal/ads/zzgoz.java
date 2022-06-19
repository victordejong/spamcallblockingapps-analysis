package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgoz.class */
public class zzgoz extends zzgpc implements zzaif {
    public zzaig zza;
    public final String zzb = "moov";

    public zzgoz(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final String zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zzb(zzgpd zzgpdVar, ByteBuffer byteBuffer, long j, zzaic zzaicVar) throws IOException {
        zzgpdVar.zzb();
        byteBuffer.remaining();
        byteBuffer.remaining();
        this.zzd = zzgpdVar;
        this.zzf = zzgpdVar.zzb();
        zzgpdVar.zze(zzgpdVar.zzb() + j);
        this.zzg = zzgpdVar.zzb();
        this.zzc = zzaicVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zzc(zzaig zzaigVar) {
        this.zza = zzaigVar;
    }
}

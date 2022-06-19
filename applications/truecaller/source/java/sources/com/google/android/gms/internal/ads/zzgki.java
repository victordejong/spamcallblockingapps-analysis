package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgki.class */
public class zzgki extends zzgkl implements zzxp {
    public zzxq zza;
    public final String zzb = "moov";

    public zzgki(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final void zza(zzxq zzxqVar) {
        this.zza = zzxqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final String zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final void zzc(zzgkm zzgkmVar, ByteBuffer byteBuffer, long j, zzxm zzxmVar) throws IOException {
        zzgkmVar.zzc();
        byteBuffer.remaining();
        byteBuffer.remaining();
        this.zzd = zzgkmVar;
        this.zzf = zzgkmVar.zzc();
        zzgkmVar.zzd(zzgkmVar.zzc() + j);
        this.zzg = zzgkmVar.zzc();
        this.zzc = zzxmVar;
    }
}

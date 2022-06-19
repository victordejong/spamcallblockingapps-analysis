package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzje.class */
public final class zzje implements zziz {
    private final /* synthetic */ zzjc zzamw;

    /* JADX INFO: Access modifiers changed from: private */
    public zzje(zzjc zzjcVar) {
        this.zzamw = zzjcVar;
    }

    @Override // com.google.android.gms.internal.ads.zziz
    public final void zzc(int i, long j, long j2) {
        zzik zzikVar;
        zzikVar = this.zzamw.zzamm;
        zzikVar.zza(i, j, j2);
        zzjc.zzb(i, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zziz
    public final void zzek() {
        zzjc.zzgd();
        this.zzamw.zzams = true;
    }

    @Override // com.google.android.gms.internal.ads.zziz
    public final void zzx(int i) {
        zzik zzikVar;
        zzikVar = this.zzamw.zzamm;
        zzikVar.zzw(i);
        zzjc.zzx(i);
    }
}

package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzlb.class */
final class zzlb implements zzkz {
    private final zzpn zzawt;
    private final int zzaxb;
    private final int zzaxc;

    public zzlb(zzky zzkyVar) {
        zzpn zzpnVar = zzkyVar.zzawt;
        this.zzawt = zzpnVar;
        zzpnVar.zzbi(12);
        this.zzaxb = zzpnVar.zzja();
        this.zzaxc = zzpnVar.zzja();
    }

    @Override // com.google.android.gms.internal.ads.zzkz
    public final int zzgx() {
        return this.zzaxc;
    }

    @Override // com.google.android.gms.internal.ads.zzkz
    public final int zzgy() {
        int i = this.zzaxb;
        int i2 = i;
        if (i == 0) {
            i2 = this.zzawt.zzja();
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.zzkz
    public final boolean zzgz() {
        return this.zzaxb != 0;
    }
}

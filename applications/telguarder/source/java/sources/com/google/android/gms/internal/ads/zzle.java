package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzle.class */
final class zzle implements zzkz {
    private final zzpn zzawt;
    private final int zzaxc;
    private final int zzaxf;
    private int zzaxg;
    private int zzaxh;

    public zzle(zzky zzkyVar) {
        zzpn zzpnVar = zzkyVar.zzawt;
        this.zzawt = zzpnVar;
        zzpnVar.zzbi(12);
        this.zzaxf = zzpnVar.zzja() & 255;
        this.zzaxc = zzpnVar.zzja();
    }

    @Override // com.google.android.gms.internal.ads.zzkz
    public final int zzgx() {
        return this.zzaxc;
    }

    @Override // com.google.android.gms.internal.ads.zzkz
    public final int zzgy() {
        int i = this.zzaxf;
        if (i == 8) {
            return this.zzawt.readUnsignedByte();
        }
        if (i == 16) {
            return this.zzawt.readUnsignedShort();
        }
        int i2 = this.zzaxg;
        this.zzaxg = i2 + 1;
        if (i2 % 2 != 0) {
            return this.zzaxh & 15;
        }
        int readUnsignedByte = this.zzawt.readUnsignedByte();
        this.zzaxh = readUnsignedByte;
        return (readUnsignedByte & 240) >> 4;
    }

    @Override // com.google.android.gms.internal.ads.zzkz
    public final boolean zzgz() {
        return false;
    }
}

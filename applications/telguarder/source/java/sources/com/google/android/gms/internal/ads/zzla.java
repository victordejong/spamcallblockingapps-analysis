package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzla.class */
final class zzla {
    public int index;
    public final int length;
    public int zzawu;
    public long zzawv;
    private final boolean zzaww;
    private final zzpn zzawx;
    private final zzpn zzawy;
    private int zzawz;
    private int zzaxa;

    public zzla(zzpn zzpnVar, zzpn zzpnVar2, boolean z) {
        this.zzawy = zzpnVar;
        this.zzawx = zzpnVar2;
        this.zzaww = z;
        zzpnVar2.zzbi(12);
        this.length = zzpnVar2.zzja();
        zzpnVar.zzbi(12);
        this.zzaxa = zzpnVar.zzja();
        zzpg.checkState(zzpnVar.readInt() != 1 ? false : true, "first_chunk must be 1");
        this.index = -1;
    }

    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    public final boolean zzha() {
        int i = this.index + 1;
        this.index = i;
        if (i == this.length) {
            return false;
        }
        this.zzawv = this.zzaww ? this.zzawx.zzjb() : this.zzawx.zzix();
        if (this.index != this.zzawz) {
            return true;
        }
        this.zzawu = this.zzawy.zzja();
        this.zzawy.zzbj(4);
        int i2 = this.zzaxa - 1;
        this.zzaxa = i2;
        this.zzawz = i2 > 0 ? this.zzawy.zzja() - 1 : -1;
        return true;
    }
}

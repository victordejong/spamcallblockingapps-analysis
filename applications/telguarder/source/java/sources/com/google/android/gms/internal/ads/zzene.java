package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzene.class */
public final class zzene implements zzemm {
    private final int flags;
    private final String info;
    private final Object[] zziss;
    private final zzemo zzisv;

    public zzene(zzemo zzemoVar, String str, Object[] objArr) {
        this.zzisv = zzemoVar;
        this.info = str;
        this.zziss = objArr;
        int charAt = str.charAt(0);
        if (charAt < 55296) {
            this.flags = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int charAt2 = str.charAt(i3);
            if (charAt2 < 55296) {
                this.flags = i | (charAt2 << i2);
                return;
            }
            i |= (charAt2 & 8191) << i2;
            i3++;
            i2 += 13;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzemm
    public final int zzbjy() {
        return (this.flags & 1) == 1 ? zzemz.zzitk : zzemz.zzitl;
    }

    @Override // com.google.android.gms.internal.ads.zzemm
    public final boolean zzbjz() {
        return (this.flags & 2) == 2;
    }

    @Override // com.google.android.gms.internal.ads.zzemm
    public final zzemo zzbka() {
        return this.zzisv;
    }

    public final String zzbkg() {
        return this.info;
    }

    public final Object[] zzbkh() {
        return this.zziss;
    }
}

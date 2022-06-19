package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzekb.class */
public class zzekb extends zzejy {
    protected final byte[] zzimk;

    public zzekb(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.zzimk = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzejr
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzejr) || size() != ((zzejr) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof zzekb)) {
            return obj.equals(this);
        }
        zzekb zzekbVar = (zzekb) obj;
        int zzbgo = zzbgo();
        int zzbgo2 = zzekbVar.zzbgo();
        if (zzbgo != 0 && zzbgo2 != 0 && zzbgo != zzbgo2) {
            return false;
        }
        return zza(zzekbVar, 0, size());
    }

    @Override // com.google.android.gms.internal.ads.zzejr
    public int size() {
        return this.zzimk.length;
    }

    @Override // com.google.android.gms.internal.ads.zzejr
    protected final String zza(Charset charset) {
        return new String(this.zzimk, zzbgp(), size(), charset);
    }

    @Override // com.google.android.gms.internal.ads.zzejr
    public final void zza(zzejo zzejoVar) throws IOException {
        zzejoVar.zzh(this.zzimk, zzbgp(), size());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzejy
    public final boolean zza(zzejr zzejrVar, int i, int i2) {
        if (i2 > zzejrVar.size()) {
            int size = size();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(size);
            throw new IllegalArgumentException(sb.toString());
        }
        int i3 = i + i2;
        if (i3 > zzejrVar.size()) {
            int size2 = zzejrVar.size();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(size2);
            throw new IllegalArgumentException(sb2.toString());
        } else if (!(zzejrVar instanceof zzekb)) {
            return zzejrVar.zzaa(i, i3).equals(zzaa(0, i2));
        } else {
            zzekb zzekbVar = (zzekb) zzejrVar;
            byte[] bArr = this.zzimk;
            byte[] bArr2 = zzekbVar.zzimk;
            int zzbgp = zzbgp();
            int zzbgp2 = zzbgp();
            int zzbgp3 = zzekbVar.zzbgp() + i;
            while (zzbgp2 < zzbgp + i2) {
                if (bArr[zzbgp2] != bArr2[zzbgp3]) {
                    return false;
                }
                zzbgp2++;
                zzbgp3++;
            }
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzejr
    public final zzejr zzaa(int i, int i2) {
        int zzi = zzi(i, i2, size());
        return zzi == 0 ? zzejr.zzilz : new zzeju(this.zzimk, zzbgp() + i, zzi);
    }

    @Override // com.google.android.gms.internal.ads.zzejr
    public void zzb(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zzimk, i, bArr, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzejr
    public final boolean zzbgj() {
        int zzbgp = zzbgp();
        return zzeok.zzm(this.zzimk, zzbgp, size() + zzbgp);
    }

    @Override // com.google.android.gms.internal.ads.zzejr
    public final zzekc zzbgk() {
        return zzekc.zzb(this.zzimk, zzbgp(), size(), true);
    }

    public int zzbgp() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzejr
    public byte zzfz(int i) {
        return this.zzimk[i];
    }

    @Override // com.google.android.gms.internal.ads.zzejr
    public final int zzg(int i, int i2, int i3) {
        int zzbgp = zzbgp() + i2;
        return zzeok.zzb(i, this.zzimk, zzbgp, i3 + zzbgp);
    }

    @Override // com.google.android.gms.internal.ads.zzejr
    public byte zzga(int i) {
        return this.zzimk[i];
    }

    @Override // com.google.android.gms.internal.ads.zzejr
    public final int zzh(int i, int i2, int i3) {
        return zzeld.zza(i, this.zzimk, zzbgp() + i2, i3);
    }
}

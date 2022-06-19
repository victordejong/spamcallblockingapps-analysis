package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzget.class */
public class zzget extends zzges {
    public final byte[] zza;

    public zzget(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgex) || zzc() != ((zzgex) obj).zzc()) {
            return false;
        }
        if (zzc() == 0) {
            return true;
        }
        if (!(obj instanceof zzget)) {
            return obj.equals(this);
        }
        zzget zzgetVar = (zzget) obj;
        int zzC = zzC();
        int zzC2 = zzgetVar.zzC();
        if (zzC != 0 && zzC2 != 0 && zzC != zzC2) {
            return false;
        }
        return zzh(zzgetVar, 0, zzc());
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public byte zza(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public byte zzb(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public int zzc() {
        return this.zza.length;
    }

    public int zzd() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public void zze(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zza, i, bArr, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzges
    public final boolean zzh(zzgex zzgexVar, int i, int i2) {
        if (i2 > zzgexVar.zzc()) {
            int zzc = zzc();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(zzc);
            throw new IllegalArgumentException(sb.toString());
        }
        int i3 = i + i2;
        if (i3 > zzgexVar.zzc()) {
            int zzc2 = zzgexVar.zzc();
            StringBuilder m8546z = C22128a.m8546z(59, "Ran off end of other: ", i, ", ", i2);
            m8546z.append(", ");
            m8546z.append(zzc2);
            throw new IllegalArgumentException(m8546z.toString());
        } else if (!(zzgexVar instanceof zzget)) {
            return zzgexVar.zzi(i, i3).equals(zzi(0, i2));
        } else {
            zzget zzgetVar = (zzget) zzgexVar;
            byte[] bArr = this.zza;
            byte[] bArr2 = zzgetVar.zza;
            int zzd = zzd();
            int zzd2 = zzd();
            int zzd3 = zzgetVar.zzd() + i;
            while (zzd2 < zzd + i2) {
                if (bArr[zzd2] != bArr2[zzd3]) {
                    return false;
                }
                zzd2++;
                zzd3++;
            }
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final zzgex zzi(int i, int i2) {
        int zzE = zzgex.zzE(i, i2, zzc());
        return zzE == 0 ? zzgex.zzb : new zzgeq(this.zza, zzd() + i, zzE);
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final ByteBuffer zzj() {
        return ByteBuffer.wrap(this.zza, zzd(), zzc()).asReadOnlyBuffer();
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final void zzk(zzgem zzgemVar) throws IOException {
        ((zzgfe) zzgemVar).zzp(this.zza, zzd(), zzc());
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final String zzl(Charset charset) {
        return new String(this.zza, zzd(), zzc(), charset);
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final boolean zzm() {
        int zzd = zzd();
        return zzgjd.zzb(this.zza, zzd, zzc() + zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final int zzn(int i, int i2, int i3) {
        int zzd = zzd() + i2;
        return zzgjd.zzc(i, this.zza, zzd, i3 + zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final int zzo(int i, int i2, int i3) {
        return zzggk.zzh(i, this.zza, zzd() + i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final zzgfc zzp() {
        return zzgfc.zzF(this.zza, zzd(), zzc(), true);
    }
}

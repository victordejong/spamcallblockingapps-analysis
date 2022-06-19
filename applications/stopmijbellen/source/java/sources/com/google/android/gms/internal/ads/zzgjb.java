package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgjb.class */
public class zzgjb extends zzgja {
    public final byte[] zza;

    public zzgjb(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzgjf
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgjf) || zzd() != ((zzgjf) obj).zzd()) {
            return false;
        }
        if (zzd() == 0) {
            return true;
        }
        if (!(obj instanceof zzgjb)) {
            return obj.equals(this);
        }
        zzgjb zzgjbVar = (zzgjb) obj;
        int zzr = zzr();
        int zzr2 = zzgjbVar.zzr();
        if (zzr != 0 && zzr2 != 0 && zzr != zzr2) {
            return false;
        }
        return zzg(zzgjbVar, 0, zzd());
    }

    @Override // com.google.android.gms.internal.ads.zzgjf
    public byte zza(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.ads.zzgjf
    public byte zzb(int i) {
        return this.zza[i];
    }

    public int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgjf
    public int zzd() {
        return this.zza.length;
    }

    @Override // com.google.android.gms.internal.ads.zzgjf
    public void zze(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zza, i, bArr, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzgja
    public final boolean zzg(zzgjf zzgjfVar, int i, int i2) {
        if (i2 > zzgjfVar.zzd()) {
            int zzd = zzd();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(zzd);
            throw new IllegalArgumentException(sb.toString());
        }
        int i3 = i + i2;
        if (i3 > zzgjfVar.zzd()) {
            int zzd2 = zzgjfVar.zzd();
            StringBuilder m8753i = C0082b.m8753i(59, "Ran off end of other: ", i, ", ", i2);
            m8753i.append(", ");
            m8753i.append(zzd2);
            throw new IllegalArgumentException(m8753i.toString());
        } else if (!(zzgjfVar instanceof zzgjb)) {
            return zzgjfVar.zzk(i, i3).equals(zzk(0, i2));
        } else {
            zzgjb zzgjbVar = (zzgjb) zzgjfVar;
            byte[] bArr = this.zza;
            byte[] bArr2 = zzgjbVar.zza;
            int zzc = zzc();
            int zzc2 = zzc();
            int zzc3 = zzgjbVar.zzc() + i;
            int i4 = zzc2;
            int i5 = zzc3;
            while (i4 < zzc + i2) {
                if (bArr[i4] != bArr2[i5]) {
                    return false;
                }
                i4++;
                i5++;
            }
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgjf
    public final int zzi(int i, int i2, int i3) {
        return zzgkv.zzd(i, this.zza, zzc() + i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzgjf
    public final int zzj(int i, int i2, int i3) {
        int zzc = zzc() + i2;
        return zzgnu.zzf(i, this.zza, zzc, i3 + zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzgjf
    public final zzgjf zzk(int i, int i2) {
        int zzq = zzgjf.zzq(i, i2, zzd());
        return zzq == 0 ? zzgjf.zzb : new zzgiy(this.zza, zzc() + i, zzq);
    }

    @Override // com.google.android.gms.internal.ads.zzgjf
    public final zzgjn zzl() {
        return zzgjn.zzH(this.zza, zzc(), zzd(), true);
    }

    @Override // com.google.android.gms.internal.ads.zzgjf
    public final String zzm(Charset charset) {
        return new String(this.zza, zzc(), zzd(), charset);
    }

    @Override // com.google.android.gms.internal.ads.zzgjf
    public final ByteBuffer zzn() {
        return ByteBuffer.wrap(this.zza, zzc(), zzd()).asReadOnlyBuffer();
    }

    @Override // com.google.android.gms.internal.ads.zzgjf
    public final void zzo(zzgit zzgitVar) throws IOException {
        ((zzgjp) zzgitVar).zzc(this.zza, zzc(), zzd());
    }

    @Override // com.google.android.gms.internal.ads.zzgjf
    public final boolean zzp() {
        int zzc = zzc();
        return zzgnu.zzj(this.zza, zzc, zzd() + zzc);
    }
}

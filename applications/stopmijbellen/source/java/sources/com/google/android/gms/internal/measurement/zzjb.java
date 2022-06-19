package com.google.android.gms.internal.measurement;

import android.support.p012v4.media.C0082b;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjb.class */
public class zzjb extends zzja {
    public final byte[] zza;

    public zzjb(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.measurement.zzjd
    public final boolean equals(Object obj) {
        boolean z;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzjd) || zzc() != ((zzjd) obj).zzc()) {
            return false;
        }
        if (zzc() == 0) {
            return true;
        }
        if (!(obj instanceof zzjb)) {
            return obj.equals(this);
        }
        zzjb zzjbVar = (zzjb) obj;
        int zzm = zzm();
        int zzm2 = zzjbVar.zzm();
        if (zzm != 0 && zzm2 != 0 && zzm != zzm2) {
            return false;
        }
        int zzc = zzc();
        if (zzc > zzjbVar.zzc()) {
            int zzc2 = zzc();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(zzc);
            sb.append(zzc2);
            throw new IllegalArgumentException(sb.toString());
        } else if (zzc > zzjbVar.zzc()) {
            throw new IllegalArgumentException(C0082b.m8757e(59, "Ran off end of other: 0, ", zzc, ", ", zzjbVar.zzc()));
        } else {
            byte[] bArr = this.zza;
            byte[] bArr2 = zzjbVar.zza;
            zzjbVar.zzd();
            int i = 0;
            int i2 = 0;
            while (true) {
                z = true;
                if (i >= zzc) {
                    break;
                } else if (bArr[i] != bArr2[i2]) {
                    z = false;
                    break;
                } else {
                    i++;
                    i2++;
                }
            }
            return z;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzjd
    public byte zza(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzjd
    public byte zzb(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzjd
    public int zzc() {
        return this.zza.length;
    }

    public int zzd() {
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzjd
    public final zzjd zze(int i, int i2) {
        int zzn = zzjd.zzn(0, i2, zzc());
        return zzn == 0 ? zzjd.zzb : new zziy(this.zza, 0, zzn);
    }

    @Override // com.google.android.gms.internal.measurement.zzjd
    public final void zzf(zziu zziuVar) throws IOException {
        ((zzji) zziuVar).zzp(this.zza, 0, zzc());
    }

    @Override // com.google.android.gms.internal.measurement.zzjd
    public final String zzg(Charset charset) {
        return new String(this.zza, 0, zzc(), charset);
    }

    @Override // com.google.android.gms.internal.measurement.zzjd
    public final boolean zzh() {
        return zzmw.zzb(this.zza, 0, zzc());
    }

    @Override // com.google.android.gms.internal.measurement.zzjd
    public final int zzi(int i, int i2, int i3) {
        return zzkl.zzh(i, this.zza, 0, i3);
    }
}

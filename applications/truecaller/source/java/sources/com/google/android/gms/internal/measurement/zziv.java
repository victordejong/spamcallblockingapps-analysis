package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zziv.class */
public class zziv extends zziu {
    public final byte[] zza;

    public zziv(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.measurement.zzix
    public final boolean equals(Object obj) {
        boolean z;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzix) || zzd() != ((zzix) obj).zzd()) {
            return false;
        }
        if (zzd() == 0) {
            return true;
        }
        if (!(obj instanceof zziv)) {
            return obj.equals(this);
        }
        zziv zzivVar = (zziv) obj;
        int zzk = zzk();
        int zzk2 = zzivVar.zzk();
        if (zzk != 0 && zzk2 != 0 && zzk != zzk2) {
            return false;
        }
        int zzd = zzd();
        if (zzd > zzivVar.zzd()) {
            int zzd2 = zzd();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(zzd);
            sb.append(zzd2);
            throw new IllegalArgumentException(sb.toString());
        } else if (zzd > zzivVar.zzd()) {
            throw new IllegalArgumentException(C22128a.m8683N1(59, "Ran off end of other: 0, ", zzd, ", ", zzivVar.zzd()));
        } else {
            byte[] bArr = this.zza;
            byte[] bArr2 = zzivVar.zza;
            zzivVar.zzc();
            int i = 0;
            int i2 = 0;
            while (true) {
                z = true;
                if (i >= zzd) {
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

    @Override // com.google.android.gms.internal.measurement.zzix
    public byte zza(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzix
    public byte zzb(int i) {
        return this.zza[i];
    }

    public int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzix
    public int zzd() {
        return this.zza.length;
    }

    @Override // com.google.android.gms.internal.measurement.zzix
    public final int zze(int i, int i2, int i3) {
        return zzkf.zzd(i, this.zza, 0, i3);
    }

    @Override // com.google.android.gms.internal.measurement.zzix
    public final zzix zzf(int i, int i2) {
        int zzj = zzix.zzj(0, i2, zzd());
        return zzj == 0 ? zzix.zzb : new zzis(this.zza, 0, zzj);
    }

    @Override // com.google.android.gms.internal.measurement.zzix
    public final String zzg(Charset charset) {
        return new String(this.zza, 0, zzd(), charset);
    }

    @Override // com.google.android.gms.internal.measurement.zzix
    public final void zzh(zzin zzinVar) throws IOException {
        ((zzjc) zzinVar).zzc(this.zza, 0, zzd());
    }

    @Override // com.google.android.gms.internal.measurement.zzix
    public final boolean zzi() {
        return zzmq.zzf(this.zza, 0, zzd());
    }
}

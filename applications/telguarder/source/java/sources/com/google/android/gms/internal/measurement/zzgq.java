package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzgq.class */
public class zzgq extends zzgp {
    protected final byte[] zza;

    public zzgq(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.measurement.zzgs
    public final boolean equals(Object obj) {
        boolean z;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgs) || zzc() != ((zzgs) obj).zzc()) {
            return false;
        }
        if (zzc() == 0) {
            return true;
        }
        if (!(obj instanceof zzgq)) {
            return obj.equals(this);
        }
        zzgq zzgqVar = (zzgq) obj;
        int zzm = zzm();
        int zzm2 = zzgqVar.zzm();
        if (zzm != 0 && zzm2 != 0 && zzm != zzm2) {
            return false;
        }
        int zzc = zzc();
        if (zzc > zzgqVar.zzc()) {
            int zzc2 = zzc();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(zzc);
            sb.append(zzc2);
            throw new IllegalArgumentException(sb.toString());
        } else if (zzc > zzgqVar.zzc()) {
            int zzc3 = zzgqVar.zzc();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(zzc);
            sb2.append(", ");
            sb2.append(zzc3);
            throw new IllegalArgumentException(sb2.toString());
        } else {
            if (zzgqVar instanceof zzgq) {
                byte[] bArr = this.zza;
                byte[] bArr2 = zzgqVar.zza;
                zzgqVar.zzd();
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
            } else {
                z = zzgqVar.zze(0, zzc).equals(zze(0, zzc));
            }
            return z;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzgs
    public byte zza(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzgs
    public byte zzb(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzgs
    public int zzc() {
        return this.zza.length;
    }

    protected int zzd() {
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzgs
    public final zzgs zze(int i, int i2) {
        int zzn = zzn(0, i2, zzc());
        return zzn == 0 ? zzgs.zzb : new zzgm(this.zza, 0, zzn);
    }

    @Override // com.google.android.gms.internal.measurement.zzgs
    public final void zzf(zzgh zzghVar) throws IOException {
        ((zzgx) zzghVar).zzp(this.zza, 0, zzc());
    }

    @Override // com.google.android.gms.internal.measurement.zzgs
    protected final String zzg(Charset charset) {
        return new String(this.zza, 0, zzc(), charset);
    }

    @Override // com.google.android.gms.internal.measurement.zzgs
    public final boolean zzh() {
        return zzkn.zzb(this.zza, 0, zzc());
    }

    @Override // com.google.android.gms.internal.measurement.zzgs
    protected final int zzi(int i, int i2, int i3) {
        return zzia.zzh(i, this.zza, 0, i3);
    }
}

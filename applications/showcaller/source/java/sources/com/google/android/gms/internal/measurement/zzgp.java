package com.google.android.gms.internal.measurement;

import java.nio.charset.Charset;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzgp.class */
public class zzgp extends zzgo {
    protected final byte[] zza;

    public zzgp(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.measurement.zzgr
    public final boolean equals(Object obj) {
        boolean z;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgr) || zzc() != ((zzgr) obj).zzc()) {
            return false;
        }
        if (zzc() == 0) {
            return true;
        }
        if (!(obj instanceof zzgp)) {
            return obj.equals(this);
        }
        zzgp zzgpVar = (zzgp) obj;
        int zzm = zzm();
        int zzm2 = zzgpVar.zzm();
        if (zzm != 0 && zzm2 != 0 && zzm != zzm2) {
            return false;
        }
        int zzc = zzc();
        if (zzc > zzgpVar.zzc()) {
            int zzc2 = zzc();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(zzc);
            sb.append(zzc2);
            throw new IllegalArgumentException(sb.toString());
        } else if (zzc > zzgpVar.zzc()) {
            int zzc3 = zzgpVar.zzc();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(zzc);
            sb2.append(", ");
            sb2.append(zzc3);
            throw new IllegalArgumentException(sb2.toString());
        } else {
            byte[] bArr = this.zza;
            byte[] bArr2 = zzgpVar.zza;
            zzgpVar.zzd();
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

    @Override // com.google.android.gms.internal.measurement.zzgr
    public byte zza(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzgr
    public byte zzb(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzgr
    public int zzc() {
        return this.zza.length;
    }

    protected int zzd() {
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzgr
    public final zzgr zze(int i, int i2) {
        int zzn = zzgr.zzn(0, i2, zzc());
        return zzn == 0 ? zzgr.f34851d : new zzgm(this.zza, 0, zzn);
    }

    @Override // com.google.android.gms.internal.measurement.zzgr
    public final void zzf(C7569u4 c7569u4) {
        ((C7350e5) c7569u4).m7556E(this.zza, 0, zzc());
    }

    @Override // com.google.android.gms.internal.measurement.zzgr
    protected final String zzg(Charset charset) {
        return new String(this.zza, 0, zzc(), charset);
    }

    @Override // com.google.android.gms.internal.measurement.zzgr
    public final boolean zzh() {
        return C7465m8.m7107b(this.zza, 0, zzc());
    }

    @Override // com.google.android.gms.internal.measurement.zzgr
    protected final int zzi(int i, int i2, int i3) {
        return C7365f6.m7496h(i, this.zza, 0, i3);
    }
}

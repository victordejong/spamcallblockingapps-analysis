package com.google.android.gms.internal.mlkit_common;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzez.class */
public class zzez extends zzew {
    public final byte[] zzb;

    public zzez(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.zzb = bArr;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzep
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzep) || zza() != ((zzep) obj).zza()) {
            return false;
        }
        if (zza() == 0) {
            return true;
        }
        if (!(obj instanceof zzez)) {
            return obj.equals(this);
        }
        zzez zzezVar = (zzez) obj;
        int zzd = zzd();
        int zzd2 = zzezVar.zzd();
        if (zzd != 0 && zzd2 != 0 && zzd != zzd2) {
            return false;
        }
        return zza(zzezVar, 0, zza());
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzep
    public byte zza(int i) {
        return this.zzb[i];
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzep
    public int zza() {
        return this.zzb.length;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzep
    public final int zza(int i, int i2, int i3) {
        return zzfs.zza(i, this.zzb, zze(), i3);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzep
    public final zzep zza(int i, int i2) {
        int zzb = zzep.zzb(0, i2, zza());
        return zzb == 0 ? zzep.zza : new zzes(this.zzb, zze(), zzb);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzep
    public final String zza(Charset charset) {
        return new String(this.zzb, zze(), zza(), charset);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzep
    public final void zza(zzem zzemVar) throws IOException {
        zzemVar.zza(this.zzb, zze(), zza());
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzew
    public final boolean zza(zzep zzepVar, int i, int i2) {
        if (i2 > zzepVar.zza()) {
            int zza = zza();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(zza);
            throw new IllegalArgumentException(sb.toString());
        } else if (i2 > zzepVar.zza()) {
            throw new IllegalArgumentException(C22128a.m8683N1(59, "Ran off end of other: 0, ", i2, ", ", zzepVar.zza()));
        } else {
            if (!(zzepVar instanceof zzez)) {
                return zzepVar.zza(0, i2).equals(zza(0, i2));
            }
            zzez zzezVar = (zzez) zzepVar;
            byte[] bArr = this.zzb;
            byte[] bArr2 = zzezVar.zzb;
            int zze = zze();
            int zze2 = zze();
            int zze3 = zzezVar.zze();
            while (zze2 < zze + i2) {
                if (bArr[zze2] != bArr2[zze3]) {
                    return false;
                }
                zze2++;
                zze3++;
            }
            return true;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzep
    public byte zzb(int i) {
        return this.zzb[i];
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzep
    public final boolean zzc() {
        int zze = zze();
        return zzir.zza(this.zzb, zze, zza() + zze);
    }

    public int zze() {
        return 0;
    }
}

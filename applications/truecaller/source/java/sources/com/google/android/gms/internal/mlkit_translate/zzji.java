package com.google.android.gms.internal.mlkit_translate;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzji.class */
public class zzji extends zzjj {
    public final byte[] zzb;

    public zzji(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.zzb = bArr;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zziy
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zziy) || zza() != ((zziy) obj).zza()) {
            return false;
        }
        if (zza() == 0) {
            return true;
        }
        if (!(obj instanceof zzji)) {
            return obj.equals(this);
        }
        zzji zzjiVar = (zzji) obj;
        int zzd = zzd();
        int zzd2 = zzjiVar.zzd();
        if (zzd != 0 && zzd2 != 0 && zzd != zzd2) {
            return false;
        }
        return zza(zzjiVar, 0, zza());
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zziy
    public byte zza(int i) {
        return this.zzb[i];
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zziy
    public int zza() {
        return this.zzb.length;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zziy
    public final int zza(int i, int i2, int i3) {
        return zzkf.zza(i, this.zzb, zze(), i3);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zziy
    public final zziy zza(int i, int i2) {
        int zzb = zziy.zzb(0, i2, zza());
        return zzb == 0 ? zziy.zza : new zzjf(this.zzb, zze(), zzb);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zziy
    public final String zza(Charset charset) {
        return new String(this.zzb, zze(), zza(), charset);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zziy
    public final void zza(zziz zzizVar) throws IOException {
        zzizVar.zza(this.zzb, zze(), zza());
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzjj
    public final boolean zza(zziy zziyVar, int i, int i2) {
        if (i2 > zziyVar.zza()) {
            int zza = zza();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(zza);
            throw new IllegalArgumentException(sb.toString());
        } else if (i2 > zziyVar.zza()) {
            throw new IllegalArgumentException(C22128a.m8683N1(59, "Ran off end of other: 0, ", i2, ", ", zziyVar.zza()));
        } else {
            if (!(zziyVar instanceof zzji)) {
                return zziyVar.zza(0, i2).equals(zza(0, i2));
            }
            zzji zzjiVar = (zzji) zziyVar;
            byte[] bArr = this.zzb;
            byte[] bArr2 = zzjiVar.zzb;
            int zze = zze();
            int zze2 = zze();
            int zze3 = zzjiVar.zze();
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

    @Override // com.google.android.gms.internal.mlkit_translate.zziy
    public byte zzb(int i) {
        return this.zzb[i];
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zziy
    public final boolean zzc() {
        int zze = zze();
        return zznb.zza(this.zzb, zze, zza() + zze);
    }

    public int zze() {
        return 0;
    }
}

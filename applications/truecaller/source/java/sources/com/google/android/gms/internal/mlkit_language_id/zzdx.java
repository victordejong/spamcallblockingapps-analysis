package com.google.android.gms.internal.mlkit_language_id;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzdx.class */
public class zzdx extends zzdu {
    public final byte[] zzb;

    public zzdx(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.zzb = bArr;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdn
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzdn) || zza() != ((zzdn) obj).zza()) {
            return false;
        }
        if (zza() == 0) {
            return true;
        }
        if (!(obj instanceof zzdx)) {
            return obj.equals(this);
        }
        zzdx zzdxVar = (zzdx) obj;
        int zzd = zzd();
        int zzd2 = zzdxVar.zzd();
        if (zzd != 0 && zzd2 != 0 && zzd != zzd2) {
            return false;
        }
        return zza(zzdxVar, 0, zza());
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdn
    public byte zza(int i) {
        return this.zzb[i];
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdn
    public int zza() {
        return this.zzb.length;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdn
    public final int zza(int i, int i2, int i3) {
        return zzeq.zza(i, this.zzb, zze(), i3);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdn
    public final zzdn zza(int i, int i2) {
        int zzb = zzdn.zzb(0, i2, zza());
        return zzb == 0 ? zzdn.zza : new zzdq(this.zzb, zze(), zzb);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdn
    public final String zza(Charset charset) {
        return new String(this.zzb, zze(), zza(), charset);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdn
    public final void zza(zzdk zzdkVar) throws IOException {
        zzdkVar.zza(this.zzb, zze(), zza());
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdu
    public final boolean zza(zzdn zzdnVar, int i, int i2) {
        if (i2 > zzdnVar.zza()) {
            int zza = zza();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(zza);
            throw new IllegalArgumentException(sb.toString());
        } else if (i2 > zzdnVar.zza()) {
            throw new IllegalArgumentException(C22128a.m8683N1(59, "Ran off end of other: 0, ", i2, ", ", zzdnVar.zza()));
        } else {
            if (!(zzdnVar instanceof zzdx)) {
                return zzdnVar.zza(0, i2).equals(zza(0, i2));
            }
            zzdx zzdxVar = (zzdx) zzdnVar;
            byte[] bArr = this.zzb;
            byte[] bArr2 = zzdxVar.zzb;
            int zze = zze();
            int zze2 = zze();
            int zze3 = zzdxVar.zze();
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

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdn
    public byte zzb(int i) {
        return this.zzb[i];
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdn
    public final boolean zzc() {
        int zze = zze();
        return zzhp.zza(this.zzb, zze, zza() + zze);
    }

    public int zze() {
        return 0;
    }
}

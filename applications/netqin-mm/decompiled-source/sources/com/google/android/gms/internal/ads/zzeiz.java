package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.charset.Charset;
import p131c.p161d.p170b.p224d.p252g.p253a.ea0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeiz.class */
public class zzeiz extends zzeiw {
    public final byte[] zzifc;

    public zzeiz(byte[] bArr) {
        if (bArr != null) {
            this.zzifc = bArr;
            return;
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzeip
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzeip) || size() != ((zzeip) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof zzeiz)) {
            return obj.equals(this);
        }
        zzeiz zzeizVar = (zzeiz) obj;
        int zzbel = zzbel();
        int zzbel2 = zzeizVar.zzbel();
        if (zzbel == 0 || zzbel2 == 0 || zzbel == zzbel2) {
            return zza(zzeizVar, 0, size());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzeip
    public int size() {
        return this.zzifc.length;
    }

    @Override // com.google.android.gms.internal.ads.zzeip
    public final String zza(Charset charset) {
        return new String(this.zzifc, zzbem(), size(), charset);
    }

    @Override // com.google.android.gms.internal.ads.zzeip
    public final void zza(zzeim zzeimVar) throws IOException {
        zzeimVar.mo12430a(this.zzifc, zzbem(), size());
    }

    @Override // com.google.android.gms.internal.ads.zzeiw
    public final boolean zza(zzeip zzeipVar, int i, int i2) {
        if (i2 <= zzeipVar.size()) {
            int i3 = i + i2;
            if (i3 > zzeipVar.size()) {
                int size = zzeipVar.size();
                StringBuilder sb = new StringBuilder(59);
                sb.append("Ran off end of other: ");
                sb.append(i);
                sb.append(", ");
                sb.append(i2);
                sb.append(", ");
                sb.append(size);
                throw new IllegalArgumentException(sb.toString());
            } else if (!(zzeipVar instanceof zzeiz)) {
                return zzeipVar.zzz(i, i3).equals(zzz(0, i2));
            } else {
                zzeiz zzeizVar = (zzeiz) zzeipVar;
                byte[] bArr = this.zzifc;
                byte[] bArr2 = zzeizVar.zzifc;
                int zzbem = zzbem();
                int zzbem2 = zzbem();
                int zzbem3 = zzeizVar.zzbem() + i;
                while (zzbem2 < zzbem + i2) {
                    if (bArr[zzbem2] != bArr2[zzbem3]) {
                        return false;
                    }
                    zzbem2++;
                    zzbem3++;
                }
                return true;
            }
        } else {
            int size2 = size();
            StringBuilder sb2 = new StringBuilder(40);
            sb2.append("Length too large: ");
            sb2.append(i2);
            sb2.append(size2);
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeip
    public void zzb(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zzifc, i, bArr, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzeip
    public final boolean zzbeg() {
        int zzbem = zzbem();
        return ea0.m27040a(this.zzifc, zzbem, size() + zzbem);
    }

    @Override // com.google.android.gms.internal.ads.zzeip
    public final zzeja zzbeh() {
        return zzeja.m12528a(this.zzifc, zzbem(), size(), true);
    }

    public int zzbem() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzeip
    public byte zzfu(int i) {
        return this.zzifc[i];
    }

    @Override // com.google.android.gms.internal.ads.zzeip
    public byte zzfv(int i) {
        return this.zzifc[i];
    }

    @Override // com.google.android.gms.internal.ads.zzeip
    public final int zzg(int i, int i2, int i3) {
        int zzbem = zzbem() + i2;
        return ea0.m27044a(i, this.zzifc, zzbem, i3 + zzbem);
    }

    @Override // com.google.android.gms.internal.ads.zzeip
    public final int zzh(int i, int i2, int i3) {
        return zzekb.m12375a(i, this.zzifc, zzbem() + i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzeip
    public final zzeip zzz(int i, int i2) {
        int zzi = zzeip.zzi(i, i2, size());
        return zzi == 0 ? zzeip.zzier : new zzeis(this.zzifc, zzbem() + i, zzi);
    }
}

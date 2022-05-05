package com.google.android.gms.internal.icing;

import java.io.IOException;
import java.nio.charset.Charset;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbp.class */
public class zzbp extends zzbo {
    protected final byte[] zzdx;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbp(byte[] bArr) {
        this.zzdx = bArr;
    }

    @Override // com.google.android.gms.internal.icing.zzbi
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbi) || size() != ((zzbi) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof zzbp)) {
            return obj.equals(this);
        }
        zzbp zzbpVar = (zzbp) obj;
        int zzw = zzw();
        int zzw2 = zzbpVar.zzw();
        if (zzw == 0 || zzw2 == 0 || zzw == zzw2) {
            return zza(zzbpVar, 0, size());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.icing.zzbi
    public int size() {
        return this.zzdx.length;
    }

    @Override // com.google.android.gms.internal.icing.zzbi
    protected final int zza(int i, int i2, int i3) {
        return zzcm.zza(i, this.zzdx, zzx(), i3);
    }

    @Override // com.google.android.gms.internal.icing.zzbi
    public final zzbi zza(int i, int i2) {
        int zzb = zzb(0, i2, size());
        return zzb == 0 ? zzbi.zzdq : new zzbl(this.zzdx, zzx(), zzb);
    }

    @Override // com.google.android.gms.internal.icing.zzbi
    protected final String zza(Charset charset) {
        return new String(this.zzdx, zzx(), size(), charset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.icing.zzbi
    public final void zza(zzbh zzbhVar) throws IOException {
        zzbhVar.zza(this.zzdx, zzx(), size());
    }

    @Override // com.google.android.gms.internal.icing.zzbo
    final boolean zza(zzbi zzbiVar, int i, int i2) {
        if (i2 > zzbiVar.size()) {
            int size = size();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(size);
            throw new IllegalArgumentException(sb.toString());
        } else if (i2 > zzbiVar.size()) {
            int size2 = zzbiVar.size();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(size2);
            throw new IllegalArgumentException(sb2.toString());
        } else if (!(zzbiVar instanceof zzbp)) {
            return zzbiVar.zza(0, i2).equals(zza(0, i2));
        } else {
            zzbp zzbpVar = (zzbp) zzbiVar;
            byte[] bArr = this.zzdx;
            byte[] bArr2 = zzbpVar.zzdx;
            int zzx = zzx();
            int zzx2 = zzx();
            int zzx3 = zzbpVar.zzx();
            while (zzx2 < zzx + i2) {
                if (bArr[zzx2] != bArr2[zzx3]) {
                    return false;
                }
                zzx2++;
                zzx3++;
            }
            return true;
        }
    }

    @Override // com.google.android.gms.internal.icing.zzbi
    public byte zzi(int i) {
        return this.zzdx[i];
    }

    @Override // com.google.android.gms.internal.icing.zzbi
    public final boolean zzv() {
        int zzx = zzx();
        return zzff.zzc(this.zzdx, zzx, size() + zzx);
    }

    protected int zzx() {
        return 0;
    }
}

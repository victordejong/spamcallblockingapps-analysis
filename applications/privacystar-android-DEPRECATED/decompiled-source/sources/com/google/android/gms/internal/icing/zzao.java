package com.google.android.gms.internal.icing;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzao.class */
public final class zzao extends zzfu<zzao> {
    public boolean zzbf = false;
    public String zzbg = "";
    private long zzbh = 0;
    private double zzbi = 0.0d;
    public zzan zzbj = null;

    public zzao() {
        this.zznv = null;
        this.zzoe = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzao)) {
            return false;
        }
        zzao zzaoVar = (zzao) obj;
        if (this.zzbf != zzaoVar.zzbf) {
            return false;
        }
        if (this.zzbg == null) {
            if (zzaoVar.zzbg != null) {
                return false;
            }
        } else if (!this.zzbg.equals(zzaoVar.zzbg)) {
            return false;
        }
        if (Double.doubleToLongBits(0.0d) != Double.doubleToLongBits(0.0d)) {
            return false;
        }
        if (this.zzbj == null) {
            if (zzaoVar.zzbj != null) {
                return false;
            }
        } else if (!this.zzbj.equals(zzaoVar.zzbj)) {
            return false;
        }
        return (this.zznv == null || this.zznv.isEmpty()) ? zzaoVar.zznv == null || zzaoVar.zznv.isEmpty() : this.zznv.equals(zzaoVar.zznv);
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int i = this.zzbf ? 1231 : 1237;
        int hashCode2 = this.zzbg == null ? 0 : this.zzbg.hashCode();
        long doubleToLongBits = Double.doubleToLongBits(0.0d);
        int i2 = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        zzan zzanVar = this.zzbj;
        int hashCode3 = zzanVar == null ? 0 : zzanVar.hashCode();
        int i3 = 0;
        if (this.zznv != null) {
            i3 = this.zznv.isEmpty() ? 0 : this.zznv.hashCode();
        }
        return ((((((((((hashCode + 527) * 31) + i) * 31) + hashCode2) * 31 * 31) + i2) * 31) + hashCode3) * 31) + i3;
    }

    @Override // com.google.android.gms.internal.icing.zzfu, com.google.android.gms.internal.icing.zzfz
    public final void zza(zzfs zzfsVar) throws IOException {
        if (this.zzbf) {
            boolean z = this.zzbf;
            zzfsVar.zzb(1, 0);
            zzfsVar.zzb(z ? (byte) 1 : (byte) 0);
        }
        if (this.zzbg != null && !this.zzbg.equals("")) {
            zzfsVar.zza(2, this.zzbg);
        }
        if (Double.doubleToLongBits(0.0d) != Double.doubleToLongBits(0.0d)) {
            zzfsVar.zzb(4, 1);
            zzfsVar.zzm(Double.doubleToLongBits(0.0d));
        }
        if (this.zzbj != null) {
            zzfsVar.zza(5, this.zzbj);
        }
        super.zza(zzfsVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.icing.zzfu, com.google.android.gms.internal.icing.zzfz
    public final int zze() {
        int zze = super.zze();
        int i = zze;
        if (this.zzbf) {
            i = zze + zzfs.zzp(1) + 1;
        }
        int i2 = i;
        if (this.zzbg != null) {
            i2 = i;
            if (!this.zzbg.equals("")) {
                i2 = i + zzfs.zzb(2, this.zzbg);
            }
        }
        int i3 = i2;
        if (Double.doubleToLongBits(0.0d) != Double.doubleToLongBits(0.0d)) {
            i3 = i2 + zzfs.zzp(4) + 8;
        }
        int i4 = i3;
        if (this.zzbj != null) {
            i4 = i3 + zzfs.zzb(5, this.zzbj);
        }
        return i4;
    }
}

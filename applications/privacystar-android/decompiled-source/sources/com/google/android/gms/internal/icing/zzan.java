package com.google.android.gms.internal.icing;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzan.class */
public final class zzan extends zzfu<zzan> {
    public String type = "";
    public zzam[] zzbe = zzam.zzg();

    public zzan() {
        this.zznv = null;
        this.zzoe = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzan)) {
            return false;
        }
        zzan zzanVar = (zzan) obj;
        if (this.type == null) {
            if (zzanVar.type != null) {
                return false;
            }
        } else if (!this.type.equals(zzanVar.type)) {
            return false;
        }
        if (!zzfy.equals(this.zzbe, zzanVar.zzbe)) {
            return false;
        }
        return (this.zznv == null || this.zznv.isEmpty()) ? zzanVar.zznv == null || zzanVar.zznv.isEmpty() : this.zznv.equals(zzanVar.zznv);
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int hashCode2 = this.type == null ? 0 : this.type.hashCode();
        int hashCode3 = zzfy.hashCode(this.zzbe);
        int i = 0;
        if (this.zznv != null) {
            i = this.zznv.isEmpty() ? 0 : this.zznv.hashCode();
        }
        return ((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    @Override // com.google.android.gms.internal.icing.zzfu, com.google.android.gms.internal.icing.zzfz
    public final void zza(zzfs zzfsVar) throws IOException {
        if (this.type != null && !this.type.equals("")) {
            zzfsVar.zza(1, this.type);
        }
        if (this.zzbe != null && this.zzbe.length > 0) {
            for (int i = 0; i < this.zzbe.length; i++) {
                zzam zzamVar = this.zzbe[i];
                if (zzamVar != null) {
                    zzfsVar.zza(2, zzamVar);
                }
            }
        }
        super.zza(zzfsVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.icing.zzfu, com.google.android.gms.internal.icing.zzfz
    public final int zze() {
        int zze = super.zze();
        int i = zze;
        if (this.type != null) {
            i = zze;
            if (!this.type.equals("")) {
                i = zze + zzfs.zzb(1, this.type);
            }
        }
        int i2 = i;
        if (this.zzbe != null) {
            i2 = i;
            if (this.zzbe.length > 0) {
                int i3 = 0;
                while (true) {
                    i2 = i;
                    if (i3 >= this.zzbe.length) {
                        break;
                    }
                    zzam zzamVar = this.zzbe[i3];
                    i = i;
                    if (zzamVar != null) {
                        i += zzfs.zzb(2, zzamVar);
                    }
                    i3++;
                }
            }
        }
        return i2;
    }
}

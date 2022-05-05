package com.google.android.gms.internal.icing;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzam.class */
public final class zzam extends zzfu<zzam> {
    private static volatile zzam[] zzbc;
    public String name = "";
    public zzao zzbd = null;

    public zzam() {
        this.zznv = null;
        this.zzoe = -1;
    }

    public static zzam[] zzg() {
        if (zzbc == null) {
            synchronized (zzfy.zzod) {
                if (zzbc == null) {
                    zzbc = new zzam[0];
                }
            }
        }
        return zzbc;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzam)) {
            return false;
        }
        zzam zzamVar = (zzam) obj;
        if (this.name == null) {
            if (zzamVar.name != null) {
                return false;
            }
        } else if (!this.name.equals(zzamVar.name)) {
            return false;
        }
        if (this.zzbd == null) {
            if (zzamVar.zzbd != null) {
                return false;
            }
        } else if (!this.zzbd.equals(zzamVar.zzbd)) {
            return false;
        }
        return (this.zznv == null || this.zznv.isEmpty()) ? zzamVar.zznv == null || zzamVar.zznv.isEmpty() : this.zznv.equals(zzamVar.zznv);
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int hashCode2 = this.name == null ? 0 : this.name.hashCode();
        zzao zzaoVar = this.zzbd;
        int hashCode3 = zzaoVar == null ? 0 : zzaoVar.hashCode();
        int i = 0;
        if (this.zznv != null) {
            i = this.zznv.isEmpty() ? 0 : this.zznv.hashCode();
        }
        return ((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    @Override // com.google.android.gms.internal.icing.zzfu, com.google.android.gms.internal.icing.zzfz
    public final void zza(zzfs zzfsVar) throws IOException {
        if (this.name != null && !this.name.equals("")) {
            zzfsVar.zza(1, this.name);
        }
        if (this.zzbd != null) {
            zzfsVar.zza(2, this.zzbd);
        }
        super.zza(zzfsVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.icing.zzfu, com.google.android.gms.internal.icing.zzfz
    public final int zze() {
        int zze = super.zze();
        int i = zze;
        if (this.name != null) {
            i = zze;
            if (!this.name.equals("")) {
                i = zze + zzfs.zzb(1, this.name);
            }
        }
        int i2 = i;
        if (this.zzbd != null) {
            i2 = i + zzfs.zzb(2, this.zzbd);
        }
        return i2;
    }
}

package com.google.android.gms.internal.icing;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzak.class */
public final class zzak extends zzfu<zzak> {
    public zzal[] zzay = zzal.zzf();

    public zzak() {
        this.zznv = null;
        this.zzoe = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzak)) {
            return false;
        }
        zzak zzakVar = (zzak) obj;
        if (!zzfy.equals(this.zzay, zzakVar.zzay)) {
            return false;
        }
        return (this.zznv == null || this.zznv.isEmpty()) ? zzakVar.zznv == null || zzakVar.zznv.isEmpty() : this.zznv.equals(zzakVar.zznv);
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        return ((((hashCode + 527) * 31) + zzfy.hashCode(this.zzay)) * 31) + ((this.zznv == null || this.zznv.isEmpty()) ? 0 : this.zznv.hashCode());
    }

    @Override // com.google.android.gms.internal.icing.zzfu, com.google.android.gms.internal.icing.zzfz
    public final void zza(zzfs zzfsVar) throws IOException {
        if (this.zzay != null && this.zzay.length > 0) {
            for (int i = 0; i < this.zzay.length; i++) {
                zzal zzalVar = this.zzay[i];
                if (zzalVar != null) {
                    zzfsVar.zza(1, zzalVar);
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
        if (this.zzay != null) {
            i = zze;
            if (this.zzay.length > 0) {
                int i2 = 0;
                while (true) {
                    i = zze;
                    if (i2 >= this.zzay.length) {
                        break;
                    }
                    zzal zzalVar = this.zzay[i2];
                    zze = zze;
                    if (zzalVar != null) {
                        zze += zzfs.zzb(1, zzalVar);
                    }
                    i2++;
                }
            }
        }
        return i;
    }
}

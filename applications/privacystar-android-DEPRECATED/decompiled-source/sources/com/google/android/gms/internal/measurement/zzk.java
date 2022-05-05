package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzk.class */
public final class zzk extends zzza<zzk> {
    private static volatile zzk[] zzor;
    public int key = 0;
    public int value = 0;

    public zzk() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public static zzk[] zzh() {
        if (zzor == null) {
            synchronized (zzze.zzcfl) {
                if (zzor == null) {
                    zzor = new zzk[0];
                }
            }
        }
        return zzor;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzk)) {
            return false;
        }
        zzk zzkVar = (zzk) obj;
        if (this.key == zzkVar.key && this.value == zzkVar.value) {
            return (this.zzcfc == null || this.zzcfc.isEmpty()) ? zzkVar.zzcfc == null || zzkVar.zzcfc.isEmpty() : this.zzcfc.equals(zzkVar.zzcfc);
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int i = this.key;
        return ((((((hashCode + 527) * 31) + i) * 31) + this.value) * 31) + ((this.zzcfc == null || this.zzcfc.isEmpty()) ? 0 : this.zzcfc.hashCode());
    }

    @Override // com.google.android.gms.internal.measurement.zzzg
    public final /* synthetic */ zzzg zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int zzug = zzyxVar.zzug();
            if (zzug == 0) {
                return this;
            }
            if (zzug == 8) {
                this.key = zzyxVar.zzuy();
            } else if (zzug == 16) {
                this.value = zzyxVar.zzuy();
            } else if (!super.zza(zzyxVar, zzug)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        zzyyVar.zzd(1, this.key);
        zzyyVar.zzd(2, this.value);
        super.zza(zzyyVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final int zzf() {
        return super.zzf() + zzyy.zzh(1, this.key) + zzyy.zzh(2, this.value);
    }
}

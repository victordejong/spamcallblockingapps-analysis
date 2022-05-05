package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzi.class */
public final class zzi extends zzza<zzi> {
    private static volatile zzi[] zzoi;
    public String zzoj = "";
    public long zzok = 0;
    public long zzol = 2147483647L;
    public boolean zzom = false;
    public long zzon = 0;

    public zzi() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public static zzi[] zzg() {
        if (zzoi == null) {
            synchronized (zzze.zzcfl) {
                if (zzoi == null) {
                    zzoi = new zzi[0];
                }
            }
        }
        return zzoi;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzi)) {
            return false;
        }
        zzi zziVar = (zzi) obj;
        if (this.zzoj == null) {
            if (zziVar.zzoj != null) {
                return false;
            }
        } else if (!this.zzoj.equals(zziVar.zzoj)) {
            return false;
        }
        if (this.zzok == zziVar.zzok && this.zzol == zziVar.zzol && this.zzom == zziVar.zzom && this.zzon == zziVar.zzon) {
            return (this.zzcfc == null || this.zzcfc.isEmpty()) ? zziVar.zzcfc == null || zziVar.zzcfc.isEmpty() : this.zzcfc.equals(zziVar.zzcfc);
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int hashCode2 = this.zzoj == null ? 0 : this.zzoj.hashCode();
        int i = (int) (this.zzok ^ (this.zzok >>> 32));
        int i2 = (int) (this.zzol ^ (this.zzol >>> 32));
        int i3 = this.zzom ? 1231 : 1237;
        int i4 = (int) (this.zzon ^ (this.zzon >>> 32));
        int i5 = 0;
        if (this.zzcfc != null) {
            i5 = this.zzcfc.isEmpty() ? 0 : this.zzcfc.hashCode();
        }
        return ((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + i) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i5;
    }

    @Override // com.google.android.gms.internal.measurement.zzzg
    public final /* synthetic */ zzzg zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int zzug = zzyxVar.zzug();
            if (zzug == 0) {
                return this;
            }
            if (zzug == 10) {
                this.zzoj = zzyxVar.readString();
            } else if (zzug == 16) {
                this.zzok = zzyxVar.zzuz();
            } else if (zzug == 24) {
                this.zzol = zzyxVar.zzuz();
            } else if (zzug == 32) {
                this.zzom = zzyxVar.zzum();
            } else if (zzug == 40) {
                this.zzon = zzyxVar.zzuz();
            } else if (!super.zza(zzyxVar, zzug)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        if (this.zzoj != null && !this.zzoj.equals("")) {
            zzyyVar.zzb(1, this.zzoj);
        }
        if (this.zzok != 0) {
            zzyyVar.zzi(2, this.zzok);
        }
        if (this.zzol != 2147483647L) {
            zzyyVar.zzi(3, this.zzol);
        }
        if (this.zzom) {
            zzyyVar.zzb(4, this.zzom);
        }
        if (this.zzon != 0) {
            zzyyVar.zzi(5, this.zzon);
        }
        super.zza(zzyyVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final int zzf() {
        int zzf = super.zzf();
        int i = zzf;
        if (this.zzoj != null) {
            i = zzf;
            if (!this.zzoj.equals("")) {
                i = zzf + zzyy.zzc(1, this.zzoj);
            }
        }
        int i2 = i;
        if (this.zzok != 0) {
            i2 = i + zzyy.zzd(2, this.zzok);
        }
        int i3 = i2;
        if (this.zzol != 2147483647L) {
            i3 = i2 + zzyy.zzd(3, this.zzol);
        }
        int i4 = i3;
        if (this.zzom) {
            i4 = i3 + zzyy.zzbb(4) + 1;
        }
        int i5 = i4;
        if (this.zzon != 0) {
            i5 = i4 + zzyy.zzd(5, this.zzon);
        }
        return i5;
    }
}

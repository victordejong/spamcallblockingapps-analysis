package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgl.class */
public final class zzgl extends zzza<zzgl> {
    private static volatile zzgl[] zzayk;
    public Long zzayl = null;
    public String name = null;
    public String zzamp = null;
    public Long zzawx = null;
    private Float zzaug = null;
    public Double zzauh = null;

    public zzgl() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public static zzgl[] zzmu() {
        if (zzayk == null) {
            synchronized (zzze.zzcfl) {
                if (zzayk == null) {
                    zzayk = new zzgl[0];
                }
            }
        }
        return zzayk;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgl)) {
            return false;
        }
        zzgl zzglVar = (zzgl) obj;
        if (this.zzayl == null) {
            if (zzglVar.zzayl != null) {
                return false;
            }
        } else if (!this.zzayl.equals(zzglVar.zzayl)) {
            return false;
        }
        if (this.name == null) {
            if (zzglVar.name != null) {
                return false;
            }
        } else if (!this.name.equals(zzglVar.name)) {
            return false;
        }
        if (this.zzamp == null) {
            if (zzglVar.zzamp != null) {
                return false;
            }
        } else if (!this.zzamp.equals(zzglVar.zzamp)) {
            return false;
        }
        if (this.zzawx == null) {
            if (zzglVar.zzawx != null) {
                return false;
            }
        } else if (!this.zzawx.equals(zzglVar.zzawx)) {
            return false;
        }
        if (this.zzaug == null) {
            if (zzglVar.zzaug != null) {
                return false;
            }
        } else if (!this.zzaug.equals(zzglVar.zzaug)) {
            return false;
        }
        if (this.zzauh == null) {
            if (zzglVar.zzauh != null) {
                return false;
            }
        } else if (!this.zzauh.equals(zzglVar.zzauh)) {
            return false;
        }
        return (this.zzcfc == null || this.zzcfc.isEmpty()) ? zzglVar.zzcfc == null || zzglVar.zzcfc.isEmpty() : this.zzcfc.equals(zzglVar.zzcfc);
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int hashCode2 = this.zzayl == null ? 0 : this.zzayl.hashCode();
        int hashCode3 = this.name == null ? 0 : this.name.hashCode();
        int hashCode4 = this.zzamp == null ? 0 : this.zzamp.hashCode();
        int hashCode5 = this.zzawx == null ? 0 : this.zzawx.hashCode();
        int hashCode6 = this.zzaug == null ? 0 : this.zzaug.hashCode();
        int hashCode7 = this.zzauh == null ? 0 : this.zzauh.hashCode();
        int i = 0;
        if (this.zzcfc != null) {
            i = this.zzcfc.isEmpty() ? 0 : this.zzcfc.hashCode();
        }
        return ((((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i;
    }

    @Override // com.google.android.gms.internal.measurement.zzzg
    public final /* synthetic */ zzzg zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int zzug = zzyxVar.zzug();
            if (zzug == 0) {
                return this;
            }
            if (zzug == 8) {
                this.zzayl = Long.valueOf(zzyxVar.zzuz());
            } else if (zzug == 18) {
                this.name = zzyxVar.readString();
            } else if (zzug == 26) {
                this.zzamp = zzyxVar.readString();
            } else if (zzug == 32) {
                this.zzawx = Long.valueOf(zzyxVar.zzuz());
            } else if (zzug == 45) {
                this.zzaug = Float.valueOf(Float.intBitsToFloat(zzyxVar.zzva()));
            } else if (zzug == 49) {
                this.zzauh = Double.valueOf(Double.longBitsToDouble(zzyxVar.zzvb()));
            } else if (!super.zza(zzyxVar, zzug)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        if (this.zzayl != null) {
            zzyyVar.zzi(1, this.zzayl.longValue());
        }
        if (this.name != null) {
            zzyyVar.zzb(2, this.name);
        }
        if (this.zzamp != null) {
            zzyyVar.zzb(3, this.zzamp);
        }
        if (this.zzawx != null) {
            zzyyVar.zzi(4, this.zzawx.longValue());
        }
        if (this.zzaug != null) {
            zzyyVar.zza(5, this.zzaug.floatValue());
        }
        if (this.zzauh != null) {
            zzyyVar.zza(6, this.zzauh.doubleValue());
        }
        super.zza(zzyyVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final int zzf() {
        int zzf = super.zzf();
        int i = zzf;
        if (this.zzayl != null) {
            i = zzf + zzyy.zzd(1, this.zzayl.longValue());
        }
        int i2 = i;
        if (this.name != null) {
            i2 = i + zzyy.zzc(2, this.name);
        }
        int i3 = i2;
        if (this.zzamp != null) {
            i3 = i2 + zzyy.zzc(3, this.zzamp);
        }
        int i4 = i3;
        if (this.zzawx != null) {
            i4 = i3 + zzyy.zzd(4, this.zzawx.longValue());
        }
        int i5 = i4;
        if (this.zzaug != null) {
            this.zzaug.floatValue();
            i5 = i4 + zzyy.zzbb(5) + 4;
        }
        int i6 = i5;
        if (this.zzauh != null) {
            this.zzauh.doubleValue();
            i6 = i5 + zzyy.zzbb(6) + 8;
        }
        return i6;
    }
}

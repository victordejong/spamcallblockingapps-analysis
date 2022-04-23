package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgg.class */
public final class zzgg extends zzza<zzgg> {
    private static volatile zzgg[] zzaww;
    public String name = null;
    public String zzamp = null;
    public Long zzawx = null;
    private Float zzaug = null;
    public Double zzauh = null;

    public zzgg() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public static zzgg[] zzmr() {
        if (zzaww == null) {
            synchronized (zzze.zzcfl) {
                if (zzaww == null) {
                    zzaww = new zzgg[0];
                }
            }
        }
        return zzaww;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgg)) {
            return false;
        }
        zzgg zzggVar = (zzgg) obj;
        if (this.name == null) {
            if (zzggVar.name != null) {
                return false;
            }
        } else if (!this.name.equals(zzggVar.name)) {
            return false;
        }
        if (this.zzamp == null) {
            if (zzggVar.zzamp != null) {
                return false;
            }
        } else if (!this.zzamp.equals(zzggVar.zzamp)) {
            return false;
        }
        if (this.zzawx == null) {
            if (zzggVar.zzawx != null) {
                return false;
            }
        } else if (!this.zzawx.equals(zzggVar.zzawx)) {
            return false;
        }
        if (this.zzaug == null) {
            if (zzggVar.zzaug != null) {
                return false;
            }
        } else if (!this.zzaug.equals(zzggVar.zzaug)) {
            return false;
        }
        if (this.zzauh == null) {
            if (zzggVar.zzauh != null) {
                return false;
            }
        } else if (!this.zzauh.equals(zzggVar.zzauh)) {
            return false;
        }
        return (this.zzcfc == null || this.zzcfc.isEmpty()) ? zzggVar.zzcfc == null || zzggVar.zzcfc.isEmpty() : this.zzcfc.equals(zzggVar.zzcfc);
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int hashCode2 = this.name == null ? 0 : this.name.hashCode();
        int hashCode3 = this.zzamp == null ? 0 : this.zzamp.hashCode();
        int hashCode4 = this.zzawx == null ? 0 : this.zzawx.hashCode();
        int hashCode5 = this.zzaug == null ? 0 : this.zzaug.hashCode();
        int hashCode6 = this.zzauh == null ? 0 : this.zzauh.hashCode();
        int i = 0;
        if (this.zzcfc != null) {
            i = this.zzcfc.isEmpty() ? 0 : this.zzcfc.hashCode();
        }
        return ((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i;
    }

    @Override // com.google.android.gms.internal.measurement.zzzg
    public final /* synthetic */ zzzg zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int zzug = zzyxVar.zzug();
            if (zzug == 0) {
                return this;
            }
            if (zzug == 10) {
                this.name = zzyxVar.readString();
            } else if (zzug == 18) {
                this.zzamp = zzyxVar.readString();
            } else if (zzug == 24) {
                this.zzawx = Long.valueOf(zzyxVar.zzuz());
            } else if (zzug == 37) {
                this.zzaug = Float.valueOf(Float.intBitsToFloat(zzyxVar.zzva()));
            } else if (zzug == 41) {
                this.zzauh = Double.valueOf(Double.longBitsToDouble(zzyxVar.zzvb()));
            } else if (!super.zza(zzyxVar, zzug)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        if (this.name != null) {
            zzyyVar.zzb(1, this.name);
        }
        if (this.zzamp != null) {
            zzyyVar.zzb(2, this.zzamp);
        }
        if (this.zzawx != null) {
            zzyyVar.zzi(3, this.zzawx.longValue());
        }
        if (this.zzaug != null) {
            zzyyVar.zza(4, this.zzaug.floatValue());
        }
        if (this.zzauh != null) {
            zzyyVar.zza(5, this.zzauh.doubleValue());
        }
        super.zza(zzyyVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final int zzf() {
        int zzf = super.zzf();
        int i = zzf;
        if (this.name != null) {
            i = zzf + zzyy.zzc(1, this.name);
        }
        int i2 = i;
        if (this.zzamp != null) {
            i2 = i + zzyy.zzc(2, this.zzamp);
        }
        int i3 = i2;
        if (this.zzawx != null) {
            i3 = i2 + zzyy.zzd(3, this.zzawx.longValue());
        }
        int i4 = i3;
        if (this.zzaug != null) {
            this.zzaug.floatValue();
            i4 = i3 + zzyy.zzbb(4) + 4;
        }
        int i5 = i4;
        if (this.zzauh != null) {
            this.zzauh.doubleValue();
            i5 = i4 + zzyy.zzbb(5) + 8;
        }
        return i5;
    }
}

package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfw.class */
public final class zzfw extends zzza<zzfw> {
    private static volatile zzfw[] zzavj;
    public zzfz zzavk = null;
    public zzfx zzavl = null;
    public Boolean zzavm = null;
    public String zzavn = null;

    public zzfw() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public static zzfw[] zzmk() {
        if (zzavj == null) {
            synchronized (zzze.zzcfl) {
                if (zzavj == null) {
                    zzavj = new zzfw[0];
                }
            }
        }
        return zzavj;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfw)) {
            return false;
        }
        zzfw zzfwVar = (zzfw) obj;
        if (this.zzavk == null) {
            if (zzfwVar.zzavk != null) {
                return false;
            }
        } else if (!this.zzavk.equals(zzfwVar.zzavk)) {
            return false;
        }
        if (this.zzavl == null) {
            if (zzfwVar.zzavl != null) {
                return false;
            }
        } else if (!this.zzavl.equals(zzfwVar.zzavl)) {
            return false;
        }
        if (this.zzavm == null) {
            if (zzfwVar.zzavm != null) {
                return false;
            }
        } else if (!this.zzavm.equals(zzfwVar.zzavm)) {
            return false;
        }
        if (this.zzavn == null) {
            if (zzfwVar.zzavn != null) {
                return false;
            }
        } else if (!this.zzavn.equals(zzfwVar.zzavn)) {
            return false;
        }
        return (this.zzcfc == null || this.zzcfc.isEmpty()) ? zzfwVar.zzcfc == null || zzfwVar.zzcfc.isEmpty() : this.zzcfc.equals(zzfwVar.zzcfc);
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        zzfz zzfzVar = this.zzavk;
        int hashCode2 = zzfzVar == null ? 0 : zzfzVar.hashCode();
        zzfx zzfxVar = this.zzavl;
        int hashCode3 = zzfxVar == null ? 0 : zzfxVar.hashCode();
        int hashCode4 = this.zzavm == null ? 0 : this.zzavm.hashCode();
        int hashCode5 = this.zzavn == null ? 0 : this.zzavn.hashCode();
        int i = 0;
        if (this.zzcfc != null) {
            i = this.zzcfc.isEmpty() ? 0 : this.zzcfc.hashCode();
        }
        return ((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
    }

    @Override // com.google.android.gms.internal.measurement.zzzg
    public final /* synthetic */ zzzg zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int zzug = zzyxVar.zzug();
            if (zzug == 0) {
                return this;
            }
            if (zzug == 10) {
                if (this.zzavk == null) {
                    this.zzavk = new zzfz();
                }
                zzyxVar.zza(this.zzavk);
            } else if (zzug == 18) {
                if (this.zzavl == null) {
                    this.zzavl = new zzfx();
                }
                zzyxVar.zza(this.zzavl);
            } else if (zzug == 24) {
                this.zzavm = Boolean.valueOf(zzyxVar.zzum());
            } else if (zzug == 34) {
                this.zzavn = zzyxVar.readString();
            } else if (!super.zza(zzyxVar, zzug)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        if (this.zzavk != null) {
            zzyyVar.zza(1, this.zzavk);
        }
        if (this.zzavl != null) {
            zzyyVar.zza(2, this.zzavl);
        }
        if (this.zzavm != null) {
            zzyyVar.zzb(3, this.zzavm.booleanValue());
        }
        if (this.zzavn != null) {
            zzyyVar.zzb(4, this.zzavn);
        }
        super.zza(zzyyVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final int zzf() {
        int zzf = super.zzf();
        int i = zzf;
        if (this.zzavk != null) {
            i = zzf + zzyy.zzb(1, this.zzavk);
        }
        int i2 = i;
        if (this.zzavl != null) {
            i2 = i + zzyy.zzb(2, this.zzavl);
        }
        int i3 = i2;
        if (this.zzavm != null) {
            this.zzavm.booleanValue();
            i3 = i2 + zzyy.zzbb(3) + 1;
        }
        int i4 = i3;
        if (this.zzavn != null) {
            i4 = i3 + zzyy.zzc(4, this.zzavn);
        }
        return i4;
    }
}

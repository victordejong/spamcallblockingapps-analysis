package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzga.class */
public final class zzga extends zzza<zzga> {
    private static volatile zzga[] zzawa;
    public String name = null;
    public Boolean zzawb = null;
    public Boolean zzawc = null;
    public Integer zzawd = null;

    public zzga() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public static zzga[] zzmm() {
        if (zzawa == null) {
            synchronized (zzze.zzcfl) {
                if (zzawa == null) {
                    zzawa = new zzga[0];
                }
            }
        }
        return zzawa;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzga)) {
            return false;
        }
        zzga zzgaVar = (zzga) obj;
        if (this.name == null) {
            if (zzgaVar.name != null) {
                return false;
            }
        } else if (!this.name.equals(zzgaVar.name)) {
            return false;
        }
        if (this.zzawb == null) {
            if (zzgaVar.zzawb != null) {
                return false;
            }
        } else if (!this.zzawb.equals(zzgaVar.zzawb)) {
            return false;
        }
        if (this.zzawc == null) {
            if (zzgaVar.zzawc != null) {
                return false;
            }
        } else if (!this.zzawc.equals(zzgaVar.zzawc)) {
            return false;
        }
        if (this.zzawd == null) {
            if (zzgaVar.zzawd != null) {
                return false;
            }
        } else if (!this.zzawd.equals(zzgaVar.zzawd)) {
            return false;
        }
        return (this.zzcfc == null || this.zzcfc.isEmpty()) ? zzgaVar.zzcfc == null || zzgaVar.zzcfc.isEmpty() : this.zzcfc.equals(zzgaVar.zzcfc);
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int hashCode2 = this.name == null ? 0 : this.name.hashCode();
        int hashCode3 = this.zzawb == null ? 0 : this.zzawb.hashCode();
        int hashCode4 = this.zzawc == null ? 0 : this.zzawc.hashCode();
        int hashCode5 = this.zzawd == null ? 0 : this.zzawd.hashCode();
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
                this.name = zzyxVar.readString();
            } else if (zzug == 16) {
                this.zzawb = Boolean.valueOf(zzyxVar.zzum());
            } else if (zzug == 24) {
                this.zzawc = Boolean.valueOf(zzyxVar.zzum());
            } else if (zzug == 32) {
                this.zzawd = Integer.valueOf(zzyxVar.zzuy());
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
        if (this.zzawb != null) {
            zzyyVar.zzb(2, this.zzawb.booleanValue());
        }
        if (this.zzawc != null) {
            zzyyVar.zzb(3, this.zzawc.booleanValue());
        }
        if (this.zzawd != null) {
            zzyyVar.zzd(4, this.zzawd.intValue());
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
        if (this.zzawb != null) {
            this.zzawb.booleanValue();
            i2 = i + zzyy.zzbb(2) + 1;
        }
        int i3 = i2;
        if (this.zzawc != null) {
            this.zzawc.booleanValue();
            i3 = i2 + zzyy.zzbb(3) + 1;
        }
        int i4 = i3;
        if (this.zzawd != null) {
            i4 = i3 + zzyy.zzh(4, this.zzawd.intValue());
        }
        return i4;
    }
}

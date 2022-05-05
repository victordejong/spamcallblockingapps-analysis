package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzwa.class */
public class zzwa {
    private static final zzuz zzbtt = zzuz.zzvo();
    private zzud zzcad;
    private volatile zzwt zzcae;
    private volatile zzud zzcaf;

    private final zzwt zzh(zzwt zzwtVar) {
        if (this.zzcae == null) {
            synchronized (this) {
                if (this.zzcae == null) {
                    try {
                        this.zzcae = zzwtVar;
                        this.zzcaf = zzud.zzbtz;
                    } catch (zzvt e) {
                        this.zzcae = zzwtVar;
                        this.zzcaf = zzud.zzbtz;
                    }
                }
            }
        }
        return this.zzcae;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzwa)) {
            return false;
        }
        zzwa zzwaVar = (zzwa) obj;
        zzwt zzwtVar = this.zzcae;
        zzwt zzwtVar2 = zzwaVar.zzcae;
        return (zzwtVar == null && zzwtVar2 == null) ? zztt().equals(zzwaVar.zztt()) : (zzwtVar == null || zzwtVar2 == null) ? zzwtVar != null ? zzwtVar.equals(zzwaVar.zzh(zzwtVar.zzwf())) : zzh(zzwtVar2.zzwf()).equals(zzwtVar2) : zzwtVar.equals(zzwtVar2);
    }

    public int hashCode() {
        return 1;
    }

    public final zzwt zzi(zzwt zzwtVar) {
        zzwt zzwtVar2 = this.zzcae;
        this.zzcad = null;
        this.zzcaf = null;
        this.zzcae = zzwtVar;
        return zzwtVar2;
    }

    public final zzud zztt() {
        if (this.zzcaf != null) {
            return this.zzcaf;
        }
        synchronized (this) {
            if (this.zzcaf != null) {
                return this.zzcaf;
            }
            if (this.zzcae == null) {
                this.zzcaf = zzud.zzbtz;
            } else {
                this.zzcaf = this.zzcae.zztt();
            }
            return this.zzcaf;
        }
    }

    public final int zzvu() {
        if (this.zzcaf != null) {
            return this.zzcaf.size();
        }
        if (this.zzcae != null) {
            return this.zzcae.zzvu();
        }
        return 0;
    }
}

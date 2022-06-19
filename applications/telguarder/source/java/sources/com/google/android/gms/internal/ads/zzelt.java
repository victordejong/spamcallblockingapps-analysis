package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzelt.class */
public class zzelt {
    private static final zzeko zziln = zzeko.zzbhw();
    private zzejr zzirv;
    private volatile zzemo zzirw;
    private volatile zzejr zzirx;

    private final zzemo zzm(zzemo zzemoVar) {
        if (this.zzirw == null) {
            synchronized (this) {
                if (this.zzirw == null) {
                    try {
                        this.zzirw = zzemoVar;
                        this.zzirx = zzejr.zzilz;
                    } catch (zzelo e) {
                        this.zzirw = zzemoVar;
                        this.zzirx = zzejr.zzilz;
                    }
                }
            }
        }
        return this.zzirw;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzelt)) {
            return false;
        }
        zzelt zzeltVar = (zzelt) obj;
        zzemo zzemoVar = this.zzirw;
        zzemo zzemoVar2 = zzeltVar.zzirw;
        return (zzemoVar == null && zzemoVar2 == null) ? zzbfz().equals(zzeltVar.zzbfz()) : (zzemoVar == null || zzemoVar2 == null) ? zzemoVar != null ? zzemoVar.equals(zzeltVar.zzm(zzemoVar.zzbiq())) : zzm(zzemoVar2.zzbiq()).equals(zzemoVar2) : zzemoVar.equals(zzemoVar2);
    }

    public int hashCode() {
        return 1;
    }

    public final zzejr zzbfz() {
        if (this.zzirx != null) {
            return this.zzirx;
        }
        synchronized (this) {
            if (this.zzirx != null) {
                return this.zzirx;
            }
            if (this.zzirw == null) {
                this.zzirx = zzejr.zzilz;
            } else {
                this.zzirx = this.zzirw.zzbfz();
            }
            return this.zzirx;
        }
    }

    public final int zzbik() {
        if (this.zzirx != null) {
            return this.zzirx.size();
        }
        if (this.zzirw == null) {
            return 0;
        }
        return this.zzirw.zzbik();
    }

    public final zzemo zzn(zzemo zzemoVar) {
        zzemo zzemoVar2 = this.zzirw;
        this.zzirv = null;
        this.zzirx = null;
        this.zzirw = zzemoVar;
        return zzemoVar2;
    }
}

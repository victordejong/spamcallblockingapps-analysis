package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzdd;
import com.google.android.gms.internal.firebase-perf.zzdv;
import com.google.android.gms.internal.firebase-perf.zzfr;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzew.class */
public class zzew {
    private static final zzdv zzmc = zzdv.zzfw();
    private zzdd zzro;
    private volatile zzfr zzrp;
    private volatile zzdd zzrq;

    private final zzfr zzg(zzfr zzfrVar) {
        if (this.zzrp == null) {
            synchronized (this) {
                if (this.zzrp == null) {
                    try {
                        this.zzrp = zzfrVar;
                        this.zzrq = zzdd.zzmh;
                    } catch (zzer e) {
                        this.zzrp = zzfrVar;
                        this.zzrq = zzdd.zzmh;
                    }
                }
            }
        }
        return this.zzrp;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzew)) {
            return false;
        }
        zzew zzewVar = (zzew) obj;
        zzfr zzfrVar = this.zzrp;
        zzfr zzfrVar2 = zzewVar.zzrp;
        return (zzfrVar == null && zzfrVar2 == null) ? zzfe().equals(zzewVar.zzfe()) : (zzfrVar == null || zzfrVar2 == null) ? zzfrVar != null ? zzfrVar.equals(zzewVar.zzg(zzfrVar.zzgn())) : zzg(zzfrVar2.zzgn()).equals(zzfrVar2) : zzfrVar.equals(zzfrVar2);
    }

    public int hashCode() {
        return 1;
    }

    public final zzdd zzfe() {
        if (this.zzrq != null) {
            return this.zzrq;
        }
        synchronized (this) {
            if (this.zzrq != null) {
                return this.zzrq;
            }
            if (this.zzrp == null) {
                this.zzrq = zzdd.zzmh;
            } else {
                this.zzrq = this.zzrp.zzfe();
            }
            return this.zzrq;
        }
    }

    public final int zzgp() {
        if (this.zzrq != null) {
            return this.zzrq.size();
        }
        if (this.zzrp == null) {
            return 0;
        }
        return this.zzrp.zzgp();
    }

    public final zzfr zzh(zzfr zzfrVar) {
        zzfr zzfrVar2 = this.zzrp;
        this.zzro = null;
        this.zzrq = null;
        this.zzrp = zzfrVar;
        return zzfrVar2;
    }
}

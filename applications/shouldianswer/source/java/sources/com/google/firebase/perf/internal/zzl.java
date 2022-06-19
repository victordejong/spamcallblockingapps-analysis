package com.google.firebase.perf.internal;

import com.google.android.gms.internal.firebase-perf.zzbt;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/internal/zzl.class */
public final class zzl extends zzq {
    private final zzbt zzcz;

    public zzl(zzbt zzbtVar) {
        this.zzcz = zzbtVar;
    }

    @Override // com.google.firebase.perf.internal.zzq
    public final boolean zzac() {
        if (this.zzcz.zzcy()) {
            if (this.zzcz.zzdc() > 0 || this.zzcz.zzdd() > 0) {
                return true;
            }
            return this.zzcz.zzda() && this.zzcz.zzdb().zzcu();
        }
        return false;
    }
}

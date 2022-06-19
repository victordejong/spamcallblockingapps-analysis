package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import org.checkerframework.dataflow.qual.Pure;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgn.class */
public class zzgn implements zzgp {
    public final zzfu zzs;

    public zzgn(zzfu zzfuVar) {
        Preconditions.checkNotNull(zzfuVar);
        this.zzs = zzfuVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzgp
    @Pure
    public final zzz zzat() {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzgp
    @Pure
    public final zzem zzau() {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzgp
    @Pure
    public final zzfr zzav() {
        throw null;
    }

    public void zzaw() {
        this.zzs.zzav().zzaw();
    }

    @Override // com.google.android.gms.measurement.internal.zzgp
    @Pure
    public final Context zzax() {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzgp
    @Pure
    public final Clock zzay() {
        throw null;
    }

    public void zzg() {
        this.zzs.zzav().zzg();
    }
}

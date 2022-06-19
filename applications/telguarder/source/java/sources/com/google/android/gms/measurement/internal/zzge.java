package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import org.checkerframework.dataflow.qual.Pure;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzge.class */
public class zzge implements zzgg {
    protected final zzfl zzx;

    public zzge(zzfl zzflVar) {
        Preconditions.checkNotNull(zzflVar);
        this.zzx = zzflVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzgg
    @Pure
    public final zzz zzas() {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzgg
    @Pure
    public final zzei zzat() {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzgg
    @Pure
    public final zzfi zzau() {
        throw null;
    }

    public void zzav() {
        this.zzx.zzau().zzav();
    }

    @Override // com.google.android.gms.measurement.internal.zzgg
    @Pure
    public final Context zzaw() {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzgg
    @Pure
    public final Clock zzax() {
        throw null;
    }

    public void zzg() {
        this.zzx.zzau().zzg();
    }
}

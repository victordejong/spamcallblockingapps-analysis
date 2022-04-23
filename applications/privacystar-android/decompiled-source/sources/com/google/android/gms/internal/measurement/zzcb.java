package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.util.VisibleForTesting;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcb.class */
public final class zzcb extends zzau {
    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public zzcb(zzaw zzawVar) {
        super(zzawVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzau
    protected final void zzag() {
    }

    public final zzac zzek() {
        zzcl();
        return zzca().zzae();
    }

    public final String zzel() {
        zzcl();
        zzac zzek = zzek();
        int i = zzek.zzuh;
        int i2 = zzek.zzui;
        StringBuilder sb = new StringBuilder(23);
        sb.append(i);
        sb.append("x");
        sb.append(i2);
        return sb.toString();
    }
}

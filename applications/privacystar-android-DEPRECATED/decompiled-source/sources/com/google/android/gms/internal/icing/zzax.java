package com.google.android.gms.internal.icing;

import android.util.Log;
import com.google.android.gms.common.api.Status;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzax.class */
final class zzax extends zzav {
    private final /* synthetic */ zzaw zzbq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzax(zzaw zzawVar) {
        this.zzbq = zzawVar;
    }

    @Override // com.google.android.gms.internal.icing.zzav, com.google.android.gms.internal.icing.zzap
    public final void zzb(Status status) {
        boolean z;
        z = this.zzbq.zzbp;
        if (z) {
            Log.d("SearchAuth", "ClearTokenImpl success");
        }
        this.zzbq.setResult((zzaw) status);
    }
}

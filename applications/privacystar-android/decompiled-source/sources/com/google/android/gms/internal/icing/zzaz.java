package com.google.android.gms.internal.icing;

import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.search.GoogleNowAuthState;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzaz.class */
final class zzaz extends zzav {
    private final /* synthetic */ zzay zzbs;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaz(zzay zzayVar) {
        this.zzbs = zzayVar;
    }

    @Override // com.google.android.gms.internal.icing.zzav, com.google.android.gms.internal.icing.zzap
    public final void zza(Status status, GoogleNowAuthState googleNowAuthState) {
        boolean z;
        z = this.zzbs.zzbp;
        if (z) {
            Log.d("SearchAuth", "GetGoogleNowAuthImpl success");
        }
        this.zzbs.setResult((zzay) new zzba(status, googleNowAuthState));
    }
}

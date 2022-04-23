package com.google.android.gms.internal.icing;

import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.search.GoogleNowAuthState;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzav.class */
final class zzav extends zzar {

    /* renamed from: a */
    private final /* synthetic */ zzaw f7876a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzav(zzaw zzawVar) {
        this.f7876a = zzawVar;
    }

    @Override // com.google.android.gms.internal.icing.zzar, com.google.android.gms.internal.icing.zzam
    /* renamed from: P0 */
    public final void mo14044P0(Status status, GoogleNowAuthState googleNowAuthState) {
        boolean z;
        z = this.f7876a.f7879u;
        if (z) {
            Log.d("SearchAuth", "GetGoogleNowAuthImpl success");
        }
        this.f7876a.m14974i(new zzay(status, googleNowAuthState));
    }
}

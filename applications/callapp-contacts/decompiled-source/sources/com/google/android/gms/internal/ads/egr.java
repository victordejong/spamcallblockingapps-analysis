package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/egr.class */
public final class egr implements d.b {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ egn f27821a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public egr(egn egnVar) {
        this.f27821a = egnVar;
    }

    @Override // com.google.android.gms.common.internal.d.b
    public final void a(ConnectionResult connectionResult) {
        synchronized (this.f27821a.f27812b) {
            this.f27821a.f27814d = null;
            if (this.f27821a.f27813c != null) {
                this.f27821a.f27813c = null;
            }
            this.f27821a.f27812b.notifyAll();
        }
    }
}

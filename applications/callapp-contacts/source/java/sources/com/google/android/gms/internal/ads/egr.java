package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.AbstractC12025d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/egr.class */
public final class egr implements AbstractC12025d.AbstractC12027b {

    /* renamed from: a */
    private final /* synthetic */ egn f49011a;

    public egr(egn egnVar) {
        this.f49011a = egnVar;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d.AbstractC12027b
    /* renamed from: a */
    public final void mo11761a(ConnectionResult connectionResult) {
        synchronized (this.f49011a.f48997b) {
            this.f49011a.f48999d = null;
            if (this.f49011a.f48998c != null) {
                this.f49011a.f48998c = null;
            }
            this.f49011a.f48997b.notifyAll();
        }
    }
}

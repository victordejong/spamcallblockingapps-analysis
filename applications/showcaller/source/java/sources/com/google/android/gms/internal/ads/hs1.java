package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.common.ConnectionResult;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hs1.class */
public final class hs1 extends ls1 {
    public hs1(Context context) {
        this.f26268f = new lc0(context, C5667s.m18146r().m17910a(), this, this);
    }

    @Override // com.google.android.gms.internal.ads.ls1, com.google.android.gms.common.internal.AbstractC6113d.AbstractC6115b
    /* renamed from: D0 */
    public final void mo6338D0(ConnectionResult connectionResult) {
        ei0.m15469a("Cannot connect to remote service, fallback to local instance.");
        this.f26263a.m10014f(new zzeap(1));
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d.AbstractC6114a
    /* renamed from: J0 */
    public final void mo6337J0(Bundle bundle) {
        synchronized (this.f26264b) {
            if (!this.f26266d) {
                this.f26266d = true;
                try {
                    this.f26268f.m13586i0().mo11611v1(this.f26267e, new is1(this));
                } catch (RemoteException | IllegalArgumentException e) {
                    this.f26263a.m10014f(new zzeap(1));
                }
            }
        }
    }
}

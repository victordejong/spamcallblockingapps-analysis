package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.AbstractC6113d;
/* renamed from: com.google.android.gms.internal.ads.xl */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xl.class */
public final class C7149xl implements AbstractC6113d.AbstractC6115b {

    /* renamed from: a */
    final /* synthetic */ C7186yl f32101a;

    public C7149xl(C7186yl c7186yl) {
        this.f32101a = c7186yl;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d.AbstractC6115b
    /* renamed from: D0 */
    public final void mo6338D0(ConnectionResult connectionResult) {
        Object obj;
        C6297am c6297am;
        Object obj2;
        obj = this.f32101a.f32536b;
        synchronized (obj) {
            this.f32101a.f32539e = null;
            c6297am = this.f32101a.f32537c;
            if (c6297am != null) {
                this.f32101a.f32537c = null;
            }
            obj2 = this.f32101a.f32536b;
            obj2.notifyAll();
        }
    }
}

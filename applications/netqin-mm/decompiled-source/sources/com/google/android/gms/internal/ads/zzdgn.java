package com.google.android.gms.internal.ads;

import android.os.Bundle;
import p131c.p161d.p170b.p224d.p252g.p253a.C3632hu;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdgn.class */
public final class zzdgn implements zzdgx<zzdgu<Bundle>> {

    /* renamed from: a */
    public final boolean f27295a;

    public zzdgn(zzdmd zzdmdVar) {
        if (zzdmdVar != null) {
            this.f27295a = true;
        } else {
            this.f27295a = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdgu<Bundle>> mo13576a() {
        return zzdyq.m12988a(this.f27295a ? C3632hu.f13476a : null);
    }
}

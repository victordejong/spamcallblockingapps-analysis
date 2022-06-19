package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/t41.class */
public final class t41 extends m81<hr2> implements m10 {

    /* renamed from: e */
    private final Bundle f29807e = new Bundle();

    public t41(Set<ja1<hr2>> set) {
        super(set);
    }

    /* renamed from: S0 */
    public final Bundle m10837S0() {
        Bundle bundle;
        synchronized (this) {
            bundle = new Bundle(this.f29807e);
        }
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.m10
    /* renamed from: i0 */
    public final void mo10647i0(String str, Bundle bundle) {
        synchronized (this) {
            this.f29807e.putAll(bundle);
            m13339Q0(s41.f29403a);
        }
    }
}

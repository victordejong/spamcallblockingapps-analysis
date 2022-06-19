package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ate.class */
public final class ate extends awl<AdMetadataListener> implements AbstractC12586go {

    /* renamed from: a */
    private Bundle f43148a = new Bundle();

    public ate(Set<ayi<AdMetadataListener>> set) {
        super(set);
    }

    /* renamed from: a */
    public final Bundle m18420a() {
        Bundle bundle;
        synchronized (this) {
            bundle = new Bundle(this.f43148a);
        }
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12586go
    /* renamed from: a */
    public final void mo14637a(String str, Bundle bundle) {
        synchronized (this) {
            this.f43148a.putAll(bundle);
            m18374a(atd.f43147a);
        }
    }
}

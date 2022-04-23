package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ate.class */
public final class ate extends awl<AdMetadataListener> implements go {

    /* renamed from: a  reason: collision with root package name */
    private Bundle f23862a = new Bundle();

    public ate(Set<ayi<AdMetadataListener>> set) {
        super(set);
    }

    public final Bundle a() {
        Bundle bundle;
        synchronized (this) {
            bundle = new Bundle(this.f23862a);
        }
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.go
    public final void a(String str, Bundle bundle) {
        synchronized (this) {
            this.f23862a.putAll(bundle);
            a(atd.f23861a);
        }
    }
}

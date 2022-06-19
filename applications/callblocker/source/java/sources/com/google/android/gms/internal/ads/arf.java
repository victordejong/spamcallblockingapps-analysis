package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.reward.C2391a;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/arf.class */
public final class arf extends ate<C2391a> implements AbstractC3111ei {

    /* renamed from: a */
    private Bundle f10237a = new Bundle();

    public arf(Set<auq<C2391a>> set) {
        super(set);
    }

    /* renamed from: a */
    public final Bundle m12796a() {
        Bundle bundle;
        synchronized (this) {
            bundle = new Bundle(this.f10237a);
        }
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3111ei
    /* renamed from: a */
    public final void mo7860a(String str, Bundle bundle) {
        synchronized (this) {
            this.f10237a.putAll(bundle);
            m12775a(ari.f10239a);
        }
    }
}

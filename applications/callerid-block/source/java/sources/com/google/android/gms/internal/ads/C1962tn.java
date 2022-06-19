package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.common.util.AbstractC1610f;
/* renamed from: com.google.android.gms.internal.ads.tn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/tn.class */
final class C1962tn {

    /* renamed from: a */
    private long f8608a = -1;

    /* renamed from: b */
    private long f8609b = -1;

    /* renamed from: c */
    final /* synthetic */ C1978un f8610c;

    public C1962tn(C1978un c1978un) {
        this.f8610c = c1978un;
    }

    /* renamed from: a */
    public final long m5508a() {
        return this.f8609b;
    }

    /* renamed from: b */
    public final void m5507b() {
        AbstractC1610f abstractC1610f;
        abstractC1610f = this.f8610c.f8802a;
        this.f8609b = abstractC1610f.m8245c();
    }

    /* renamed from: c */
    public final void m5506c() {
        AbstractC1610f abstractC1610f;
        abstractC1610f = this.f8610c.f8802a;
        this.f8608a = abstractC1610f.m8245c();
    }

    /* renamed from: d */
    public final Bundle m5505d() {
        Bundle bundle = new Bundle();
        bundle.putLong("topen", this.f8608a);
        bundle.putLong("tclose", this.f8609b);
        return bundle;
    }
}

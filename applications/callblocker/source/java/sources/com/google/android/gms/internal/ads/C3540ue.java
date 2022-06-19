package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.common.util.AbstractC2708e;
/* renamed from: com.google.android.gms.internal.ads.ue */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ue.class */
public final class C3540ue {

    /* renamed from: a */
    private long f17395a = -1;

    /* renamed from: b */
    private long f17396b = -1;

    /* renamed from: c */
    private final /* synthetic */ C3541uf f17397c;

    public C3540ue(C3541uf c3541uf) {
        this.f17397c = c3541uf;
    }

    /* renamed from: a */
    public final long m7113a() {
        return this.f17396b;
    }

    /* renamed from: b */
    public final void m7112b() {
        AbstractC2708e abstractC2708e;
        abstractC2708e = this.f17397c.f17398a;
        this.f17396b = abstractC2708e.mo13861b();
    }

    /* renamed from: c */
    public final void m7111c() {
        AbstractC2708e abstractC2708e;
        abstractC2708e = this.f17397c.f17398a;
        this.f17395a = abstractC2708e.mo13861b();
    }

    /* renamed from: d */
    public final Bundle m7110d() {
        Bundle bundle = new Bundle();
        bundle.putLong("topen", this.f17395a);
        bundle.putLong("tclose", this.f17396b);
        return bundle;
    }
}

package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aqh.class */
public final class aqh extends ate<aqi> {

    /* renamed from: a */
    private boolean f10217a = false;

    public aqh(Set<auq<aqi>> set) {
        super(set);
    }

    /* renamed from: a */
    public final void m12811a() {
        synchronized (this) {
            if (!this.f10217a) {
                m12775a(aqg.f10216a);
                this.f10217a = true;
            }
        }
    }
}

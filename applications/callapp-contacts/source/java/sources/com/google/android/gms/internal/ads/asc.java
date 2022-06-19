package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/asc.class */
public final class asc extends awl<ash> {

    /* renamed from: a */
    private boolean f43127a = false;

    public asc(Set<ayi<ash>> set) {
        super(set);
    }

    /* renamed from: a */
    public final void m18434a() {
        synchronized (this) {
            if (!this.f43127a) {
                m18374a(asf.f43129a);
                this.f43127a = true;
            }
        }
    }
}

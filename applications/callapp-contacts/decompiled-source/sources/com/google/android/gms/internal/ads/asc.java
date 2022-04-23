package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/asc.class */
public final class asc extends awl<ash> {

    /* renamed from: a  reason: collision with root package name */
    private boolean f23841a = false;

    public asc(Set<ayi<ash>> set) {
        super(set);
    }

    public final void a() {
        synchronized (this) {
            if (!this.f23841a) {
                a(asf.f23843a);
                this.f23841a = true;
            }
        }
    }
}

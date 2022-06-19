package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ayz.class */
public final class ayz extends awl<VideoController.VideoLifecycleCallbacks> {

    /* renamed from: a */
    private boolean f43336a;

    public ayz(Set<ayi<VideoController.VideoLifecycleCallbacks>> set) {
        super(set);
    }

    /* renamed from: a */
    public final void m18315a() {
        m18374a(azc.f43338a);
    }

    /* renamed from: b */
    public final void m18314b() {
        m18374a(azb.f43337a);
    }

    /* renamed from: c */
    public final void m18313c() {
        synchronized (this) {
            m18374a(aze.f43340a);
            this.f43336a = true;
        }
    }

    /* renamed from: d */
    public final void m18312d() {
        synchronized (this) {
            if (!this.f43336a) {
                m18374a(azd.f43339a);
                this.f43336a = true;
            }
            m18374a(azg.f43342a);
        }
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ayz.class */
public final class ayz extends awl<VideoController.VideoLifecycleCallbacks> {

    /* renamed from: a  reason: collision with root package name */
    private boolean f24022a;

    /* JADX INFO: Access modifiers changed from: protected */
    public ayz(Set<ayi<VideoController.VideoLifecycleCallbacks>> set) {
        super(set);
    }

    public final void a() {
        a(azc.f24024a);
    }

    public final void b() {
        a(azb.f24023a);
    }

    public final void c() {
        synchronized (this) {
            a(aze.f24026a);
            this.f24022a = true;
        }
    }

    public final void d() {
        synchronized (this) {
            if (!this.f24022a) {
                a(azd.f24025a);
                this.f24022a = true;
            }
            a(azg.f24028a);
        }
    }
}

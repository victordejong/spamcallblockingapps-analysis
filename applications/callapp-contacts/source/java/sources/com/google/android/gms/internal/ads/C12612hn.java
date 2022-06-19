package com.google.android.gms.internal.ads;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.gms.internal.ads.hn */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/hn.class */
public final class C12612hn implements AbstractC12609hk {

    /* renamed from: a */
    private boolean f49338a = false;

    /* renamed from: b */
    private boolean f49339b = false;

    /* renamed from: c */
    private float f49340c = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: d */
    private AtomicBoolean f49341d = new AtomicBoolean(false);

    @Override // com.google.android.gms.internal.ads.AbstractC12609hk
    /* renamed from: a */
    public final void mo14622a(boolean z) {
        synchronized (this) {
            this.f49338a = z;
            this.f49341d.set(true);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12609hk
    /* renamed from: a */
    public final void mo14621a(boolean z, float f) {
        synchronized (this) {
            this.f49339b = z;
            this.f49340c = f;
        }
    }

    /* renamed from: a */
    public final boolean m14623a() {
        boolean z;
        synchronized (this) {
            z = this.f49339b;
        }
        return z;
    }

    /* renamed from: b */
    public final float m14620b() {
        float f;
        synchronized (this) {
            f = this.f49340c;
        }
        return f;
    }

    /* renamed from: b */
    public final boolean m14619b(boolean z) {
        synchronized (this) {
            if (this.f49341d.get()) {
                return this.f49338a;
            }
            return z;
        }
    }
}

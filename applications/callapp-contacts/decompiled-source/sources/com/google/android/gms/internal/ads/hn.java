package com.google.android.gms.internal.ads;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/hn.class */
public final class hn implements hk {

    /* renamed from: a  reason: collision with root package name */
    private boolean f28032a = false;

    /* renamed from: b  reason: collision with root package name */
    private boolean f28033b = false;

    /* renamed from: c  reason: collision with root package name */
    private float f28034c = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: d  reason: collision with root package name */
    private AtomicBoolean f28035d = new AtomicBoolean(false);

    @Override // com.google.android.gms.internal.ads.hk
    public final void a(boolean z) {
        synchronized (this) {
            this.f28032a = z;
            this.f28035d.set(true);
        }
    }

    @Override // com.google.android.gms.internal.ads.hk
    public final void a(boolean z, float f) {
        synchronized (this) {
            this.f28033b = z;
            this.f28034c = f;
        }
    }

    public final boolean a() {
        boolean z;
        synchronized (this) {
            z = this.f28033b;
        }
        return z;
    }

    public final float b() {
        float f;
        synchronized (this) {
            f = this.f28034c;
        }
        return f;
    }

    public final boolean b(boolean z) {
        synchronized (this) {
            if (!this.f28035d.get()) {
                return z;
            }
            return this.f28032a;
        }
    }
}

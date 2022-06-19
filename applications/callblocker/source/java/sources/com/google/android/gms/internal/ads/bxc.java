package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bxc.class */
public final class bxc implements cae<Bundle> {
    @Nullable

    /* renamed from: a */
    private final Location f12434a;

    public bxc(@Nullable Location location) {
        this.f12434a = location;
    }

    @Override // com.google.android.gms.internal.ads.cae
    /* renamed from: a */
    public final /* synthetic */ void mo11481a(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (this.f12434a != null) {
            Bundle bundle3 = new Bundle();
            float accuracy = this.f12434a.getAccuracy();
            long time = this.f12434a.getTime();
            long latitude = (long) (this.f12434a.getLatitude() * 1.0E7d);
            bundle3.putFloat("radius", accuracy * 1000.0f);
            bundle3.putLong("lat", latitude);
            bundle3.putLong("long", (long) (this.f12434a.getLongitude() * 1.0E7d));
            bundle3.putLong("time", time * 1000);
            bundle2.putBundle("uule", bundle3);
        }
    }
}

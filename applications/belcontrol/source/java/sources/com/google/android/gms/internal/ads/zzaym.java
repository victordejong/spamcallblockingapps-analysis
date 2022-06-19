package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.common.util.Clock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaym.class */
public final class zzaym {
    private long zzebt = -1;
    private long zzebu = -1;
    private final /* synthetic */ zzayn zzebv;

    public zzaym(zzayn zzaynVar) {
        this.zzebv = zzaynVar;
    }

    public final Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putLong("topen", this.zzebt);
        bundle.putLong("tclose", this.zzebu);
        return bundle;
    }

    public final long zzxf() {
        return this.zzebu;
    }

    public final void zzxg() {
        Clock clock;
        clock = this.zzebv.zzbqg;
        this.zzebu = clock.elapsedRealtime();
    }

    public final void zzxh() {
        Clock clock;
        clock = this.zzebv.zzbqg;
        this.zzebt = clock.elapsedRealtime();
    }
}

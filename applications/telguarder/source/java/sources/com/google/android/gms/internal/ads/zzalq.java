package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzar;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzalq.class */
public final class zzalq extends zzbad<zzakm> {
    private zzar<zzakm> zzdjp;
    private final Object lock = new Object();
    private boolean zzdkg = false;
    private int zzdkh = 0;

    public zzalq(zzar<zzakm> zzarVar) {
        this.zzdjp = zzarVar;
    }

    private final void zzup() {
        synchronized (this.lock) {
            Preconditions.checkState(this.zzdkh >= 0);
            if (!this.zzdkg || this.zzdkh != 0) {
                zzd.zzeb("There are still references to the engine. Not destroying.");
            } else {
                zzd.zzeb("No reference is left (including root). Cleaning up engine.");
                zza(new zzalv(this), new zzbab());
            }
        }
    }

    public final zzalm zzum() {
        zzalm zzalmVar = new zzalm(this);
        synchronized (this.lock) {
            zza(new zzalt(this, zzalmVar), new zzals(this, zzalmVar));
            Preconditions.checkState(this.zzdkh >= 0);
            this.zzdkh++;
        }
        return zzalmVar;
    }

    public final void zzun() {
        synchronized (this.lock) {
            Preconditions.checkState(this.zzdkh > 0);
            zzd.zzeb("Releasing 1 reference for JS Engine");
            this.zzdkh--;
            zzup();
        }
    }

    public final void zzuo() {
        synchronized (this.lock) {
            Preconditions.checkState(this.zzdkh >= 0);
            zzd.zzeb("Releasing root reference. JS Engine will be destroyed once other references are released.");
            this.zzdkg = true;
            zzup();
        }
    }
}

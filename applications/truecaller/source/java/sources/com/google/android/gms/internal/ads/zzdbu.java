package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdbu.class */
public final class zzdbu extends zzdgm<zzdbw> {
    private boolean zzb = false;

    public zzdbu(Set<zzdih<zzdbw>> set) {
        super(set);
    }

    public final void zza() {
        synchronized (this) {
            if (!this.zzb) {
                zzk(zzdbt.zza);
                this.zzb = true;
            }
        }
    }
}

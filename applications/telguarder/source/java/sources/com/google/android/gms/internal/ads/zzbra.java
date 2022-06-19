package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbra.class */
public final class zzbra implements zzeqb<Bundle> {
    private final zzbqx zzfyz;

    private zzbra(zzbqx zzbqxVar) {
        this.zzfyz = zzbqxVar;
    }

    public static zzbra zzh(zzbqx zzbqxVar) {
        return new zzbra(zzbqxVar);
    }

    public static Bundle zzi(zzbqx zzbqxVar) {
        return zzbqxVar.zzaln();
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return this.zzfyz.zzaln();
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbgh.class */
public final class zzbgh implements zzeqb<WeakReference<Context>> {
    private final zzbgb zzewc;

    public zzbgh(zzbgb zzbgbVar) {
        this.zzewc = zzbgbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (WeakReference) zzeqh.zza(this.zzewc.zzaev(), "Cannot return null from a non-@Nullable @Provides method");
    }
}

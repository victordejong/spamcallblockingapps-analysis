package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.WeakHashMap;
import java.util.concurrent.Future;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaub.class */
public final class zzaub {
    private WeakHashMap<Context, zzaud> zzdyw = new WeakHashMap<>();

    public final Future<zzatz> zzv(Context context) {
        return zzazp.zzeic.zze(new zzaua(this, context));
    }
}

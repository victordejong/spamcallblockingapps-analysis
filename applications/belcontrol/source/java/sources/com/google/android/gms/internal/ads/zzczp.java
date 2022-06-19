package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzczp.class */
public final /* synthetic */ class zzczp implements Callable {
    private final Uri zzgtx;
    private final zzczo zzgzl;
    private final IObjectWrapper zzgzn;

    public zzczp(zzczo zzczoVar, Uri uri, IObjectWrapper iObjectWrapper) {
        this.zzgzl = zzczoVar;
        this.zzgtx = uri;
        this.zzgzn = iObjectWrapper;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzgzl.zzb(this.zzgtx, this.zzgzn);
    }
}

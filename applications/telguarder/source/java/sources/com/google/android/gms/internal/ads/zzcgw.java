package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcgw.class */
public final class zzcgw<T> implements zzaif<Object> {
    private final WeakReference<T> zzgjj;
    private final String zzgjk;
    private final zzaif<T> zzgjl;
    private final /* synthetic */ zzcgk zzgjm;

    private zzcgw(zzcgk zzcgkVar, WeakReference<T> weakReference, String str, zzaif<T> zzaifVar) {
        this.zzgjm = zzcgkVar;
        this.zzgjj = weakReference;
        this.zzgjk = str;
        this.zzgjl = zzaifVar;
    }

    public /* synthetic */ zzcgw(zzcgk zzcgkVar, WeakReference weakReference, String str, zzaif zzaifVar, zzcgl zzcglVar) {
        this(zzcgkVar, weakReference, str, zzaifVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zza(Object obj, Map<String, String> map) {
        T t = this.zzgjj.get();
        if (t == null) {
            this.zzgjm.zzb(this.zzgjk, this);
        } else {
            this.zzgjl.zza(t, map);
        }
    }
}

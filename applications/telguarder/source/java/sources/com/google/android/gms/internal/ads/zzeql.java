package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeql.class */
public final class zzeql<T> implements zzeqo<T> {
    private static final Object zzjby = new Object();
    private volatile Object zzegu = zzjby;
    private volatile zzeqo<T> zzjbz;

    private zzeql(zzeqo<T> zzeqoVar) {
        this.zzjbz = zzeqoVar;
    }

    public static <P extends zzeqo<T>, T> zzeqo<T> zzau(P p) {
        return ((p instanceof zzeql) || (p instanceof zzeqc)) ? p : new zzeql((zzeqo) zzeqh.checkNotNull(p));
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final T get() {
        Object obj = this.zzegu;
        T t = obj;
        if (obj == zzjby) {
            zzeqo<T> zzeqoVar = this.zzjbz;
            if (zzeqoVar == null) {
                t = this.zzegu;
            } else {
                t = zzeqoVar.get();
                this.zzegu = t;
                this.zzjbz = null;
            }
        }
        return (T) t;
    }
}

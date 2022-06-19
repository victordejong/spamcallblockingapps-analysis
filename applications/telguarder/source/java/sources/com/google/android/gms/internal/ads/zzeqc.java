package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeqc.class */
public final class zzeqc<T> implements zzepv<T>, zzeqo<T> {
    private static final Object zzjby = new Object();
    private volatile Object zzegu = zzjby;
    private volatile zzeqo<T> zzjbz;

    private zzeqc(zzeqo<T> zzeqoVar) {
        this.zzjbz = zzeqoVar;
    }

    public static <P extends zzeqo<T>, T> zzeqo<T> zzau(P p) {
        zzeqh.checkNotNull(p);
        return p instanceof zzeqc ? p : new zzeqc(p);
    }

    public static <P extends zzeqo<T>, T> zzepv<T> zzav(P p) {
        return p instanceof zzepv ? (zzepv) p : new zzeqc((zzeqo) zzeqh.checkNotNull(p));
    }

    @Override // com.google.android.gms.internal.ads.zzepv, com.google.android.gms.internal.ads.zzeqo
    public final T get() {
        Object obj = this.zzegu;
        Object obj2 = zzjby;
        T t = obj;
        if (obj == obj2) {
            synchronized (this) {
                Object obj3 = this.zzegu;
                t = obj3;
                if (obj3 == obj2) {
                    t = this.zzjbz.get();
                    Object obj4 = this.zzegu;
                    if ((obj4 != obj2 && !(obj4 instanceof zzeqi)) && obj4 != t) {
                        String valueOf = String.valueOf(obj4);
                        String valueOf2 = String.valueOf(t);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 118 + String.valueOf(valueOf2).length());
                        sb.append("Scoped provider was invoked recursively returning different results: ");
                        sb.append(valueOf);
                        sb.append(" & ");
                        sb.append(valueOf2);
                        sb.append(". This is likely due to a circular dependency.");
                        throw new IllegalStateException(sb.toString());
                    }
                    this.zzegu = t;
                    this.zzjbz = null;
                }
            }
        }
        return (T) t;
    }
}

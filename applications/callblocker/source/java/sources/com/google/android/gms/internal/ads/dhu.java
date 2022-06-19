package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dhu.class */
public final class dhu<T> implements dhn<T>, dig<T> {

    /* renamed from: a */
    private static final Object f14382a = new Object();

    /* renamed from: b */
    private volatile dig<T> f14383b;

    /* renamed from: c */
    private volatile Object f14384c = f14382a;

    private dhu(dig<T> digVar) {
        this.f14383b = digVar;
    }

    /* renamed from: a */
    public static <P extends dig<T>, T> dig<T> m9447a(P p) {
        dhz.m9440a(p);
        if (!(p instanceof dhu)) {
            p = new dhu(p);
        }
        return p;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.gms.internal.ads.dhn] */
    /* renamed from: b */
    public static <P extends dig<T>, T> dhn<T> m9446b(P p) {
        return p instanceof dhn ? (dhn) p : new dhu((dig) dhz.m9440a(p));
    }

    @Override // com.google.android.gms.internal.ads.dhn, com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final T mo9430a() {
        Object obj = this.f14384c;
        T t = obj;
        if (obj == f14382a) {
            synchronized (this) {
                Object obj2 = this.f14384c;
                t = obj2;
                if (obj2 == f14382a) {
                    t = this.f14383b.mo9430a();
                    Object obj3 = this.f14384c;
                    if ((obj3 != f14382a && !(obj3 instanceof dia)) && obj3 != t) {
                        String valueOf = String.valueOf(obj3);
                        String valueOf2 = String.valueOf(t);
                        throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 118 + String.valueOf(valueOf2).length()).append("Scoped provider was invoked recursively returning different results: ").append(valueOf).append(" & ").append(valueOf2).append(". This is likely due to a circular dependency.").toString());
                    }
                    this.f14384c = t;
                    this.f14383b = null;
                }
            }
        }
        return (T) t;
    }
}

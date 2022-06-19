package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/aj3.class */
public final class aj3<T> implements pj3, vi3 {

    /* renamed from: a */
    private static final Object f19976a = new Object();

    /* renamed from: b */
    private volatile pj3<T> f19977b;

    /* renamed from: c */
    private volatile Object f19978c = f19976a;

    private aj3(pj3<T> pj3Var) {
        this.f19977b = pj3Var;
    }

    /* renamed from: a */
    public static <P extends pj3<T>, T> pj3<T> m16584a(P p) {
        Objects.requireNonNull(p);
        return p instanceof aj3 ? p : new aj3(p);
    }

    /* renamed from: c */
    public static <P extends pj3<T>, T> vi3<T> m16583c(P p) {
        if (p instanceof vi3) {
            return (vi3) p;
        }
        Objects.requireNonNull(p);
        return new aj3(p);
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final T mo8141b() {
        Object obj = this.f19978c;
        Object obj2 = f19976a;
        T t = obj;
        if (obj == obj2) {
            synchronized (this) {
                Object obj3 = this.f19978c;
                t = obj3;
                if (obj3 == obj2) {
                    t = this.f19977b.mo8141b();
                    Object obj4 = this.f19978c;
                    if (obj4 != obj2 && obj4 != t) {
                        String valueOf = String.valueOf(obj4);
                        String valueOf2 = String.valueOf(t);
                        StringBuilder sb = new StringBuilder(valueOf.length() + 118 + valueOf2.length());
                        sb.append("Scoped provider was invoked recursively returning different results: ");
                        sb.append(valueOf);
                        sb.append(" & ");
                        sb.append(valueOf2);
                        sb.append(". This is likely due to a circular dependency.");
                        throw new IllegalStateException(sb.toString());
                    }
                    this.f19978c = t;
                    this.f19977b = null;
                }
            }
        }
        return (T) t;
    }
}

package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dsj.class */
public final class dsj<T> implements dsb<T>, dsv<T> {

    /* renamed from: a */
    private static final Object f47511a = new Object();

    /* renamed from: b */
    private volatile dsv<T> f47512b;

    /* renamed from: c */
    private volatile Object f47513c = f47511a;

    private dsj(dsv<T> dsvVar) {
        this.f47512b = dsvVar;
    }

    /* renamed from: a */
    public static <P extends dsv<T>, T> dsv<T> m15774a(P p) {
        dso.m15767a(p);
        return p instanceof dsj ? p : new dsj(p);
    }

    /* renamed from: b */
    public static <P extends dsv<T>, T> dsb<T> m15773b(P p) {
        return p instanceof dsb ? (dsb) p : new dsj((dsv) dso.m15767a(p));
    }

    @Override // com.google.android.gms.internal.ads.dsb, com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final T mo14005a() {
        Object obj = this.f47513c;
        Object obj2 = f47511a;
        T t = obj;
        if (obj == obj2) {
            synchronized (this) {
                Object obj3 = this.f47513c;
                t = obj3;
                if (obj3 == obj2) {
                    t = this.f47512b.mo14005a();
                    Object obj4 = this.f47513c;
                    if ((obj4 != obj2 && !(obj4 instanceof dsp)) && obj4 != t) {
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
                    this.f47513c = t;
                    this.f47512b = null;
                }
            }
        }
        return (T) t;
    }
}

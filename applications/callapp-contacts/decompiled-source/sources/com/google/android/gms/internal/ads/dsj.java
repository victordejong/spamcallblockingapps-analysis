package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dsj.class */
public final class dsj<T> implements dsb<T>, dsv<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f27155a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private volatile dsv<T> f27156b;

    /* renamed from: c  reason: collision with root package name */
    private volatile Object f27157c = f27155a;

    private dsj(dsv<T> dsvVar) {
        this.f27156b = dsvVar;
    }

    public static <P extends dsv<T>, T> dsv<T> a(P p) {
        dso.a(p);
        return p instanceof dsj ? p : new dsj(p);
    }

    public static <P extends dsv<T>, T> dsb<T> b(P p) {
        return p instanceof dsb ? (dsb) p : new dsj((dsv) dso.a(p));
    }

    @Override // com.google.android.gms.internal.ads.dsb, com.google.android.gms.internal.ads.dsv
    public final T a() {
        Object obj = this.f27157c;
        Object obj2 = f27155a;
        T t = (T) obj;
        if (obj == obj2) {
            synchronized (this) {
                Object obj3 = this.f27157c;
                t = obj3;
                if (obj3 == obj2) {
                    t = this.f27156b.a();
                    Object obj4 = this.f27157c;
                    if (!(obj4 != obj2 && !(obj4 instanceof dsp)) || obj4 == t) {
                        this.f27157c = t;
                        this.f27156b = null;
                    } else {
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
                }
            }
        }
        return t;
    }
}

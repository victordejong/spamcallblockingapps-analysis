package com.google.android.play.core.internal;
/* renamed from: com.google.android.play.core.internal.bc */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/bc.class */
public final class C15039bc<T> implements AbstractC15037ba, AbstractC15041be {

    /* renamed from: a */
    private static final Object f54761a = new Object();

    /* renamed from: b */
    private volatile AbstractC15041be<T> f54762b;

    /* renamed from: c */
    private volatile Object f54763c = f54761a;

    private C15039bc(AbstractC15041be<T> abstractC15041be) {
        this.f54762b = abstractC15041be;
    }

    /* renamed from: a */
    public static <P extends AbstractC15041be<T>, T> AbstractC15041be<T> m9574a(P p) {
        return p instanceof C15039bc ? p : new C15039bc(p);
    }

    /* renamed from: b */
    public static <P extends AbstractC15041be<T>, T> AbstractC15037ba<T> m9573b(P p) {
        return p instanceof AbstractC15037ba ? (AbstractC15037ba) p : new C15039bc(p);
    }

    @Override // com.google.android.play.core.internal.AbstractC15037ba, com.google.android.play.core.internal.AbstractC15041be
    /* renamed from: a */
    public final T mo9335a() {
        Object obj = this.f54763c;
        Object obj2 = f54761a;
        T t = obj;
        if (obj == obj2) {
            synchronized (this) {
                Object obj3 = this.f54763c;
                t = obj3;
                if (obj3 == obj2) {
                    t = this.f54762b.mo9335a();
                    Object obj4 = this.f54763c;
                    if (obj4 != obj2 && !(obj4 instanceof C15040bd) && obj4 != t) {
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
                    this.f54763c = t;
                    this.f54762b = null;
                }
            }
        }
        return (T) t;
    }
}

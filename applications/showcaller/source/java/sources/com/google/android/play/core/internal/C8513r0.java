package com.google.android.play.core.internal;
/* renamed from: com.google.android.play.core.internal.r0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/r0.class */
public final class C8513r0<T> implements AbstractC8515s0, AbstractC8509p0 {

    /* renamed from: a */
    private static final Object f38077a = new Object();

    /* renamed from: b */
    private volatile AbstractC8515s0<T> f38078b;

    /* renamed from: c */
    private volatile Object f38079c = f38077a;

    private C8513r0(AbstractC8515s0<T> abstractC8515s0) {
        this.f38078b = abstractC8515s0;
    }

    /* renamed from: b */
    public static <P extends AbstractC8515s0<T>, T> AbstractC8515s0<T> m3473b(P p) {
        C8480d0.m3542j(p);
        return p instanceof C8513r0 ? p : new C8513r0(p);
    }

    /* renamed from: c */
    public static <P extends AbstractC8515s0<T>, T> AbstractC8509p0<T> m3472c(P p) {
        if (p instanceof AbstractC8509p0) {
            return (AbstractC8509p0) p;
        }
        C8480d0.m3542j(p);
        return new C8513r0(p);
    }

    @Override // com.google.android.play.core.internal.AbstractC8515s0
    /* renamed from: a */
    public final T mo3471a() {
        Object obj = this.f38079c;
        Object obj2 = f38077a;
        T t = obj;
        if (obj == obj2) {
            synchronized (this) {
                Object obj3 = this.f38079c;
                t = obj3;
                if (obj3 == obj2) {
                    t = this.f38078b.mo3471a();
                    Object obj4 = this.f38079c;
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
                    this.f38079c = t;
                    this.f38078b = null;
                }
            }
        }
        return (T) t;
    }
}

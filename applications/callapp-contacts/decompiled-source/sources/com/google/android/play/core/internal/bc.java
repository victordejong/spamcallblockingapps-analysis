package com.google.android.play.core.internal;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/bc.class */
public final class bc<T> implements ba, be {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f31359a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private volatile be<T> f31360b;

    /* renamed from: c  reason: collision with root package name */
    private volatile Object f31361c = f31359a;

    private bc(be<T> beVar) {
        this.f31360b = beVar;
    }

    public static <P extends be<T>, T> be<T> a(P p) {
        return p instanceof bc ? p : new bc(p);
    }

    public static <P extends be<T>, T> ba<T> b(P p) {
        return p instanceof ba ? (ba) p : new bc(p);
    }

    @Override // com.google.android.play.core.internal.ba, com.google.android.play.core.internal.be
    public final T a() {
        Object obj = this.f31361c;
        Object obj2 = f31359a;
        T t = (T) obj;
        if (obj == obj2) {
            synchronized (this) {
                Object obj3 = this.f31361c;
                t = obj3;
                if (obj3 == obj2) {
                    t = this.f31360b.a();
                    Object obj4 = this.f31361c;
                    if (obj4 == obj2 || (obj4 instanceof bd) || obj4 == t) {
                        this.f31361c = t;
                        this.f31360b = null;
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

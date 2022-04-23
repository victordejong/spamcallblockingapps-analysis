package com.google.android.datatransport.runtime.a.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/a/a/a.class */
public final class a<T> implements javax.a.a<T> {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f20393a = true;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f20394b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private volatile javax.a.a<T> f20395c;

    /* renamed from: d  reason: collision with root package name */
    private volatile Object f20396d = f20394b;

    private a(javax.a.a<T> aVar) {
        if (f20393a || aVar != null) {
            this.f20395c = aVar;
            return;
        }
        throw new AssertionError();
    }

    public static <P extends javax.a.a<T>, T> javax.a.a<T> a(P p) {
        e.a(p);
        return p instanceof a ? p : new a(p);
    }

    @Override // javax.a.a
    public final T a() {
        Object obj = this.f20396d;
        Object obj2 = f20394b;
        T t = (T) obj;
        if (obj == obj2) {
            synchronized (this) {
                Object obj3 = this.f20396d;
                t = obj3;
                if (obj3 == obj2) {
                    t = this.f20395c.a();
                    Object obj4 = this.f20396d;
                    if (!(obj4 != obj2 && !(obj4 instanceof d)) || obj4 == t) {
                        this.f20396d = t;
                        this.f20395c = null;
                    } else {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj4 + " & " + t + ". This is likely due to a circular dependency.");
                    }
                }
            }
        }
        return t;
    }
}

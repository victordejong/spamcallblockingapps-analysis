package com.google.android.gms.internal.consent_sdk;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/br.class */
public final class br<T> implements bu<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f28767a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private volatile bu<T> f28768b;

    /* renamed from: c  reason: collision with root package name */
    private volatile Object f28769c = f28767a;

    private br(bu<T> buVar) {
        this.f28768b = buVar;
    }

    public static <P extends bu<T>, T> bu<T> a(P p) {
        bv.a(p);
        return p instanceof br ? p : new br(p);
    }

    @Override // com.google.android.gms.internal.consent_sdk.bu
    public final T a() {
        Object obj = this.f28769c;
        Object obj2 = f28767a;
        T t = (T) obj;
        if (obj == obj2) {
            synchronized (this) {
                Object obj3 = this.f28769c;
                t = obj3;
                if (obj3 == obj2) {
                    t = this.f28768b.a();
                    Object obj4 = this.f28769c;
                    if (!(obj4 != obj2 && !(obj4 instanceof bs)) || obj4 == t) {
                        this.f28769c = t;
                        this.f28768b = null;
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

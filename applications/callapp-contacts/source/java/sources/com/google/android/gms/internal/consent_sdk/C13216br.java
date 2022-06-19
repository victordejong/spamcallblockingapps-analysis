package com.google.android.gms.internal.consent_sdk;
/* renamed from: com.google.android.gms.internal.consent_sdk.br */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/br.class */
public final class C13216br<T> implements AbstractC13219bu<T> {

    /* renamed from: a */
    private static final Object f50398a = new Object();

    /* renamed from: b */
    private volatile AbstractC13219bu<T> f50399b;

    /* renamed from: c */
    private volatile Object f50400c = f50398a;

    private C13216br(AbstractC13219bu<T> abstractC13219bu) {
        this.f50399b = abstractC13219bu;
    }

    /* renamed from: a */
    public static <P extends AbstractC13219bu<T>, T> AbstractC13219bu<T> m13555a(P p) {
        C13220bv.m13553a(p);
        return p instanceof C13216br ? p : new C13216br(p);
    }

    @Override // com.google.android.gms.internal.consent_sdk.AbstractC13219bu
    /* renamed from: a */
    public final T mo13528a() {
        Object obj = this.f50400c;
        Object obj2 = f50398a;
        T t = obj;
        if (obj == obj2) {
            synchronized (this) {
                Object obj3 = this.f50400c;
                t = obj3;
                if (obj3 == obj2) {
                    t = this.f50399b.mo13528a();
                    Object obj4 = this.f50400c;
                    if ((obj4 != obj2 && !(obj4 instanceof C13217bs)) && obj4 != t) {
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
                    this.f50400c = t;
                    this.f50399b = null;
                }
            }
        }
        return (T) t;
    }
}

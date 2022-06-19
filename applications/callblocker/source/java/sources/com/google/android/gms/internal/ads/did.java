package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/did.class */
public final class did<T> implements dig<T> {

    /* renamed from: a */
    private static final Object f14391a = new Object();

    /* renamed from: b */
    private volatile dig<T> f14392b;

    /* renamed from: c */
    private volatile Object f14393c = f14391a;

    private did(dig<T> digVar) {
        this.f14392b = digVar;
    }

    /* renamed from: a */
    public static <P extends dig<T>, T> dig<T> m9436a(P p) {
        did didVar = p;
        if (!(p instanceof did)) {
            didVar = p instanceof dhu ? p : new did((dig) dhz.m9440a(p));
        }
        return didVar;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final T mo9430a() {
        Object obj = this.f14393c;
        T t = obj;
        if (obj == f14391a) {
            dig<T> digVar = this.f14392b;
            if (digVar == null) {
                t = this.f14393c;
            } else {
                t = digVar.mo9430a();
                this.f14393c = t;
                this.f14392b = null;
            }
        }
        return (T) t;
    }
}

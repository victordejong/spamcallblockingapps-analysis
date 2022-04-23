package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzepi.class */
public final class zzepi<T> implements zzeph<T> {

    /* renamed from: c */
    public static final Object f28148c = new Object();

    /* renamed from: a */
    public volatile zzeph<T> f28149a;

    /* renamed from: b */
    public volatile Object f28150b = f28148c;

    public zzepi(zzeph<T> zzephVar) {
        this.f28149a = zzephVar;
    }

    /* renamed from: a */
    public static <P extends zzeph<T>, T> zzeph<T> m12183a(P p) {
        if ((p instanceof zzepi) || (p instanceof zzeov)) {
            return p;
        }
        zzepe.m12189a(p);
        return new zzepi(p);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final T get() {
        Object obj = this.f28150b;
        T t = (T) obj;
        if (obj == f28148c) {
            zzeph<T> zzephVar = this.f28149a;
            if (zzephVar == null) {
                t = (T) this.f28150b;
            } else {
                t = zzephVar.get();
                this.f28150b = t;
                this.f28149a = null;
            }
        }
        return t;
    }
}

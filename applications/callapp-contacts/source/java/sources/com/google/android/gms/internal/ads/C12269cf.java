package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.cf */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cf.class */
public final class C12269cf<T> extends C12259bz<T> {
    public C12269cf(String str, Object obj, int i) {
        super(str, obj, i);
    }

    /* renamed from: a */
    public static C12259bz<Boolean> m17480a(String str) {
        return new C12269cf(str, Boolean.TRUE, C12264cc.f45487a);
    }

    @Override // com.google.android.gms.internal.ads.C12259bz
    /* renamed from: a */
    public final T mo17481a() {
        if (C12320dc.f46932a.get()) {
            return (T) super.mo17481a();
        }
        throw new IllegalStateException("Striped code is accessed: 54c42518-856a-44fb-aae0-cd6676d514e5");
    }
}

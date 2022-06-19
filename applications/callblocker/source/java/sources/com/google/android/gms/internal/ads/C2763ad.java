package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.ad */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ad.class */
public final class C2763ad<T> extends C2761ab<T> {
    public C2763ad(String str, Object obj, int i) {
        super(str, obj, i);
    }

    /* renamed from: b */
    public static C2761ab<Boolean> m13598b(String str, boolean z) {
        return new C2763ad(str, true, C2765ae.f7978a);
    }

    @Override // com.google.android.gms.internal.ads.C2761ab
    /* renamed from: a */
    public final T mo13599a() {
        if (!C2828be.f11055a.get()) {
            throw new IllegalStateException("Striped code is accessed: 54c42518-856a-44fb-aae0-cd6676d514e5");
        }
        return (T) super.mo13599a();
    }
}

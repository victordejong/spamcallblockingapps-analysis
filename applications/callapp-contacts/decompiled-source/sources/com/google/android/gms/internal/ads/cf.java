package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cf.class */
public final class cf<T> extends bz<T> {
    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Incorrect types in method signature: (Ljava/lang/String;TT;Ljava/lang/Integer;)V */
    public cf(String str, Object obj, int i) {
        super(str, obj, i);
    }

    public static bz<Boolean> a(String str) {
        return new cf(str, Boolean.TRUE, cc.f25566a);
    }

    @Override // com.google.android.gms.internal.ads.bz
    public final T a() {
        if (dc.f26713a.get()) {
            return (T) super.a();
        }
        throw new IllegalStateException("Striped code is accessed: 54c42518-856a-44fb-aae0-cd6676d514e5");
    }
}

package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/df3.class */
final class df3 implements kf3 {

    /* renamed from: a */
    private final kf3[] f21611a;

    public df3(kf3... kf3VarArr) {
        this.f21611a = kf3VarArr;
    }

    @Override // com.google.android.gms.internal.ads.kf3
    /* renamed from: a */
    public final boolean mo13914a(Class<?> cls) {
        kf3[] kf3VarArr = this.f21611a;
        for (int i = 0; i < 2; i++) {
            if (kf3VarArr[i].mo13914a(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.kf3
    /* renamed from: b */
    public final jf3 mo13913b(Class<?> cls) {
        kf3[] kf3VarArr = this.f21611a;
        for (int i = 0; i < 2; i++) {
            kf3 kf3Var = kf3VarArr[i];
            if (kf3Var.mo13914a(cls)) {
                return kf3Var.mo13913b(cls);
            }
        }
        String name = cls.getName();
        throw new UnsupportedOperationException(name.length() != 0 ? "No factory is available for message type: ".concat(name) : new String("No factory is available for message type: "));
    }
}

package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cv2.class */
final class cv2 extends fv2 {

    /* renamed from: j */
    final /* synthetic */ dv2 f21387j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cv2(dv2 dv2Var, hv2 hv2Var, CharSequence charSequence) {
        super(hv2Var, charSequence);
        this.f21387j = dv2Var;
    }

    @Override // com.google.android.gms.internal.ads.fv2
    /* renamed from: c */
    public final int mo8172c(int i) {
        int i2 = i + 4000;
        if (i2 < this.f23153f.length()) {
            return i2;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.fv2
    /* renamed from: d */
    public final int mo8171d(int i) {
        return i;
    }
}

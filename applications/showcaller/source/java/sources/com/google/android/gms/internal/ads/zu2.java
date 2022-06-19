package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zu2.class */
final class zu2 extends fv2 {

    /* renamed from: j */
    final /* synthetic */ bv2 f33408j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zu2(bv2 bv2Var, hv2 hv2Var, CharSequence charSequence) {
        super(hv2Var, charSequence);
        this.f33408j = bv2Var;
    }

    @Override // com.google.android.gms.internal.ads.fv2
    /* renamed from: c */
    final int mo8172c(int i) {
        int i2;
        ku2 ku2Var = this.f33408j.f20976a;
        CharSequence charSequence = this.f23153f;
        int length = charSequence.length();
        xu2.m9051f(i, length, "index");
        while (true) {
            if (i >= length) {
                i2 = -1;
                break;
            }
            i2 = i;
            if (ku2Var.mo13781a(charSequence.charAt(i))) {
                break;
            }
            i++;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.fv2
    /* renamed from: d */
    final int mo8171d(int i) {
        return i + 1;
    }
}

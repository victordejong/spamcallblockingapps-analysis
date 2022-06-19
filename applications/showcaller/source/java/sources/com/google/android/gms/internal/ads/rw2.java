package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rw2.class */
final class rw2 extends uw2 {
    public rw2() {
        super(null);
    }

    /* renamed from: j */
    static final uw2 m11263j(int i) {
        uw2 uw2Var;
        uw2 uw2Var2;
        uw2 uw2Var3;
        uw2 uw2Var4;
        if (i < 0) {
            uw2Var4 = uw2.f30993b;
            uw2Var = uw2Var4;
        } else if (i > 0) {
            uw2Var3 = uw2.f30994c;
            uw2Var = uw2Var3;
        } else {
            uw2Var2 = uw2.f30992a;
            uw2Var = uw2Var2;
        }
        return uw2Var;
    }

    @Override // com.google.android.gms.internal.ads.uw2
    /* renamed from: a */
    public final <T> uw2 mo10166a(T t, T t2, Comparator<T> comparator) {
        return m11263j(comparator.compare(t, t2));
    }

    @Override // com.google.android.gms.internal.ads.uw2
    /* renamed from: b */
    public final uw2 mo10165b(int i, int i2) {
        return m11263j(i < i2 ? -1 : i > i2 ? 1 : 0);
    }

    @Override // com.google.android.gms.internal.ads.uw2
    /* renamed from: c */
    public final uw2 mo10164c(boolean z, boolean z2) {
        return m11263j(oy2.m12473a(false, false));
    }

    @Override // com.google.android.gms.internal.ads.uw2
    /* renamed from: d */
    public final uw2 mo10163d(boolean z, boolean z2) {
        return m11263j(oy2.m12473a(z, z2));
    }

    @Override // com.google.android.gms.internal.ads.uw2
    /* renamed from: e */
    public final int mo10162e() {
        return 0;
    }
}

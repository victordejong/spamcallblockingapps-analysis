package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/die.class */
public final class die<T> {

    /* renamed from: a */
    private final List<dig<T>> f14394a;

    /* renamed from: b */
    private final List<dig<Collection<T>>> f14395b;

    /* JADX INFO: Access modifiers changed from: private */
    public die(int i, int i2) {
        this.f14394a = dhs.m9451a(i);
        this.f14395b = dhs.m9451a(i2);
    }

    /* renamed from: a */
    public final dic<T> m9435a() {
        return new dic<>(this.f14394a, this.f14395b);
    }

    /* renamed from: a */
    public final die<T> m9434a(dig<? extends T> digVar) {
        this.f14394a.add(digVar);
        return this;
    }

    /* renamed from: b */
    public final die<T> m9433b(dig<? extends Collection<? extends T>> digVar) {
        this.f14395b.add(digVar);
        return this;
    }
}

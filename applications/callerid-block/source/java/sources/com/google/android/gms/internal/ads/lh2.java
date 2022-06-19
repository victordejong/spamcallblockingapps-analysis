package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/lh2.class */
public final class lh2<T> {

    /* renamed from: a */
    private final List<oh2<T>> f7098a;

    /* renamed from: b */
    private final List<oh2<Collection<T>>> f7099b;

    /* synthetic */ lh2(int i, int i2, kh2 kh2Var) {
        this.f7098a = bh2.m7990a(i);
        this.f7099b = bh2.m7990a(i2);
    }

    /* renamed from: a */
    public final lh2<T> m6698a(oh2<? extends T> oh2Var) {
        this.f7098a.add(oh2Var);
        return this;
    }

    /* renamed from: b */
    public final lh2<T> m6697b(oh2<? extends Collection<? extends T>> oh2Var) {
        this.f7099b.add(oh2Var);
        return this;
    }

    /* renamed from: c */
    public final mh2<T> m6696c() {
        return new mh2<>(this.f7098a, this.f7099b, (kh2) null);
    }
}

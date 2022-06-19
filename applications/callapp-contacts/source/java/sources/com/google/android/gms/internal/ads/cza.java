package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cza.class */
public final class cza extends cyz<E> {

    /* renamed from: a */
    private final transient int f46781a;

    /* renamed from: b */
    private final transient int f46782b;

    /* renamed from: c */
    private final /* synthetic */ cyz f46783c;

    public cza(cyz cyzVar, int i, int i2) {
        this.f46783c = cyzVar;
        this.f46781a = i;
        this.f46782b = i2;
    }

    @Override // com.google.android.gms.internal.ads.cyz
    /* renamed from: a */
    public final cyz<E> mo17030a(int i, int i2) {
        cyg.m17062a(i, i2, this.f46782b);
        cyz cyzVar = this.f46783c;
        int i3 = this.f46781a;
        return (cyz) cyzVar.subList(i + i3, i2 + i3);
    }

    @Override // com.google.android.gms.internal.ads.cyt
    /* renamed from: b */
    public final Object[] mo17001b() {
        return this.f46783c.mo17001b();
    }

    @Override // com.google.android.gms.internal.ads.cyt
    /* renamed from: c */
    public final int mo17000c() {
        return this.f46783c.mo17000c() + this.f46781a;
    }

    @Override // com.google.android.gms.internal.ads.cyt
    /* renamed from: d */
    final int mo16999d() {
        return this.f46783c.mo17000c() + this.f46781a + this.f46782b;
    }

    @Override // com.google.android.gms.internal.ads.cyt
    /* renamed from: f */
    public final boolean mo16995f() {
        return true;
    }

    @Override // java.util.List
    public final E get(int i) {
        cyg.m17063a(i, this.f46782b);
        return this.f46783c.get(i + this.f46781a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f46782b;
    }

    @Override // com.google.android.gms.internal.ads.cyz, java.util.List
    public final /* synthetic */ List subList(int i, int i2) {
        return subList(i, i2);
    }
}

package com.google.android.gms.internal.ads;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cza.class */
public final class cza extends cyz<E> {

    /* renamed from: a  reason: collision with root package name */
    private final transient int f26586a;

    /* renamed from: b  reason: collision with root package name */
    private final transient int f26587b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ cyz f26588c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cza(cyz cyzVar, int i, int i2) {
        this.f26588c = cyzVar;
        this.f26586a = i;
        this.f26587b = i2;
    }

    @Override // com.google.android.gms.internal.ads.cyz
    public final cyz<E> a(int i, int i2) {
        cyg.a(i, i2, this.f26587b);
        cyz cyzVar = this.f26588c;
        int i3 = this.f26586a;
        return (cyz) cyzVar.subList(i + i3, i2 + i3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.cyt
    public final Object[] b() {
        return this.f26588c.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.cyt
    public final int c() {
        return this.f26588c.c() + this.f26586a;
    }

    @Override // com.google.android.gms.internal.ads.cyt
    final int d() {
        return this.f26588c.c() + this.f26586a + this.f26587b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.cyt
    public final boolean f() {
        return true;
    }

    @Override // java.util.List
    public final E get(int i) {
        cyg.a(i, this.f26587b);
        return this.f26588c.get(i + this.f26586a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f26587b;
    }

    @Override // com.google.android.gms.internal.ads.cyz, java.util.List
    public final /* synthetic */ List subList(int i, int i2) {
        return subList(i, i2);
    }
}

package com.google.android.gms.internal.location;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/ad.class */
public final class ad extends ae {

    /* renamed from: a  reason: collision with root package name */
    final transient int f28889a;

    /* renamed from: b  reason: collision with root package name */
    final transient int f28890b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ ae f28891c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad(ae aeVar, int i, int i2) {
        this.f28891c = aeVar;
        this.f28889a = i;
        this.f28890b = i2;
    }

    @Override // com.google.android.gms.internal.location.ae
    public final ae a(int i, int i2) {
        y.a(i, i2, this.f28890b);
        ae aeVar = this.f28891c;
        int i3 = this.f28889a;
        return aeVar.subList(i + i3, i2 + i3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.location.ab
    public final Object[] b() {
        return this.f28891c.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.location.ab
    public final int c() {
        return this.f28891c.c() + this.f28889a;
    }

    @Override // com.google.android.gms.internal.location.ab
    final int d() {
        return this.f28891c.c() + this.f28889a + this.f28890b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.location.ab
    public final boolean f() {
        return true;
    }

    @Override // java.util.List
    public final Object get(int i) {
        y.a(i, this.f28890b);
        return this.f28891c.get(i + this.f28889a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f28890b;
    }

    @Override // com.google.android.gms.internal.location.ae, java.util.List
    public final /* synthetic */ List subList(int i, int i2) {
        return subList(i, i2);
    }
}

package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzft.class */
final class zzft extends zzfb<Object> {

    /* renamed from: h */
    private final transient Object[] f8440h;

    /* renamed from: i */
    private final transient int f8441i;

    /* renamed from: j */
    private final transient int f8442j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzft(Object[] objArr, int i, int i2) {
        this.f8440h = objArr;
        this.f8441i = i;
        this.f8442j = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzeb.m12742a(i, this.f8442j);
        return this.f8440h[(i * 2) + this.f8441i];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzey
    /* renamed from: h */
    public final boolean mo12673h() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8442j;
    }
}

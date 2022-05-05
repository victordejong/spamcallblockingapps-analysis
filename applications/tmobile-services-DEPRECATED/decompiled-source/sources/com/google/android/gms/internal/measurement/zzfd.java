package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfd.class */
final class zzfd extends zzfb<E> {

    /* renamed from: h */
    private final transient int f8411h;

    /* renamed from: i */
    private final transient int f8412i;

    /* renamed from: j */
    private final /* synthetic */ zzfb f8413j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfd(zzfb zzfbVar, int i, int i2) {
        this.f8413j = zzfbVar;
        this.f8411h = i;
        this.f8412i = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzey
    /* renamed from: e */
    public final Object[] mo12678e() {
        return this.f8413j.mo12678e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzey
    /* renamed from: f */
    public final int mo12677f() {
        return this.f8413j.mo12677f() + this.f8411h;
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    /* renamed from: g */
    final int mo12676g() {
        return this.f8413j.mo12677f() + this.f8411h + this.f8412i;
    }

    @Override // java.util.List
    public final E get(int i) {
        zzeb.m12742a(i, this.f8412i);
        return this.f8413j.get(i + this.f8411h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzey
    /* renamed from: h */
    public final boolean mo12673h() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzfb
    /* renamed from: j */
    public final zzfb<E> subList(int i, int i2) {
        zzeb.m12738e(i, i2, this.f8412i);
        zzfb zzfbVar = this.f8413j;
        int i3 = this.f8411h;
        return (zzfb) zzfbVar.subList(i + i3, i2 + i3);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8412i;
    }
}

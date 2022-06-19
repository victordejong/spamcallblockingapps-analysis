package com.google.android.gms.internal.firebase_perf;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzw.class */
final class zzw extends zzj<Object> {
    private final transient int offset;
    private final transient int size;
    private final transient Object[] zzf;

    public zzw(Object[] objArr, int i, int i2) {
        this.zzf = objArr;
        this.offset = i;
        this.size = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzd.zza(i, this.size);
        return this.zzf[(i * 2) + this.offset];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }
}

package com.google.android.gms.internal.firebase_perf;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzp.class */
public final class zzp<E> extends zzj<E> {
    static final zzj<Object> zzl = new zzp(new Object[0], 0);
    private final transient int size;
    private final transient Object[] zzm;

    public zzp(Object[] objArr, int i) {
        this.zzm = objArr;
        this.size = i;
    }

    @Override // java.util.List
    public final E get(int i) {
        zzd.zza(i, this.size);
        return (E) this.zzm[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_perf.zzj, com.google.android.gms.internal.firebase_perf.zzk
    public final int zza(Object[] objArr, int i) {
        System.arraycopy(this.zzm, 0, objArr, i, this.size);
        return i + this.size;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzk
    public final Object[] zzd() {
        return this.zzm;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzk
    public final int zze() {
        return 0;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzk
    final int zzf() {
        return this.size;
    }
}

package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzj;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzl.class */
public final class zzl extends zzj<E> {
    private final transient int length;
    private final transient int offset;
    private final /* synthetic */ zzj zzd;

    public zzl(zzj zzjVar, int i, int i2) {
        this.zzd = zzjVar;
        this.offset = i;
        this.length = i2;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [E, java.lang.Object] */
    @Override // java.util.List
    public final E get(int i) {
        zzd.zza(i, this.length);
        return this.zzd.get(i + this.offset);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.length;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzj, java.util.List
    public final /* synthetic */ List subList(int i, int i2) {
        return subList(i, i2);
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzj
    public final zzj<E> zzc(int i, int i2) {
        zzd.zza(i, i2, this.length);
        zzj zzjVar = this.zzd;
        int i3 = this.offset;
        return (zzj) zzjVar.subList(i + i3, i2 + i3);
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzk
    public final Object[] zzd() {
        return this.zzd.zzd();
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzk
    public final int zze() {
        return this.zzd.zze() + this.offset;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzk
    final int zzf() {
        return this.zzd.zze() + this.offset + this.length;
    }
}

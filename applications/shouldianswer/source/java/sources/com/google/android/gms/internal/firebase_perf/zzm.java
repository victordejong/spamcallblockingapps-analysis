package com.google.android.gms.internal.firebase_perf;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzm.class */
public final class zzm<E> extends zzf<E> {
    private final zzj<E> zze;

    public zzm(zzj<E> zzjVar, int i) {
        super(zzjVar.size(), i);
        this.zze = zzjVar;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzf
    protected final E get(int i) {
        return this.zze.get(i);
    }
}

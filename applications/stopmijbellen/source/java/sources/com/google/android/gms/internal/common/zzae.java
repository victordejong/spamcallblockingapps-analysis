package com.google.android.gms.internal.common;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/common/zzae.class */
public final class zzae<E> extends zzz<E> {
    private final zzag<E> zza;

    public zzae(zzag<E> zzagVar, int i) {
        super(zzagVar.size(), i);
        this.zza = zzagVar;
    }

    @Override // com.google.android.gms.internal.common.zzz
    public final E zza(int i) {
        return this.zza.get(i);
    }
}

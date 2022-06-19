package com.google.android.gms.internal.common;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/common/zzs.class */
public final class zzs<E> extends zzn<E> {
    private final zzu<E> zza;

    public zzs(zzu<E> zzuVar, int i) {
        super(zzuVar.size(), i);
        this.zza = zzuVar;
    }

    @Override // com.google.android.gms.internal.common.zzn
    protected final E zza(int i) {
        return this.zza.get(i);
    }
}

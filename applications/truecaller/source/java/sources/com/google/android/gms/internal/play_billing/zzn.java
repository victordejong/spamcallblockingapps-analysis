package com.google.android.gms.internal.play_billing;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/play_billing/zzn.class */
public final class zzn<E> extends zzl<E> {
    private final zzp<E> zza;

    public zzn(zzp<E> zzpVar, int i) {
        super(zzpVar.size(), i);
        this.zza = zzpVar;
    }

    @Override // com.google.android.gms.internal.play_billing.zzl
    public final E zza(int i) {
        return this.zza.get(i);
    }
}

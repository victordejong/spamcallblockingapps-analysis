package com.google.android.gms.internal.location;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzbq.class */
public final class zzbq<E> extends zzbo<E> {
    private final zzbs<E> zza;

    public zzbq(zzbs<E> zzbsVar, int i) {
        super(zzbsVar.size(), i);
        this.zza = zzbsVar;
    }

    @Override // com.google.android.gms.internal.location.zzbo
    protected final E zza(int i) {
        return this.zza.get(i);
    }
}

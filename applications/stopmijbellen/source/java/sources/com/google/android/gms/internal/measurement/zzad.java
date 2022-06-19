package com.google.android.gms.internal.measurement;

import android.support.p012v4.media.C0082b;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzad.class */
final class zzad implements Iterator<zzap> {
    public final /* synthetic */ zzae zza;
    private int zzb = 0;

    public zzad(zzae zzaeVar) {
        this.zza = zzaeVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb < this.zza.zzh();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ zzap next() {
        if (this.zzb < this.zza.zzh()) {
            zzae zzaeVar = this.zza;
            int i = this.zzb;
            this.zzb = i + 1;
            return zzaeVar.zzl(i);
        }
        throw new NoSuchElementException(C0082b.m8758d(32, "Out of bounds index: ", this.zzb));
    }
}

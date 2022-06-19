package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzac.class */
final class zzac implements Iterator<zzap> {
    public final /* synthetic */ Iterator zza;
    public final /* synthetic */ Iterator zzb;

    public zzac(zzae zzaeVar, Iterator it2, Iterator it3) {
        this.zza = it2;
        this.zzb = it3;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.zza.hasNext()) {
            return true;
        }
        return this.zzb.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ zzap next() {
        zzat zzatVar;
        if (this.zza.hasNext()) {
            zzatVar = new zzat(((Integer) this.zza.next()).toString());
        } else if (!this.zzb.hasNext()) {
            throw new NoSuchElementException();
        } else {
            zzatVar = new zzat((String) this.zzb.next());
        }
        return zzatVar;
    }
}

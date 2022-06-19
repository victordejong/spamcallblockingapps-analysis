package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzac.class */
public final class zzac implements Iterator {
    public final /* synthetic */ Iterator zza;
    public final /* synthetic */ Iterator zzb;

    public zzac(zzae zzaeVar, Iterator it, Iterator it2) {
        this.zza = it;
        this.zzb = it2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.zza.hasNext()) {
            return true;
        }
        return this.zzb.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
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

package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzar.class */
final class zzar implements Iterator<zzap> {
    public final /* synthetic */ zzat zza;
    private int zzb = 0;

    public zzar(zzat zzatVar) {
        this.zza = zzatVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        String str;
        int i = this.zzb;
        str = this.zza.zza;
        return i < str.length();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ zzap next() {
        String str;
        int i = this.zzb;
        str = this.zza.zza;
        if (i < str.length()) {
            int i2 = this.zzb;
            this.zzb = i2 + 1;
            return new zzat(String.valueOf(i2));
        }
        throw new NoSuchElementException();
    }
}

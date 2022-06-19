package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzas.class */
final class zzas implements Iterator<zzap> {
    public final /* synthetic */ zzat zza;
    private int zzb = 0;

    public zzas(zzat zzatVar) {
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
        String str2;
        int i = this.zzb;
        str = this.zza.zza;
        if (i < str.length()) {
            str2 = this.zza.zza;
            int i2 = this.zzb;
            this.zzb = i2 + 1;
            return new zzat(String.valueOf(str2.charAt(i2)));
        }
        throw new NoSuchElementException();
    }
}

package com.google.android.libraries.places.internal;

import java.io.Serializable;
import java.lang.Comparable;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzgd.class */
public abstract class zzgd<C extends Comparable> implements Serializable, Comparable<zzgd<C>> {
    public final C zza;

    public zzgd(C c) {
        this.zza = c;
    }

    public static <C extends Comparable> zzgd<C> zzb(C c) {
        return new zzgh(c);
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(Object obj) {
        return zza((zzgd) ((zzgd) obj));
    }

    public boolean equals(Object obj) {
        if (obj instanceof zzgd) {
            try {
                return zza((zzgd) ((zzgd) obj)) == 0;
            } catch (ClassCastException e) {
                return false;
            }
        }
        return false;
    }

    public abstract int hashCode();

    public int zza(zzgd<C> zzgdVar) {
        if (zzgdVar == zzge.zza()) {
            return 1;
        }
        if (zzgdVar == zzgc.zza()) {
            return -1;
        }
        int zzc = zzgr.zzc(this.zza, zzgdVar.zza);
        if (zzc != 0) {
            return zzc;
        }
        boolean z = this instanceof zzgf;
        if (z == (zzgdVar instanceof zzgf)) {
            return 0;
        }
        return z ? 1 : -1;
    }

    public abstract void zza(StringBuilder sb);

    public abstract boolean zza(C c);

    public abstract void zzb(StringBuilder sb);
}

package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgml.class */
final class zzgml implements Iterator<zzgja> {
    private final ArrayDeque<zzgmn> zza;
    private zzgja zzb;

    public /* synthetic */ zzgml(zzgjf zzgjfVar, zzgmk zzgmkVar) {
        zzgjf zzgjfVar2;
        if (!(zzgjfVar instanceof zzgmn)) {
            this.zza = null;
            this.zzb = (zzgja) zzgjfVar;
            return;
        }
        zzgmn zzgmnVar = (zzgmn) zzgjfVar;
        ArrayDeque<zzgmn> arrayDeque = new ArrayDeque<>(zzgmnVar.zzf());
        this.zza = arrayDeque;
        arrayDeque.push(zzgmnVar);
        zzgjfVar2 = zzgmnVar.zzd;
        this.zzb = zzb(zzgjfVar2);
    }

    private final zzgja zzb(zzgjf zzgjfVar) {
        zzgjf zzgjfVar2;
        while (zzgjfVar instanceof zzgmn) {
            zzgmn zzgmnVar = (zzgmn) zzgjfVar;
            this.zza.push(zzgmnVar);
            zzgjfVar2 = zzgmnVar.zzd;
            zzgjfVar = zzgjfVar2;
        }
        return (zzgja) zzgjfVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb != null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: zza */
    public final zzgja next() {
        zzgja zzgjaVar;
        zzgjf zzgjfVar;
        zzgja zzgjaVar2 = this.zzb;
        if (zzgjaVar2 != null) {
            while (true) {
                ArrayDeque<zzgmn> arrayDeque = this.zza;
                zzgjaVar = null;
                if (arrayDeque != null) {
                    if (!arrayDeque.isEmpty()) {
                        zzgjfVar = this.zza.pop().zze;
                        zzgjaVar = zzb(zzgjfVar);
                        if (!zzgjaVar.zzD()) {
                            break;
                        }
                    } else {
                        zzgjaVar = null;
                        break;
                    }
                } else {
                    break;
                }
            }
            this.zzb = zzgjaVar;
            return zzgjaVar2;
        }
        throw new NoSuchElementException();
    }
}

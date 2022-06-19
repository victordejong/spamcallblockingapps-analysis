package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzghv.class */
public final class zzghv {
    private final ArrayDeque<zzgex> zza = new ArrayDeque<>();

    private zzghv() {
    }

    public /* synthetic */ zzghv(zzghw zzghwVar) {
    }

    public static /* synthetic */ zzgex zza(zzghv zzghvVar, zzgex zzgexVar, zzgex zzgexVar2) {
        zzghvVar.zzb(zzgexVar);
        zzghvVar.zzb(zzgexVar2);
        zzgex pop = zzghvVar.zza.pop();
        while (true) {
            zzgex zzgexVar3 = pop;
            if (!zzghvVar.zza.isEmpty()) {
                pop = new zzghy(zzghvVar.zza.pop(), zzgexVar3);
            } else {
                return zzgexVar3;
            }
        }
    }

    private final void zzb(zzgex zzgexVar) {
        zzgex zzgexVar2;
        zzgex zzgexVar3;
        zzgex zzgexVar4;
        zzghy zzghyVar;
        if (!zzgexVar.zzg()) {
            if (!(zzgexVar instanceof zzghy)) {
                String valueOf = String.valueOf(zzgexVar.getClass());
                valueOf.length();
                throw new IllegalArgumentException("Has a new type of ByteString been created? Found ".concat(valueOf));
            }
            zzghy zzghyVar2 = (zzghy) zzgexVar;
            zzgexVar2 = zzghyVar2.zzd;
            zzb(zzgexVar2);
            zzgexVar3 = zzghyVar2.zze;
            zzb(zzgexVar3);
            return;
        }
        int zzc = zzc(zzgexVar.zzc());
        int zzG = zzghy.zzG(zzc + 1);
        if (this.zza.isEmpty() || this.zza.peek().zzc() >= zzG) {
            this.zza.push(zzgexVar);
            return;
        }
        int zzG2 = zzghy.zzG(zzc);
        zzgex pop = this.zza.pop();
        while (true) {
            zzgexVar4 = pop;
            if (this.zza.isEmpty() || this.zza.peek().zzc() >= zzG2) {
                break;
            }
            pop = new zzghy(this.zza.pop(), zzgexVar4);
        }
        zzghy zzghyVar3 = new zzghy(zzgexVar4, zzgexVar);
        while (true) {
            zzghyVar = zzghyVar3;
            if (this.zza.isEmpty()) {
                break;
            }
            if (this.zza.peek().zzc() >= zzghy.zzG(zzc(zzghyVar.zzc()) + 1)) {
                break;
            }
            zzghyVar3 = new zzghy(this.zza.pop(), zzghyVar);
        }
        this.zza.push(zzghyVar);
    }

    private static final int zzc(int i) {
        int binarySearch = Arrays.binarySearch(zzghy.zza, i);
        int i2 = binarySearch;
        if (binarySearch < 0) {
            i2 = (-(binarySearch + 1)) - 1;
        }
        return i2;
    }
}

package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgmj.class */
public final class zzgmj {
    private final ArrayDeque<zzgjf> zza = new ArrayDeque<>();

    private zzgmj() {
    }

    public /* synthetic */ zzgmj(zzgmi zzgmiVar) {
    }

    public static /* bridge */ /* synthetic */ zzgjf zza(zzgmj zzgmjVar, zzgjf zzgjfVar, zzgjf zzgjfVar2) {
        zzgmjVar.zzb(zzgjfVar);
        zzgmjVar.zzb(zzgjfVar2);
        zzgjf pop = zzgmjVar.zza.pop();
        while (true) {
            zzgjf zzgjfVar3 = pop;
            if (!zzgmjVar.zza.isEmpty()) {
                pop = new zzgmn(zzgmjVar.zza.pop(), zzgjfVar3);
            } else {
                return zzgjfVar3;
            }
        }
    }

    private final void zzb(zzgjf zzgjfVar) {
        zzgjf zzgjfVar2;
        zzgjf zzgjfVar3;
        zzgjf zzgjfVar4;
        zzgmn zzgmnVar;
        if (!zzgjfVar.zzh()) {
            if (!(zzgjfVar instanceof zzgmn)) {
                throw new IllegalArgumentException("Has a new type of ByteString been created? Found ".concat(String.valueOf(zzgjfVar.getClass())));
            }
            zzgmn zzgmnVar2 = (zzgmn) zzgjfVar;
            zzgjfVar2 = zzgmnVar2.zzd;
            zzb(zzgjfVar2);
            zzgjfVar3 = zzgmnVar2.zze;
            zzb(zzgjfVar3);
            return;
        }
        int zzc = zzc(zzgjfVar.zzd());
        int zzc2 = zzgmn.zzc(zzc + 1);
        if (this.zza.isEmpty() || this.zza.peek().zzd() >= zzc2) {
            this.zza.push(zzgjfVar);
            return;
        }
        int zzc3 = zzgmn.zzc(zzc);
        zzgjf pop = this.zza.pop();
        while (true) {
            zzgjfVar4 = pop;
            if (this.zza.isEmpty() || this.zza.peek().zzd() >= zzc3) {
                break;
            }
            pop = new zzgmn(this.zza.pop(), zzgjfVar4);
        }
        zzgmn zzgmnVar3 = new zzgmn(zzgjfVar4, zzgjfVar);
        while (true) {
            zzgmnVar = zzgmnVar3;
            if (this.zza.isEmpty()) {
                break;
            }
            if (this.zza.peek().zzd() >= zzgmn.zzc(zzc(zzgmnVar.zzd()) + 1)) {
                break;
            }
            zzgmnVar3 = new zzgmn(this.zza.pop(), zzgmnVar);
        }
        this.zza.push(zzgmnVar);
    }

    private static final int zzc(int i) {
        int binarySearch = Arrays.binarySearch(zzgmn.zza, i);
        int i2 = binarySearch;
        if (binarySearch < 0) {
            i2 = (-(binarySearch + 1)) - 1;
        }
        return i2;
    }
}

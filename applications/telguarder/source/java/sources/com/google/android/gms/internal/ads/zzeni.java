package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeni.class */
public final class zzeni {
    private final ArrayDeque<zzejr> zziuc;

    private zzeni() {
        this.zziuc = new ArrayDeque<>();
    }

    public /* synthetic */ zzeni(zzenf zzenfVar) {
        this();
    }

    public static /* synthetic */ zzejr zza(zzeni zzeniVar, zzejr zzejrVar, zzejr zzejrVar2) {
        return zzeniVar.zzc(zzejrVar, zzejrVar2);
    }

    private final void zzam(zzejr zzejrVar) {
        zzejr zzejrVar2;
        zzeng zzengVar;
        zzejr zzejrVar3;
        zzejr zzejrVar4;
        while (!zzejrVar.zzbgn()) {
            if (!(zzejrVar instanceof zzeng)) {
                String valueOf = String.valueOf(zzejrVar.getClass());
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 49);
                sb.append("Has a new type of ByteString been created? Found ");
                sb.append(valueOf);
                throw new IllegalArgumentException(sb.toString());
            }
            zzeng zzengVar2 = (zzeng) zzejrVar;
            zzejrVar3 = zzengVar2.zzitw;
            zzam(zzejrVar3);
            zzejrVar4 = zzengVar2.zzitx;
            zzejrVar = zzejrVar4;
        }
        int zzhs = zzhs(zzejrVar.size());
        int zzhr = zzeng.zzhr(zzhs + 1);
        if (this.zziuc.isEmpty() || this.zziuc.peek().size() >= zzhr) {
            this.zziuc.push(zzejrVar);
            return;
        }
        int zzhr2 = zzeng.zzhr(zzhs);
        zzejr pop = this.zziuc.pop();
        while (true) {
            zzejrVar2 = pop;
            if (this.zziuc.isEmpty() || this.zziuc.peek().size() >= zzhr2) {
                break;
            }
            pop = new zzeng(this.zziuc.pop(), zzejrVar2, null);
        }
        zzeng zzengVar3 = new zzeng(zzejrVar2, zzejrVar, null);
        while (true) {
            zzengVar = zzengVar3;
            if (this.zziuc.isEmpty()) {
                break;
            }
            if (this.zziuc.peek().size() >= zzeng.zzhr(zzhs(zzengVar.size()) + 1)) {
                break;
            }
            zzengVar3 = new zzeng(this.zziuc.pop(), zzengVar, null);
        }
        this.zziuc.push(zzengVar);
    }

    public final zzejr zzc(zzejr zzejrVar, zzejr zzejrVar2) {
        zzam(zzejrVar);
        zzam(zzejrVar2);
        zzejr pop = this.zziuc.pop();
        while (true) {
            zzejr zzejrVar3 = pop;
            if (!this.zziuc.isEmpty()) {
                pop = new zzeng(this.zziuc.pop(), zzejrVar3, null);
            } else {
                return zzejrVar3;
            }
        }
    }

    private static int zzhs(int i) {
        int binarySearch = Arrays.binarySearch(zzeng.zzitu, i);
        int i2 = binarySearch;
        if (binarySearch < 0) {
            i2 = (-(binarySearch + 1)) - 1;
        }
        return i2;
    }
}

package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ee2.class */
final class ee2 {

    /* renamed from: a */
    private final ArrayDeque<zzesf> f6395a = new ArrayDeque<>();

    /* synthetic */ ee2(de2 de2Var) {
    }

    /* renamed from: a */
    static /* synthetic */ zzesf m7653a(ee2 ee2Var, zzesf zzesfVar, zzesf zzesfVar2) {
        ee2Var.m7652b(zzesfVar);
        ee2Var.m7652b(zzesfVar2);
        zzeve zzeveVar = (zzesf) ee2Var.f6395a.pop();
        while (true) {
            zzeve zzeveVar2 = zzeveVar;
            if (!ee2Var.f6395a.isEmpty()) {
                zzeveVar = new zzeve(ee2Var.f6395a.pop(), zzeveVar2, (de2) null);
            } else {
                return zzeveVar2;
            }
        }
    }

    /* renamed from: b */
    private final void m7652b(zzesf zzesfVar) {
        zzesf zzesfVar2;
        zzesf zzesfVar3;
        if (!zzesfVar.zzg()) {
            if (zzesfVar instanceof zzeve) {
                zzeve zzeveVar = (zzeve) zzesfVar;
                m7652b(zzeve.zzE(zzeveVar));
                m7652b(zzeve.zzF(zzeveVar));
                return;
            }
            String valueOf = String.valueOf(zzesfVar.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 49);
            sb.append("Has a new type of ByteString been created? Found ");
            sb.append(valueOf);
            throw new IllegalArgumentException(sb.toString());
        }
        int m7651c = m7651c(zzesfVar.zzc());
        int zzh = zzeve.zzh(m7651c + 1);
        if (this.f6395a.isEmpty() || this.f6395a.peek().zzc() >= zzh) {
            this.f6395a.push(zzesfVar);
            return;
        }
        int zzh2 = zzeve.zzh(m7651c);
        zzesf pop = this.f6395a.pop();
        while (true) {
            zzesfVar2 = pop;
            if (this.f6395a.isEmpty() || this.f6395a.peek().zzc() >= zzh2) {
                break;
            }
            pop = new zzeve(this.f6395a.pop(), zzesfVar2, (de2) null);
        }
        zzesf zzeveVar2 = new zzeve(zzesfVar2, zzesfVar, (de2) null);
        while (true) {
            zzesfVar3 = zzeveVar2;
            if (this.f6395a.isEmpty()) {
                break;
            }
            if (this.f6395a.peek().zzc() >= zzeve.zzh(m7651c(zzesfVar3.zzc()) + 1)) {
                break;
            }
            zzeveVar2 = new zzeve(this.f6395a.pop(), zzesfVar3, (de2) null);
        }
        this.f6395a.push(zzesfVar3);
    }

    /* renamed from: c */
    private static final int m7651c(int i) {
        int binarySearch = Arrays.binarySearch(zzeve.c, i);
        int i2 = binarySearch;
        if (binarySearch < 0) {
            i2 = (-(binarySearch + 1)) - 1;
        }
        return i2;
    }
}

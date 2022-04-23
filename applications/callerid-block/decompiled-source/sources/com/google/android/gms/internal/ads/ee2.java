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
        while (!ee2Var.f6395a.isEmpty()) {
            zzeveVar = new zzeve(ee2Var.f6395a.pop(), zzeveVar, (de2) null);
        }
        return zzeveVar;
    }

    /* renamed from: b */
    private final void m7652b(zzesf zzesfVar) {
        if (zzesfVar.zzg()) {
            int c = m7651c(zzesfVar.zzc());
            int zzh = zzeve.zzh(c + 1);
            if (this.f6395a.isEmpty() || this.f6395a.peek().zzc() >= zzh) {
                this.f6395a.push(zzesfVar);
                return;
            }
            int zzh2 = zzeve.zzh(c);
            zzeve zzeveVar = (zzesf) this.f6395a.pop();
            while (!this.f6395a.isEmpty() && this.f6395a.peek().zzc() < zzh2) {
                zzeveVar = new zzeve(this.f6395a.pop(), zzeveVar, (de2) null);
            }
            zzeve zzeveVar2 = new zzeve(zzeveVar, zzesfVar, (de2) null);
            while (!this.f6395a.isEmpty()) {
                if (this.f6395a.peek().zzc() >= zzeve.zzh(m7651c(zzeveVar2.zzc()) + 1)) {
                    break;
                }
                zzeveVar2 = new zzeve(this.f6395a.pop(), zzeveVar2, (de2) null);
            }
            this.f6395a.push(zzeveVar2);
        } else if (zzesfVar instanceof zzeve) {
            zzeve zzeveVar3 = (zzeve) zzesfVar;
            m7652b(zzeve.zzE(zzeveVar3));
            m7652b(zzeve.zzF(zzeveVar3));
        } else {
            String valueOf = String.valueOf(zzesfVar.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 49);
            sb.append("Has a new type of ByteString been created? Found ");
            sb.append(valueOf);
            throw new IllegalArgumentException(sb.toString());
        }
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

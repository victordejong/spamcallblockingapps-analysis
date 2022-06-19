package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zf3.class */
public final class zf3 {

    /* renamed from: a */
    private final ArrayDeque<zzgex> f32921a = new ArrayDeque<>();

    public /* synthetic */ zf3(ag3 ag3Var) {
    }

    /* renamed from: a */
    public static /* synthetic */ zzgex m8402a(zf3 zf3Var, zzgex zzgexVar, zzgex zzgexVar2) {
        zf3Var.m8401b(zzgexVar);
        zf3Var.m8401b(zzgexVar2);
        zzgex pop = zf3Var.f32921a.pop();
        while (true) {
            zzgex zzgexVar3 = pop;
            if (!zf3Var.f32921a.isEmpty()) {
                pop = new zzghy(zf3Var.f32921a.pop(), zzgexVar3);
            } else {
                return zzgexVar3;
            }
        }
    }

    /* renamed from: b */
    private final void m8401b(zzgex zzgexVar) {
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
            m8401b(zzgexVar2);
            zzgexVar3 = zzghyVar2.zze;
            m8401b(zzgexVar3);
            return;
        }
        int m8400c = m8400c(zzgexVar.zzc());
        int zzG = zzghy.zzG(m8400c + 1);
        if (this.f32921a.isEmpty() || this.f32921a.peek().zzc() >= zzG) {
            this.f32921a.push(zzgexVar);
            return;
        }
        int zzG2 = zzghy.zzG(m8400c);
        zzgex pop = this.f32921a.pop();
        while (true) {
            zzgexVar4 = pop;
            if (this.f32921a.isEmpty() || this.f32921a.peek().zzc() >= zzG2) {
                break;
            }
            pop = new zzghy(this.f32921a.pop(), zzgexVar4);
        }
        zzghy zzghyVar3 = new zzghy(zzgexVar4, zzgexVar);
        while (true) {
            zzghyVar = zzghyVar3;
            if (this.f32921a.isEmpty()) {
                break;
            }
            if (this.f32921a.peek().zzc() >= zzghy.zzG(m8400c(zzghyVar.zzc()) + 1)) {
                break;
            }
            zzghyVar3 = new zzghy(this.f32921a.pop(), zzghyVar);
        }
        this.f32921a.push(zzghyVar);
    }

    /* renamed from: c */
    private static final int m8400c(int i) {
        int binarySearch = Arrays.binarySearch(zzghy.f34178g, i);
        int i2 = binarySearch;
        if (binarySearch < 0) {
            i2 = (-(binarySearch + 1)) - 1;
        }
        return i2;
    }
}

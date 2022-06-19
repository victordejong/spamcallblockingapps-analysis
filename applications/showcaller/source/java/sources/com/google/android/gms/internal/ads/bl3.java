package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bl3.class */
public final class bl3 extends wj3<Integer> {

    /* renamed from: j */
    private static final C6615j5 f20514j;

    /* renamed from: k */
    private final ok3[] f20515k;

    /* renamed from: l */
    private final AbstractC6839p7[] f20516l;

    /* renamed from: m */
    private final ArrayList<ok3> f20517m;

    /* renamed from: r */
    private zzhu f20522r;

    /* renamed from: s */
    private final yj3 f20523s;

    /* renamed from: p */
    private int f20520p = -1;

    /* renamed from: q */
    private long[][] f20521q = new long[0];

    /* renamed from: n */
    private final Map<Object, Long> f20518n = new HashMap();

    /* renamed from: o */
    private final tx2<Object, sj3> f20519o = ay2.m16464a(8).m8666b(2).mo9023c();

    static {
        C6280a5 c6280a5 = new C6280a5();
        c6280a5.m16693a("MergingMediaSource");
        f20514j = c6280a5.m16691c();
    }

    /* JADX WARN: Type inference failed for: r1v9, types: [long[], long[][]] */
    public bl3(boolean z, boolean z2, ok3... ok3VarArr) {
        yj3 yj3Var = new yj3();
        this.f20515k = ok3VarArr;
        this.f20523s = yj3Var;
        this.f20517m = new ArrayList<>(Arrays.asList(ok3VarArr));
        this.f20516l = new AbstractC6839p7[ok3VarArr.length];
    }

    @Override // com.google.android.gms.internal.ads.ok3
    /* renamed from: c */
    public final void mo10991c(lk3 lk3Var) {
        al3 al3Var = (al3) lk3Var;
        int i = 0;
        while (true) {
            ok3[] ok3VarArr = this.f20515k;
            if (i < ok3VarArr.length) {
                ok3VarArr[i].mo10991c(al3Var.m16558a(i));
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ok3
    /* renamed from: e */
    public final lk3 mo10990e(mk3 mk3Var, tn3 tn3Var, long j) {
        int length = this.f20515k.length;
        lk3[] lk3VarArr = new lk3[length];
        int mo12366i = this.f20516l[0].mo12366i(mk3Var.f20100a);
        for (int i = 0; i < length; i++) {
            lk3VarArr[i] = this.f20515k[i].mo10990e(mk3Var.m13170c(this.f20516l[i].mo12365j(mo12366i)), tn3Var, j - this.f20521q[mo12366i][i]);
        }
        return new al3(this.f20523s, this.f20521q[mo12366i], lk3VarArr, null);
    }

    @Override // com.google.android.gms.internal.ads.wj3, com.google.android.gms.internal.ads.dg3
    /* renamed from: m */
    public final void mo9578m(AbstractC6816ol abstractC6816ol) {
        super.mo9578m(abstractC6816ol);
        for (int i = 0; i < this.f20515k.length; i++) {
            m9574y(Integer.valueOf(i), this.f20515k[i]);
        }
    }

    @Override // com.google.android.gms.internal.ads.wj3, com.google.android.gms.internal.ads.dg3
    /* renamed from: p */
    public final void mo9576p() {
        super.mo9576p();
        Arrays.fill(this.f20516l, (Object) null);
        this.f20520p = -1;
        this.f20522r = null;
        this.f20517m.clear();
        Collections.addAll(this.f20517m, this.f20515k);
    }

    @Override // com.google.android.gms.internal.ads.ok3
    /* renamed from: q */
    public final C6615j5 mo10988q() {
        ok3[] ok3VarArr = this.f20515k;
        return ok3VarArr.length > 0 ? ok3VarArr[0].mo10988q() : f20514j;
    }

    @Override // com.google.android.gms.internal.ads.wj3
    /* renamed from: x */
    public final /* bridge */ /* synthetic */ void mo9575x(Integer num, ok3 ok3Var, AbstractC6839p7 abstractC6839p7) {
        int i;
        if (this.f20522r != null) {
            return;
        }
        if (this.f20520p == -1) {
            i = abstractC6839p7.mo11686g();
            this.f20520p = i;
        } else {
            int mo11686g = abstractC6839p7.mo11686g();
            i = this.f20520p;
            if (mo11686g != i) {
                this.f20522r = new zzhu(0);
                return;
            }
        }
        if (this.f20521q.length == 0) {
            this.f20521q = new long[i][this.f20516l.length];
        }
        this.f20517m.remove(ok3Var);
        this.f20516l[num.intValue()] = abstractC6839p7;
        if (!this.f20517m.isEmpty()) {
            return;
        }
        m15827r(this.f20516l[0]);
    }

    @Override // com.google.android.gms.internal.ads.wj3
    /* renamed from: z */
    public final /* bridge */ /* synthetic */ mk3 mo9573z(Integer num, mk3 mk3Var) {
        if (num.intValue() == 0) {
            return mk3Var;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.wj3, com.google.android.gms.internal.ads.ok3
    public final void zzu() {
        zzhu zzhuVar = this.f20522r;
        if (zzhuVar == null) {
            super.zzu();
            return;
        }
        throw zzhuVar;
    }
}

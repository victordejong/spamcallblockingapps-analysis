package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dqh.class */
public final class dqh implements dqg {

    /* renamed from: a */
    private final dqg[] f15370a;

    /* renamed from: b */
    private final ArrayList<dqg> f15371b;

    /* renamed from: d */
    private dqf f15373d;

    /* renamed from: e */
    private dln f15374e;

    /* renamed from: f */
    private Object f15375f;

    /* renamed from: h */
    private zzmn f15377h;

    /* renamed from: c */
    private final dlo f15372c = new dlo();

    /* renamed from: g */
    private int f15376g = -1;

    public dqh(dqg... dqgVarArr) {
        this.f15370a = dqgVarArr;
        this.f15371b = new ArrayList<>(Arrays.asList(dqgVarArr));
    }

    /* renamed from: a */
    public final void m8899a(int i, dln dlnVar, Object obj) {
        zzmn zzmnVar;
        if (this.f15377h == null) {
            int mo8840a = dlnVar.mo8840a();
            int i2 = 0;
            while (true) {
                if (i2 >= mo8840a) {
                    if (this.f15376g == -1) {
                        this.f15376g = dlnVar.mo8836b();
                    } else if (dlnVar.mo8836b() != this.f15376g) {
                        zzmnVar = new zzmn(1);
                    }
                    zzmnVar = null;
                } else if (dlnVar.m9201a(i2, this.f15372c, false).f14671e) {
                    zzmnVar = new zzmn(0);
                    break;
                } else {
                    i2++;
                }
            }
            this.f15377h = zzmnVar;
        }
        if (this.f15377h != null) {
            return;
        }
        this.f15371b.remove(this.f15370a[i]);
        if (i == 0) {
            this.f15374e = dlnVar;
            this.f15375f = obj;
        }
        if (!this.f15371b.isEmpty()) {
            return;
        }
        this.f15373d.mo8884a(this.f15374e, this.f15375f);
    }

    @Override // com.google.android.gms.internal.ads.dqg
    /* renamed from: a */
    public final dqe mo8898a(int i, drn drnVar) {
        dqe[] dqeVarArr = new dqe[this.f15370a.length];
        for (int i2 = 0; i2 < dqeVarArr.length; i2++) {
            dqeVarArr[i2] = this.f15370a[i2].mo8898a(i, drnVar);
        }
        return new dqi(dqeVarArr);
    }

    @Override // com.google.android.gms.internal.ads.dqg
    /* renamed from: a */
    public final void mo8900a() {
        if (this.f15377h != null) {
            throw this.f15377h;
        }
        for (dqg dqgVar : this.f15370a) {
            dqgVar.mo8900a();
        }
    }

    @Override // com.google.android.gms.internal.ads.dqg
    /* renamed from: a */
    public final void mo8897a(dkt dktVar, boolean z, dqf dqfVar) {
        this.f15373d = dqfVar;
        for (int i = 0; i < this.f15370a.length; i++) {
            this.f15370a[i].mo8897a(dktVar, false, new dqj(this, i));
        }
    }

    @Override // com.google.android.gms.internal.ads.dqg
    /* renamed from: a */
    public final void mo8896a(dqe dqeVar) {
        dqi dqiVar = (dqi) dqeVar;
        for (int i = 0; i < this.f15370a.length; i++) {
            this.f15370a[i].mo8896a(dqiVar.f15378a[i]);
        }
    }

    @Override // com.google.android.gms.internal.ads.dqg
    /* renamed from: b */
    public final void mo8894b() {
        for (dqg dqgVar : this.f15370a) {
            dqgVar.mo8894b();
        }
    }
}

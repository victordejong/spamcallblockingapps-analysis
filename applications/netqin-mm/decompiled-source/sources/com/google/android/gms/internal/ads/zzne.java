package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import p131c.p161d.p170b.p224d.p252g.p253a.oe0;
import p131c.p161d.p170b.p224d.p252g.p253a.pe0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzne.class */
public final class zzne implements zzmz {

    /* renamed from: a */
    public final zzmz[] f28656a;

    /* renamed from: b */
    public final ArrayList<zzmz> f28657b;

    /* renamed from: d */
    public zznc f28659d;

    /* renamed from: e */
    public zzhy f28660e;

    /* renamed from: f */
    public Object f28661f;

    /* renamed from: h */
    public zzng f28663h;

    /* renamed from: c */
    public final zzid f28658c = new zzid();

    /* renamed from: g */
    public int f28662g = -1;

    public zzne(zzmz... zzmzVarArr) {
        this.f28656a = zzmzVarArr;
        this.f28657b = new ArrayList<>(Arrays.asList(zzmzVarArr));
    }

    @Override // com.google.android.gms.internal.ads.zzmz
    /* renamed from: a */
    public final zzmx mo11792a(int i, zzok zzokVar) {
        int length = this.f28656a.length;
        zzmx[] zzmxVarArr = new zzmx[length];
        for (int i2 = 0; i2 < length; i2++) {
            zzmxVarArr[i2] = this.f28656a[i2].mo11792a(i, zzokVar);
        }
        return new oe0(zzmxVarArr);
    }

    @Override // com.google.android.gms.internal.ads.zzmz
    /* renamed from: a */
    public final void mo11794a() throws IOException {
        zzng zzngVar = this.f28663h;
        if (zzngVar == null) {
            for (zzmz zzmzVar : this.f28656a) {
                zzmzVar.mo11794a();
            }
            return;
        }
        throw zzngVar;
    }

    /* renamed from: a */
    public final void m11793a(int i, zzhy zzhyVar, Object obj) {
        zzng zzngVar;
        if (this.f28663h == null) {
            int b = zzhyVar.mo11757b();
            int i2 = 0;
            while (true) {
                if (i2 >= b) {
                    if (this.f28662g == -1) {
                        this.f28662g = zzhyVar.mo11756c();
                    } else if (zzhyVar.mo11756c() != this.f28662g) {
                        zzngVar = new zzng(1);
                    }
                    zzngVar = null;
                } else if (zzhyVar.m12000a(i2, this.f28658c, false).f28312e) {
                    zzngVar = new zzng(0);
                    break;
                } else {
                    i2++;
                }
            }
            this.f28663h = zzngVar;
        }
        if (this.f28663h == null) {
            this.f28657b.remove(this.f28656a[i]);
            if (i == 0) {
                this.f28660e = zzhyVar;
                this.f28661f = obj;
            }
            if (this.f28657b.isEmpty()) {
                this.f28659d.mo11795a(this.f28660e, this.f28661f);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmz
    /* renamed from: a */
    public final void mo11791a(zzhc zzhcVar, boolean z, zznc zzncVar) {
        this.f28659d = zzncVar;
        int i = 0;
        while (true) {
            zzmz[] zzmzVarArr = this.f28656a;
            if (i < zzmzVarArr.length) {
                zzmzVarArr[i].mo11791a(zzhcVar, false, new pe0(this, i));
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmz
    /* renamed from: a */
    public final void mo11790a(zzmx zzmxVar) {
        oe0 oe0Var = (oe0) zzmxVar;
        int i = 0;
        while (true) {
            zzmz[] zzmzVarArr = this.f28656a;
            if (i < zzmzVarArr.length) {
                zzmzVarArr[i].mo11790a(oe0Var.f14330a[i]);
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmz
    /* renamed from: b */
    public final void mo11788b() {
        for (zzmz zzmzVar : this.f28656a) {
            zzmzVar.mo11788b();
        }
    }
}

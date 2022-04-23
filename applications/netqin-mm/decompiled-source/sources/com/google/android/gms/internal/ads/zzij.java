package com.google.android.gms.internal.ads;

import android.os.Handler;
import p131c.p161d.p170b.p224d.p252g.p253a.ac0;
import p131c.p161d.p170b.p224d.p252g.p253a.bc0;
import p131c.p161d.p170b.p224d.p252g.p253a.cc0;
import p131c.p161d.p170b.p224d.p252g.p253a.dc0;
import p131c.p161d.p170b.p224d.p252g.p253a.yb0;
import p131c.p161d.p170b.p224d.p252g.p253a.zb0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzij.class */
public final class zzij {

    /* renamed from: a */
    public final Handler f28321a;

    /* renamed from: b */
    public final zzig f28322b;

    public zzij(Handler handler, zzig zzigVar) {
        Handler handler2;
        if (zzigVar != null) {
            zzoz.m11698a(handler);
            handler2 = handler;
        } else {
            handler2 = null;
        }
        this.f28321a = handler2;
        this.f28322b = zzigVar;
    }

    /* renamed from: a */
    public final void m11979a(int i) {
        if (this.f28322b != null) {
            this.f28321a.post(new dc0(this, i));
        }
    }

    /* renamed from: a */
    public final void m11978a(int i, long j, long j2) {
        if (this.f28322b != null) {
            this.f28321a.post(new cc0(this, i, j, j2));
        }
    }

    /* renamed from: a */
    public final void m11977a(zzho zzhoVar) {
        if (this.f28322b != null) {
            this.f28321a.post(new zb0(this, zzhoVar));
        }
    }

    /* renamed from: a */
    public final void m11975a(zzjl zzjlVar) {
        if (this.f28322b != null) {
            this.f28321a.post(new yb0(this, zzjlVar));
        }
    }

    /* renamed from: a */
    public final void m11974a(String str, long j, long j2) {
        if (this.f28322b != null) {
            this.f28321a.post(new ac0(this, str, j, j2));
        }
    }

    /* renamed from: b */
    public final void m11973b(zzjl zzjlVar) {
        if (this.f28322b != null) {
            this.f28321a.post(new bc0(this, zzjlVar));
        }
    }
}

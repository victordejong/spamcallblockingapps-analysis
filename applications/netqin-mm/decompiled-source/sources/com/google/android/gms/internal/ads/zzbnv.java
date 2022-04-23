package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnv.class */
public final class zzbnv extends zzbqo {

    /* renamed from: h */
    public final View f25260h;

    /* renamed from: i */
    public final zzbgj f25261i;

    /* renamed from: j */
    public final zzdnu f25262j;

    /* renamed from: k */
    public final int f25263k;

    /* renamed from: l */
    public final boolean f25264l;

    /* renamed from: m */
    public final boolean f25265m;

    /* renamed from: n */
    public zzsm f25266n;

    /* renamed from: o */
    public final zzbnn f25267o;

    public zzbnv(zzbqn zzbqnVar, View view, zzbgj zzbgjVar, zzdnu zzdnuVar, int i, boolean z, boolean z2, zzbnn zzbnnVar) {
        super(zzbqnVar);
        this.f25260h = view;
        this.f25261i = zzbgjVar;
        this.f25262j = zzdnuVar;
        this.f25263k = i;
        this.f25264l = z;
        this.f25265m = z2;
        this.f25267o = zzbnnVar;
    }

    /* renamed from: a */
    public final void m15266a(long j) {
        this.f25267o.m15274a(j);
    }

    /* renamed from: a */
    public final void m15265a(zzsc zzscVar) {
        zzbgj zzbgjVar = this.f25261i;
        if (zzbgjVar != null) {
            zzbgjVar.mo15583a(zzscVar);
        }
    }

    /* renamed from: a */
    public final void m15264a(zzsm zzsmVar) {
        this.f25266n = zzsmVar;
    }

    /* renamed from: g */
    public final boolean m15263g() {
        zzbgj zzbgjVar = this.f25261i;
        return (zzbgjVar == null || zzbgjVar.mo15543z() == null || !this.f25261i.mo15543z().mo15482b()) ? false : true;
    }

    /* renamed from: h */
    public final int m15262h() {
        return this.f25263k;
    }

    /* renamed from: i */
    public final boolean m15261i() {
        return this.f25264l;
    }

    /* renamed from: j */
    public final boolean m15260j() {
        return this.f25265m;
    }

    /* renamed from: k */
    public final zzdnu m15259k() {
        return zzdoq.m13401a(this.f25381b.f27601q, this.f25262j);
    }

    /* renamed from: l */
    public final View m15258l() {
        return this.f25260h;
    }

    /* renamed from: m */
    public final boolean m15257m() {
        zzbgj zzbgjVar = this.f25261i;
        return zzbgjVar != null && zzbgjVar.mo15602H();
    }

    /* renamed from: n */
    public final zzsm m15256n() {
        return this.f25266n;
    }
}

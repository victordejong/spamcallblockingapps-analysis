package com.google.android.gms.internal.ads;

import android.view.Surface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dtd.class */
public final class dtd {

    /* renamed from: a */
    private final cnz f15663a;

    /* renamed from: b */
    private final dte f15664b;

    public dtd(cnz cnzVar, dte dteVar) {
        this.f15663a = dteVar != null ? (cnz) drz.m8774a(cnzVar) : null;
        this.f15664b = dteVar;
    }

    /* renamed from: a */
    public final void m8642a(int i, int i2, int i3, float f) {
        if (this.f15664b != null) {
            this.f15663a.post(new dtk(this, i, i2, i3, f));
        }
    }

    /* renamed from: a */
    public final void m8641a(int i, long j) {
        if (this.f15664b != null) {
            this.f15663a.post(new dth(this, i, j));
        }
    }

    /* renamed from: a */
    public final void m8640a(Surface surface) {
        if (this.f15664b != null) {
            this.f15663a.post(new dtj(this, surface));
        }
    }

    /* renamed from: a */
    public final void m8639a(dlf dlfVar) {
        if (this.f15664b != null) {
            this.f15663a.post(new dti(this, dlfVar));
        }
    }

    /* renamed from: a */
    public final void m8638a(dmt dmtVar) {
        if (this.f15664b != null) {
            this.f15663a.post(new dtg(this, dmtVar));
        }
    }

    /* renamed from: a */
    public final void m8636a(String str, long j, long j2) {
        if (this.f15664b != null) {
            this.f15663a.post(new dtf(this, str, j, j2));
        }
    }

    /* renamed from: b */
    public final void m8635b(dmt dmtVar) {
        if (this.f15664b != null) {
            this.f15663a.post(new dtl(this, dmtVar));
        }
    }
}

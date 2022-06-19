package com.google.android.gms.internal.ads;

import com.google.android.gms.common.C2579b;
import com.google.android.gms.common.internal.AbstractC2623c;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dwg.class */
public final class dwg implements AbstractC2623c.AbstractC2625b {

    /* renamed from: a */
    private final /* synthetic */ C3658yo f15878a;

    /* renamed from: b */
    private final /* synthetic */ dwa f15879b;

    public dwg(dwa dwaVar, C3658yo c3658yo) {
        this.f15879b = dwaVar;
        this.f15878a = c3658yo;
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c.AbstractC2625b
    /* renamed from: a */
    public final void mo4307a(C2579b c2579b) {
        Object obj;
        obj = this.f15879b.f15867d;
        synchronized (obj) {
            this.f15878a.m6733a(new RuntimeException("Connection failed."));
        }
    }
}

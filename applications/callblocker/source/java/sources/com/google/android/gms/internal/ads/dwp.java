package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.C3128ez;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dwp.class */
public final class dwp implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f15938a;

    /* renamed from: b */
    private final /* synthetic */ long f15939b;

    /* renamed from: c */
    private final /* synthetic */ dts f15940c;

    public dwp(dts dtsVar, String str, long j) {
        this.f15940c = dtsVar;
        this.f15938a = str;
        this.f15939b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C3128ez.C3129a c3129a;
        C3128ez.C3129a c3129a2;
        c3129a = this.f15940c.f15715a;
        c3129a.m7847a(this.f15938a, this.f15939b);
        c3129a2 = this.f15940c.f15715a;
        c3129a2.m7848a(this.f15940c.toString());
    }
}

package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bax.class */
public final class bax implements coe<drt, Bitmap> {

    /* renamed from: a */
    private final /* synthetic */ double f10822a;

    /* renamed from: b */
    private final /* synthetic */ boolean f10823b;

    /* renamed from: c */
    private final /* synthetic */ bay f10824c;

    public bax(bay bayVar, double d, boolean z) {
        this.f10824c = bayVar;
        this.f10822a = d;
        this.f10823b = z;
    }

    @Override // com.google.android.gms.internal.ads.coe
    /* renamed from: a */
    public final /* synthetic */ Bitmap mo7184a(drt drtVar) {
        Bitmap m12135a;
        m12135a = this.f10824c.m12135a(drtVar.f15522b, this.f10822a, this.f10823b);
        return m12135a;
    }
}

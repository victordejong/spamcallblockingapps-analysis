package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.internal.AbstractC2623c;
/* renamed from: com.google.android.gms.internal.ads.fy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fy.class */
public final class C3155fy implements AbstractC2623c.AbstractC2624a {

    /* renamed from: a */
    private final /* synthetic */ C3658yo f16681a;

    /* renamed from: b */
    private final /* synthetic */ C3151fu f16682b;

    public C3155fy(C3151fu c3151fu, C3658yo c3658yo) {
        this.f16682b = c3151fu;
        this.f16681a = c3658yo;
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c.AbstractC2624a
    /* renamed from: a */
    public final void mo4310a(int i) {
        this.f16681a.m6733a(new RuntimeException(new StringBuilder(34).append("onConnectionSuspended: ").append(i).toString()));
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c.AbstractC2624a
    /* renamed from: a */
    public final void mo4308a(Bundle bundle) {
        C3144fn c3144fn;
        try {
            C3658yo c3658yo = this.f16681a;
            c3144fn = this.f16682b.f16677a;
            c3658yo.m6731b(c3144fn.m7825c());
        } catch (DeadObjectException e) {
            this.f16681a.m6733a(e);
        }
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.AbstractC12025d;
/* renamed from: com.google.android.gms.internal.ads.in */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/in.class */
public final class C12639in implements AbstractC12025d.AbstractC12027b {

    /* renamed from: a */
    private final /* synthetic */ C13103zp f49375a;

    public C12639in(C12633ih c12633ih, C13103zp c13103zp) {
        this.f49375a = c13103zp;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d.AbstractC12027b
    /* renamed from: a */
    public final void mo11761a(ConnectionResult connectionResult) {
        this.f49375a.setException(new RuntimeException("Connection failed."));
    }
}

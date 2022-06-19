package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.AbstractC12025d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ehf.class */
public final class ehf implements AbstractC12025d.AbstractC12027b {

    /* renamed from: a */
    private final /* synthetic */ C13103zp f49027a;

    /* renamed from: b */
    private final /* synthetic */ egz f49028b;

    public ehf(egz egzVar, C13103zp c13103zp) {
        this.f49028b = egzVar;
        this.f49027a = c13103zp;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d.AbstractC12027b
    /* renamed from: a */
    public final void mo11761a(ConnectionResult connectionResult) {
        synchronized (this.f49028b.f49015c) {
            this.f49027a.setException(new RuntimeException("Connection failed."));
        }
    }
}

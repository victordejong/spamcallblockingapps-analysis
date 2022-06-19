package com.google.android.gms.internal.ads;

import android.os.DeadObjectException;
import com.google.android.gms.common.internal.AbstractC12025d;
/* renamed from: com.google.android.gms.internal.ads.il */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/il.class */
public final class C12637il implements AbstractC12025d.AbstractC12026a {

    /* renamed from: a */
    private final /* synthetic */ C13103zp f49372a;

    /* renamed from: b */
    private final /* synthetic */ C12633ih f49373b;

    public C12637il(C12633ih c12633ih, C13103zp c13103zp) {
        this.f49373b = c12633ih;
        this.f49372a = c13103zp;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d.AbstractC12026a
    /* renamed from: a */
    public final void mo11764a() {
        try {
            this.f49372a.set(this.f49373b.f49368a.m14600a());
        } catch (DeadObjectException e) {
            this.f49372a.setException(e);
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d.AbstractC12026a
    /* renamed from: a */
    public final void mo11763a(int i) {
        C13103zp c13103zp = this.f49372a;
        StringBuilder sb = new StringBuilder(34);
        sb.append("onConnectionSuspended: ");
        sb.append(i);
        c13103zp.setException(new RuntimeException(sb.toString()));
    }
}

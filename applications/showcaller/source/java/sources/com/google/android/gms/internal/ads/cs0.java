package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nonagon.signalgeneration.AbstractC5828o;
import com.google.android.gms.ads.nonagon.signalgeneration.AbstractC5829p;
import com.google.android.gms.ads.nonagon.signalgeneration.C5822i0;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cs0.class */
final class cs0 implements AbstractC5828o {

    /* renamed from: a */
    private final fs0 f21365a;

    /* renamed from: b */
    private j21 f21366b;

    /* renamed from: c */
    private C5822i0 f21367c;

    public /* synthetic */ cs0(fs0 fs0Var, wr0 wr0Var) {
        this.f21365a = fs0Var;
    }

    @Override // com.google.android.gms.ads.nonagon.signalgeneration.AbstractC5828o
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC5828o mo15998a(j21 j21Var) {
        this.f21366b = j21Var;
        return this;
    }

    @Override // com.google.android.gms.ads.nonagon.signalgeneration.AbstractC5828o
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ AbstractC5828o mo15997b(C5822i0 c5822i0) {
        this.f21367c = c5822i0;
        return this;
    }

    @Override // com.google.android.gms.ads.nonagon.signalgeneration.AbstractC5828o
    public final AbstractC5829p zza() {
        kj3.m13878c(this.f21366b, j21.class);
        kj3.m13878c(this.f21367c, C5822i0.class);
        return new ds0(this.f21365a, this.f21367c, new d01(), new eo1(), this.f21366b, new zk2(), null, null, null);
    }
}

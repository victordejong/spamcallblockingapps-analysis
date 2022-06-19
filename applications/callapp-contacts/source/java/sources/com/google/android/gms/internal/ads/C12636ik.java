package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
/* renamed from: com.google.android.gms.internal.ads.ik */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ik.class */
public final class C12636ik implements daq<AbstractC12631if, ParcelFileDescriptor> {

    /* renamed from: a */
    private final /* synthetic */ zzaiy f49371a;

    public C12636ik(C12633ih c12633ih, zzaiy zzaiyVar) {
        this.f49371a = zzaiyVar;
    }

    @Override // com.google.android.gms.internal.ads.daq
    public final /* synthetic */ dbt<ParcelFileDescriptor> zzf(AbstractC12631if abstractC12631if) throws Exception {
        C13103zp c13103zp = new C13103zp();
        abstractC12631if.mo14599a(this.f49371a, new BinderC12635ij(this, c13103zp));
        return c13103zp;
    }
}

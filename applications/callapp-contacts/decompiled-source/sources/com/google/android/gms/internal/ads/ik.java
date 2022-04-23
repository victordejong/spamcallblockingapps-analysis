package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ik.class */
public final class ik implements daq<AbstractC0760if, ParcelFileDescriptor> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ zzaiy f28062a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ik(ih ihVar, zzaiy zzaiyVar) {
        this.f28062a = zzaiyVar;
    }

    @Override // com.google.android.gms.internal.ads.daq
    public final /* synthetic */ dbt<ParcelFileDescriptor> zzf(AbstractC0760if ifVar) throws Exception {
        zp zpVar = new zp();
        ifVar.a(this.f28062a, new ij(this, zpVar));
        return zpVar;
    }
}

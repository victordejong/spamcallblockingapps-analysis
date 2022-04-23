package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eju.class */
public final class eju extends ejy<eln> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Context f27912a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ ejj f27913b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eju(ejj ejjVar, Context context) {
        this.f27913b = ejjVar;
        this.f27912a = context;
    }

    @Override // com.google.android.gms.internal.ads.ejy
    protected final /* synthetic */ eln a() {
        ejj.a(this.f27912a, "mobile_ads_settings");
        return new l();
    }

    @Override // com.google.android.gms.internal.ads.ejy
    public final /* synthetic */ eln a(elf elfVar) throws RemoteException {
        return elfVar.zza(d.a(this.f27912a), 204890000);
    }

    @Override // com.google.android.gms.internal.ads.ejy
    public final /* synthetic */ eln b() throws RemoteException {
        c cVar;
        cVar = this.f27913b.f27882c;
        return cVar.b(this.f27912a);
    }
}

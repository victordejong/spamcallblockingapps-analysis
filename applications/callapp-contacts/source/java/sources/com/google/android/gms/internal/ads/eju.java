package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC12129d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eju.class */
public final class eju extends ejy<eln> {

    /* renamed from: a */
    private final /* synthetic */ Context f49127a;

    /* renamed from: b */
    private final /* synthetic */ ejj f49128b;

    public eju(ejj ejjVar, Context context) {
        this.f49128b = ejjVar;
        this.f49127a = context;
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: a */
    protected final /* synthetic */ eln mo14839a() {
        ejj.m14857a(this.f49127a, "mobile_ads_settings");
        return new BinderC12706l();
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: a */
    public final /* synthetic */ eln mo14838a(elf elfVar) throws RemoteException {
        return elfVar.zza(BinderC12129d.m18979a(this.f49127a), 204890000);
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: b */
    public final /* synthetic */ eln mo14837b() throws RemoteException {
        C12260c c12260c;
        c12260c = this.f49128b.f49090c;
        return c12260c.m17534b(this.f49127a);
    }
}

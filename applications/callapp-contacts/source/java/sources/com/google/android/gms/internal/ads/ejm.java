package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC12129d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejm.class */
public final class ejm extends ejy<AbstractC13048xo> {

    /* renamed from: a */
    private final /* synthetic */ Context f49105a;

    /* renamed from: b */
    private final /* synthetic */ AbstractC12746mm f49106b;

    public ejm(ejj ejjVar, Context context, AbstractC12746mm abstractC12746mm) {
        this.f49105a = context;
        this.f49106b = abstractC12746mm;
    }

    /* renamed from: c */
    public final AbstractC13048xo mo14837b() {
        try {
            return ((AbstractC13053xt) C13086yz.m13904a(this.f49105a, "com.google.android.gms.ads.DynamiteSignalGeneratorCreatorImpl", ejp.f49111a)).mo13990a(BinderC12129d.m18979a(this.f49105a), this.f49106b);
        } catch (RemoteException | zzbap | NullPointerException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: a */
    protected final /* bridge */ /* synthetic */ AbstractC13048xo mo14839a() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: a */
    public final /* synthetic */ AbstractC13048xo mo14838a(elf elfVar) throws RemoteException {
        return elfVar.zzb(BinderC12129d.m18979a(this.f49105a), this.f49106b, 204890000);
    }
}

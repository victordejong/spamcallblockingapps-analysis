package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC12129d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejo.class */
public final class ejo extends ejy<AbstractC12854ql> {

    /* renamed from: a */
    private final /* synthetic */ Context f49109a;

    /* renamed from: b */
    private final /* synthetic */ AbstractC12746mm f49110b;

    public ejo(ejj ejjVar, Context context, AbstractC12746mm abstractC12746mm) {
        this.f49109a = context;
        this.f49110b = abstractC12746mm;
    }

    /* renamed from: c */
    public final AbstractC12854ql mo14837b() {
        try {
            return ((AbstractC12859qq) C13086yz.m13904a(this.f49109a, "com.google.android.gms.ads.DynamiteOfflineUtilsCreatorImpl", ejr.f49117a)).mo14226a(BinderC12129d.m18979a(this.f49109a), this.f49110b);
        } catch (RemoteException | zzbap | NullPointerException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: a */
    protected final /* bridge */ /* synthetic */ AbstractC12854ql mo14839a() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: a */
    public final /* synthetic */ AbstractC12854ql mo14838a(elf elfVar) throws RemoteException {
        return elfVar.zzc(BinderC12129d.m18979a(this.f49109a), this.f49110b, 204890000);
    }
}

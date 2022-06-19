package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC12129d;
import com.mopub.common.AdType;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejz.class */
public final class ejz extends ejy<AbstractC12942ts> {

    /* renamed from: a */
    private final /* synthetic */ Context f49142a;

    /* renamed from: b */
    private final /* synthetic */ AbstractC12746mm f49143b;

    /* renamed from: c */
    private final /* synthetic */ ejj f49144c;

    public ejz(ejj ejjVar, Context context, AbstractC12746mm abstractC12746mm) {
        this.f49144c = ejjVar;
        this.f49142a = context;
        this.f49143b = abstractC12746mm;
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: a */
    protected final /* synthetic */ AbstractC12942ts mo14839a() {
        ejj.m14857a(this.f49142a, AdType.REWARDED_VIDEO);
        return new BinderC12869r();
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: a */
    public final /* synthetic */ AbstractC12942ts mo14838a(elf elfVar) throws RemoteException {
        return elfVar.zza(BinderC12129d.m18979a(this.f49142a), this.f49143b, 204890000);
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: b */
    public final /* synthetic */ AbstractC12942ts mo14837b() throws RemoteException {
        C12954ud c12954ud;
        c12954ud = this.f49144c.f49092e;
        return c12954ud.m14120a(this.f49142a, this.f49143b);
    }
}

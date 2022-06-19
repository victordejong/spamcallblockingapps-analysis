package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC12129d;
import com.mopub.common.AdType;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejs.class */
public final class ejs extends ejy<ekw> {

    /* renamed from: a */
    private final /* synthetic */ Context f49118a;

    /* renamed from: b */
    private final /* synthetic */ zzvt f49119b;

    /* renamed from: c */
    private final /* synthetic */ String f49120c;

    /* renamed from: d */
    private final /* synthetic */ AbstractC12746mm f49121d;

    /* renamed from: e */
    private final /* synthetic */ ejj f49122e;

    public ejs(ejj ejjVar, Context context, zzvt zzvtVar, String str, AbstractC12746mm abstractC12746mm) {
        this.f49122e = ejjVar;
        this.f49118a = context;
        this.f49119b = zzvtVar;
        this.f49120c = str;
        this.f49121d = abstractC12746mm;
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: a */
    public final /* synthetic */ ekw mo14839a() {
        ejj.m14857a(this.f49118a, AdType.INTERSTITIAL);
        return new BinderC12652j();
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: a */
    public final /* synthetic */ ekw mo14838a(elf elfVar) throws RemoteException {
        return elfVar.zzb(BinderC12129d.m18979a(this.f49118a), this.f49119b, this.f49120c, this.f49121d, 204890000);
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: b */
    public final /* synthetic */ ekw mo14837b() throws RemoteException {
        eiz eizVar;
        eizVar = this.f49122e.f49088a;
        return eizVar.m14865a(this.f49118a, this.f49119b, this.f49120c, this.f49121d, 2);
    }
}

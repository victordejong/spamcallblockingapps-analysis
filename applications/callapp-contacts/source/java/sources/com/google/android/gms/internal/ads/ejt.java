package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC12129d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejt.class */
public final class ejt extends ejy<ekw> {

    /* renamed from: a */
    private final /* synthetic */ Context f49123a;

    /* renamed from: b */
    private final /* synthetic */ zzvt f49124b;

    /* renamed from: c */
    private final /* synthetic */ String f49125c;

    /* renamed from: d */
    private final /* synthetic */ ejj f49126d;

    public ejt(ejj ejjVar, Context context, zzvt zzvtVar, String str) {
        this.f49126d = ejjVar;
        this.f49123a = context;
        this.f49124b = zzvtVar;
        this.f49125c = str;
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: a */
    public final /* synthetic */ ekw mo14839a() {
        ejj.m14857a(this.f49123a, "search");
        return new BinderC12652j();
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: a */
    public final /* synthetic */ ekw mo14838a(elf elfVar) throws RemoteException {
        return elfVar.zza(BinderC12129d.m18979a(this.f49123a), this.f49124b, this.f49125c, 204890000);
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: b */
    public final /* synthetic */ ekw mo14837b() throws RemoteException {
        eiz eizVar;
        eizVar = this.f49126d.f49088a;
        return eizVar.m14865a(this.f49123a, this.f49124b, this.f49125c, null, 3);
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC12129d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejq.class */
public final class ejq extends ejy<ekw> {

    /* renamed from: a */
    private final /* synthetic */ Context f49112a;

    /* renamed from: b */
    private final /* synthetic */ zzvt f49113b;

    /* renamed from: c */
    private final /* synthetic */ String f49114c;

    /* renamed from: d */
    private final /* synthetic */ AbstractC12746mm f49115d;

    /* renamed from: e */
    private final /* synthetic */ ejj f49116e;

    public ejq(ejj ejjVar, Context context, zzvt zzvtVar, String str, AbstractC12746mm abstractC12746mm) {
        this.f49116e = ejjVar;
        this.f49112a = context;
        this.f49113b = zzvtVar;
        this.f49114c = str;
        this.f49115d = abstractC12746mm;
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: a */
    public final /* synthetic */ ekw mo14839a() {
        ejj.m14857a(this.f49112a, "app_open");
        return new BinderC12652j();
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: a */
    public final /* synthetic */ ekw mo14838a(elf elfVar) throws RemoteException {
        return elfVar.zzc(BinderC12129d.m18979a(this.f49112a), this.f49113b, this.f49114c, this.f49115d, 204890000);
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: b */
    public final /* synthetic */ ekw mo14837b() throws RemoteException {
        eiz eizVar;
        eizVar = this.f49116e.f49088a;
        return eizVar.m14865a(this.f49112a, this.f49113b, this.f49114c, this.f49115d, 4);
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC12129d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejl.class */
public final class ejl extends ejy<ekw> {

    /* renamed from: a */
    private final /* synthetic */ Context f49100a;

    /* renamed from: b */
    private final /* synthetic */ zzvt f49101b;

    /* renamed from: c */
    private final /* synthetic */ String f49102c;

    /* renamed from: d */
    private final /* synthetic */ AbstractC12746mm f49103d;

    /* renamed from: e */
    private final /* synthetic */ ejj f49104e;

    public ejl(ejj ejjVar, Context context, zzvt zzvtVar, String str, AbstractC12746mm abstractC12746mm) {
        this.f49104e = ejjVar;
        this.f49100a = context;
        this.f49101b = zzvtVar;
        this.f49102c = str;
        this.f49103d = abstractC12746mm;
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: a */
    public final /* synthetic */ ekw mo14839a() {
        ejj.m14857a(this.f49100a, "banner");
        return new BinderC12652j();
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: a */
    public final /* synthetic */ ekw mo14838a(elf elfVar) throws RemoteException {
        return elfVar.zza(BinderC12129d.m18979a(this.f49100a), this.f49101b, this.f49102c, this.f49103d, 204890000);
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: b */
    public final /* synthetic */ ekw mo14837b() throws RemoteException {
        eiz eizVar;
        eizVar = this.f49104e.f49088a;
        return eizVar.m14865a(this.f49100a, this.f49101b, this.f49102c, this.f49103d, 1);
    }
}

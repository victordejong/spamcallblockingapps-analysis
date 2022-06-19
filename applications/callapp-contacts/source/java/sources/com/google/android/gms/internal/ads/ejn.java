package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC12129d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejn.class */
public final class ejn extends ejy<AbstractC12868qz> {

    /* renamed from: a */
    private final /* synthetic */ Activity f49107a;

    /* renamed from: b */
    private final /* synthetic */ ejj f49108b;

    public ejn(ejj ejjVar, Activity activity) {
        this.f49108b = ejjVar;
        this.f49107a = activity;
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: a */
    protected final /* synthetic */ AbstractC12868qz mo14839a() {
        ejj.m14857a(this.f49107a, "ad_overlay");
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: a */
    public final /* synthetic */ AbstractC12868qz mo14838a(elf elfVar) throws RemoteException {
        return elfVar.zzb(BinderC12129d.m18979a(this.f49107a));
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: b */
    public final /* synthetic */ AbstractC12868qz mo14837b() throws RemoteException {
        C12866qx c12866qx;
        c12866qx = this.f49108b.f49094g;
        return c12866qx.m14215a(this.f49107a);
    }
}

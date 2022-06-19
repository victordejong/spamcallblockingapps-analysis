package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.BinderC12129d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejx.class */
public final class ejx extends ejy<AbstractC12428dv> {

    /* renamed from: a */
    private final /* synthetic */ FrameLayout f49137a;

    /* renamed from: b */
    private final /* synthetic */ FrameLayout f49138b;

    /* renamed from: c */
    private final /* synthetic */ Context f49139c;

    /* renamed from: d */
    private final /* synthetic */ ejj f49140d;

    public ejx(ejj ejjVar, FrameLayout frameLayout, FrameLayout frameLayout2, Context context) {
        this.f49140d = ejjVar;
        this.f49137a = frameLayout;
        this.f49138b = frameLayout2;
        this.f49139c = context;
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: a */
    protected final /* synthetic */ AbstractC12428dv mo14839a() {
        ejj.m14857a(this.f49139c, "native_ad_view_delegate");
        return new BinderC12761n();
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: a */
    public final /* synthetic */ AbstractC12428dv mo14838a(elf elfVar) throws RemoteException {
        return elfVar.zza(BinderC12129d.m18979a(this.f49137a), BinderC12129d.m18979a(this.f49138b));
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: b */
    public final /* synthetic */ AbstractC12428dv mo14837b() throws RemoteException {
        C12568fx c12568fx;
        c12568fx = this.f49140d.f49091d;
        return c12568fx.m14646a(this.f49139c, this.f49137a, this.f49138b);
    }
}

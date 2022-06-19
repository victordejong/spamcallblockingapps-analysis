package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.BinderC6255b;
/* renamed from: com.google.android.gms.internal.ads.sr */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sr.class */
public final class C6970sr extends AbstractC7081vr<AbstractC6682kz> {

    /* renamed from: b */
    final /* synthetic */ FrameLayout f29622b;

    /* renamed from: c */
    final /* synthetic */ FrameLayout f29623c;

    /* renamed from: d */
    final /* synthetic */ Context f29624d;

    /* renamed from: e */
    final /* synthetic */ C7044ur f29625e;

    public C6970sr(C7044ur c7044ur, FrameLayout frameLayout, FrameLayout frameLayout2, Context context) {
        this.f29625e = c7044ur;
        this.f29622b = frameLayout;
        this.f29623c = frameLayout2;
        this.f29624d = context;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: a */
    protected final /* bridge */ /* synthetic */ AbstractC6682kz mo9880a() {
        C7044ur.m10192h(this.f29624d, "native_ad_view_delegate");
        return new BinderC6678kv();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ AbstractC6682kz mo9879b() {
        kc0 kc0Var;
        AbstractC6682kz abstractC6682kz;
        e10 e10Var;
        C6679kw.m13770a(this.f29624d);
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25618W6)).booleanValue()) {
            try {
                abstractC6682kz = AbstractBinderC6645jz.m14012E6(((AbstractC6793nz) hi0.m14638a(this.f29624d, "com.google.android.gms.ads.ChimeraNativeAdViewDelegateCreatorImpl", C6933rr.f29098a)).mo12778E5(BinderC6255b.m16744m2(this.f29624d), BinderC6255b.m16744m2(this.f29622b), BinderC6255b.m16744m2(this.f29623c), 213806000));
            } catch (RemoteException | zzcgw | NullPointerException e) {
                this.f29625e.f30944h = ic0.m14453c(this.f29624d);
                kc0Var = this.f29625e.f30944h;
                kc0Var.mo13921b(e, "ClientApiBroker.createNativeAdViewDelegate");
                abstractC6682kz = null;
            }
        } else {
            e10Var = this.f29625e.f30940d;
            abstractC6682kz = e10Var.m15609c(this.f29624d, this.f29622b, this.f29623c);
        }
        return abstractC6682kz;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ AbstractC6682kz mo9878c(AbstractC6415dt abstractC6415dt) {
        return abstractC6415dt.mo15700R0(BinderC6255b.m16744m2(this.f29622b), BinderC6255b.m16744m2(this.f29623c));
    }
}

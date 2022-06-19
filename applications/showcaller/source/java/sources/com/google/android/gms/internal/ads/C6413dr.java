package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC6255b;
/* renamed from: com.google.android.gms.internal.ads.dr */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dr.class */
public final class C6413dr extends AbstractC7081vr<kb0> {

    /* renamed from: b */
    final /* synthetic */ Activity f21746b;

    /* renamed from: c */
    final /* synthetic */ C7044ur f21747c;

    public C6413dr(C7044ur c7044ur, Activity activity) {
        this.f21747c = c7044ur;
        this.f21746b = activity;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: a */
    protected final /* bridge */ /* synthetic */ kb0 mo9880a() {
        C7044ur.m10192h(this.f21746b, "ad_overlay");
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ kb0 mo9879b() {
        kc0 kc0Var;
        kb0 kb0Var;
        hb0 hb0Var;
        C6679kw.m13770a(this.f21746b);
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25618W6)).booleanValue()) {
            try {
                kb0Var = jb0.m14140E6(((nb0) hi0.m14638a(this.f21746b, "com.google.android.gms.ads.ChimeraAdOverlayCreatorImpl", C6376cr.f21358a)).mo12955E(BinderC6255b.m16744m2(this.f21746b)));
            } catch (RemoteException | zzcgw | NullPointerException e) {
                this.f21747c.f30944h = ic0.m14453c(this.f21746b.getApplicationContext());
                kc0Var = this.f21747c.f30944h;
                kc0Var.mo13921b(e, "ClientApiBroker.createAdOverlay");
                kb0Var = null;
            }
        } else {
            hb0Var = this.f21747c.f30942f;
            kb0Var = hb0Var.m14718c(this.f21746b);
        }
        return kb0Var;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ kb0 mo9878c(AbstractC6415dt abstractC6415dt) {
        return abstractC6415dt.mo15702M(BinderC6255b.m16744m2(this.f21746b));
    }
}

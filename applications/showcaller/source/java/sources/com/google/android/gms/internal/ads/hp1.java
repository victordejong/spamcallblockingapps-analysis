package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC6255b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hp1.class */
public final class hp1 implements ro1 {

    /* renamed from: a */
    private final long f23999a;

    /* renamed from: b */
    private final String f24000b;

    /* renamed from: c */
    private final wo1 f24001c;

    /* renamed from: d */
    private final vi2 f24002d;

    public hp1(long j, Context context, wo1 wo1Var, sp0 sp0Var, String str) {
        this.f23999a = j;
        this.f24000b = str;
        this.f24001c = wo1Var;
        xi2 mo10943w = sp0Var.mo10943w();
        mo10943w.mo9074a(context);
        mo10943w.mo9073r(str);
        this.f24002d = mo10943w.zza().mo8713b();
    }

    @Override // com.google.android.gms.internal.ads.ro1
    /* renamed from: a */
    public final void mo11342a(zzbdg zzbdgVar) {
        try {
            this.f24002d.mo10008L3(zzbdgVar, new fp1(this));
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.ro1
    /* renamed from: b */
    public final void mo11341b() {
        try {
            this.f24002d.mo10003f5(new gp1(this));
            this.f24002d.mo10005U(BinderC6255b.m16744m2(null));
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.ro1
    /* renamed from: c */
    public final void mo11340c() {
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vc1.class */
public final class vc1 implements y21, aa1 {

    /* renamed from: d */
    private final sf0 f31129d;

    /* renamed from: e */
    private final Context f31130e;

    /* renamed from: f */
    private final lg0 f31131f;

    /* renamed from: g */
    private final View f31132g;

    /* renamed from: h */
    private String f31133h;

    /* renamed from: i */
    private final zzazj f31134i;

    public vc1(sf0 sf0Var, Context context, lg0 lg0Var, View view, zzazj zzazjVar) {
        this.f31129d = sf0Var;
        this.f31130e = context;
        this.f31131f = lg0Var;
        this.f31132g = view;
        this.f31134i = zzazjVar;
    }

    @Override // com.google.android.gms.internal.ads.aa1
    /* renamed from: b */
    public final void mo9381b() {
    }

    @Override // com.google.android.gms.internal.ads.aa1
    /* renamed from: e */
    public final void mo9378e() {
        String m13540m = this.f31131f.m13540m(this.f31130e);
        this.f31133h = m13540m;
        String valueOf = String.valueOf(m13540m);
        String str = this.f31134i == zzazj.REWARD_BASED_VIDEO_AD ? "/Rewarded" : "/Interstitial";
        this.f31133h = str.length() != 0 ? valueOf.concat(str) : new String(valueOf);
    }

    @Override // com.google.android.gms.internal.ads.y21
    /* renamed from: f */
    public final void mo8978f() {
        View view = this.f31132g;
        if (view != null && this.f31133h != null) {
            this.f31131f.m13539n(view.getContext(), this.f31133h);
        }
        this.f31129d.m11063a(true);
    }

    @Override // com.google.android.gms.internal.ads.y21
    /* renamed from: g */
    public final void mo8977g() {
    }

    @Override // com.google.android.gms.internal.ads.y21
    /* renamed from: i */
    public final void mo8976i() {
    }

    @Override // com.google.android.gms.internal.ads.y21
    /* renamed from: j */
    public final void mo8975j() {
    }

    @Override // com.google.android.gms.internal.ads.y21
    /* renamed from: n */
    public final void mo8974n(nd0 nd0Var, String str, String str2) {
        if (this.f31131f.m13546g(this.f31130e)) {
            try {
                lg0 lg0Var = this.f31131f;
                Context context = this.f31130e;
                lg0Var.m13530w(context, lg0Var.m13536q(context), this.f31129d.m11062b(), nd0Var.mo12951b(), nd0Var.mo12950c());
            } catch (RemoteException e) {
                ei0.m15463g("Remote Exception to get reward item.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.y21
    public final void zzi() {
        this.f31129d.m11063a(false);
    }
}

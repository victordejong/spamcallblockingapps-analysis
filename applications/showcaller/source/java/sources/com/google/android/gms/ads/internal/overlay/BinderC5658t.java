package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.internal.ads.AbstractC6673kq;
import com.google.android.gms.internal.ads.C6679kw;
import com.google.android.gms.internal.ads.C7192yr;
import com.google.android.gms.internal.ads.jb0;
import com.google.android.gms.internal.ads.qa1;
/* renamed from: com.google.android.gms.ads.internal.overlay.t */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/t.class */
public final class BinderC5658t extends jb0 {

    /* renamed from: d */
    private final AdOverlayInfoParcel f18374d;

    /* renamed from: e */
    private final Activity f18375e;

    /* renamed from: f */
    private boolean f18376f = false;

    /* renamed from: g */
    private boolean f18377g = false;

    public BinderC5658t(Activity activity, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.f18374d = adOverlayInfoParcel;
        this.f18375e = activity;
    }

    /* renamed from: b */
    private final void m18185b() {
        synchronized (this) {
            if (!this.f18377g) {
                AbstractC5653o abstractC5653o = this.f18374d.f18317f;
                if (abstractC5653o != null) {
                    abstractC5653o.mo9242a6(4);
                }
                this.f18377g = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: S */
    public final void mo13941S(AbstractC6253a abstractC6253a) {
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: V1 */
    public final void mo13940V1(int i, int i2, Intent intent) {
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: a */
    public final void mo13939a() {
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: a0 */
    public final void mo13938a0(Bundle bundle) {
        AbstractC5653o abstractC5653o;
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25757n6)).booleanValue()) {
            this.f18375e.requestWindowFeature(1);
        }
        boolean z = false;
        if (bundle != null) {
            z = false;
            if (bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false)) {
                z = true;
            }
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.f18374d;
        if (adOverlayInfoParcel == null) {
            this.f18375e.finish();
        } else if (z) {
            this.f18375e.finish();
        } else {
            if (bundle == null) {
                AbstractC6673kq abstractC6673kq = adOverlayInfoParcel.f18316e;
                if (abstractC6673kq != null) {
                    abstractC6673kq.mo7877z0();
                }
                qa1 qa1Var = this.f18374d.f18314B;
                if (qa1Var != null) {
                    qa1Var.mo7917b();
                }
                if (this.f18375e.getIntent() != null && this.f18375e.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true) && (abstractC5653o = this.f18374d.f18317f) != null) {
                    abstractC5653o.mo9229y4();
                }
            }
            C5667s.m18162b();
            Activity activity = this.f18375e;
            AdOverlayInfoParcel adOverlayInfoParcel2 = this.f18374d;
            zzc zzcVar = adOverlayInfoParcel2.f18315d;
            if (C5639a.m18205b(activity, zzcVar, adOverlayInfoParcel2.f18323l, zzcVar.f18386l)) {
                return;
            }
            this.f18375e.finish();
        }
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: d */
    public final void mo13937d() {
        AbstractC5653o abstractC5653o = this.f18374d.f18317f;
        if (abstractC5653o != null) {
            abstractC5653o.mo9244a();
        }
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: g */
    public final void mo13936g() {
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: h */
    public final void mo13935h() {
        if (this.f18376f) {
            this.f18375e.finish();
            return;
        }
        this.f18376f = true;
        AbstractC5653o abstractC5653o = this.f18374d.f18317f;
        if (abstractC5653o == null) {
            return;
        }
        abstractC5653o.mo9243a3();
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: i */
    public final void mo13934i() {
        AbstractC5653o abstractC5653o = this.f18374d.f18317f;
        if (abstractC5653o != null) {
            abstractC5653o.mo9237m2();
        }
        if (this.f18375e.isFinishing()) {
            m18185b();
        }
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: k */
    public final void mo13933k() {
        if (this.f18375e.isFinishing()) {
            m18185b();
        }
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: l */
    public final void mo13932l() {
        if (this.f18375e.isFinishing()) {
            m18185b();
        }
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: m0 */
    public final void mo13931m0(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.f18376f);
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: o */
    public final void mo13930o() {
    }

    @Override // com.google.android.gms.internal.ads.kb0
    public final boolean zzg() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.kb0
    public final void zzi() {
    }
}

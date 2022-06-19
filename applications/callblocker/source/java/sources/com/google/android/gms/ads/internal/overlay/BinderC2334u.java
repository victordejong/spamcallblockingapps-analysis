package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.internal.ads.AbstractBinderC3370nx;
/* renamed from: com.google.android.gms.ads.internal.overlay.u */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/u.class */
public final class BinderC2334u extends AbstractBinderC3370nx {

    /* renamed from: a */
    private AdOverlayInfoParcel f6736a;

    /* renamed from: b */
    private Activity f6737b;

    /* renamed from: c */
    private boolean f6738c = false;

    /* renamed from: d */
    private boolean f6739d = false;

    public BinderC2334u(Activity activity, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.f6736a = adOverlayInfoParcel;
        this.f6737b = activity;
    }

    /* renamed from: a */
    private final void m14749a() {
        synchronized (this) {
            if (!this.f6739d) {
                if (this.f6736a.f6675c != null) {
                    this.f6736a.f6675c.mo7430h_();
                }
                this.f6739d = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: a */
    public final void mo7377a(int i, int i2, Intent intent) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: a */
    public final void mo7376a(Bundle bundle) {
        boolean z = false;
        if (bundle != null) {
            z = false;
            if (bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false)) {
                z = true;
            }
        }
        if (this.f6736a == null) {
            this.f6737b.finish();
        } else if (z) {
            this.f6737b.finish();
        } else {
            if (bundle == null) {
                if (this.f6736a.f6674b != null) {
                    this.f6736a.f6674b.mo8200e();
                }
                if (this.f6737b.getIntent() != null && this.f6737b.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true) && this.f6736a.f6675c != null) {
                    this.f6736a.f6675c.mo7432d();
                }
            }
            C2341q.m14746a();
            if (C2315b.m14768a(this.f6737b, this.f6736a.f6673a, this.f6736a.f6681i)) {
                return;
            }
            this.f6737b.finish();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: a */
    public final void mo7375a(AbstractC2731a abstractC2731a) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: b */
    public final void mo7374b(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.f6738c);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: d */
    public final void mo7373d() {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: e */
    public final boolean mo7372e() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: f */
    public final void mo7371f() {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: g */
    public final void mo7370g() {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: h */
    public final void mo7369h() {
        if (this.f6738c) {
            this.f6737b.finish();
            return;
        }
        this.f6738c = true;
        if (this.f6736a.f6675c == null) {
            return;
        }
        this.f6736a.f6675c.mo7433c();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: i */
    public final void mo7368i() {
        if (this.f6736a.f6675c != null) {
            this.f6736a.f6675c.mo7431f_();
        }
        if (this.f6737b.isFinishing()) {
            m14749a();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: j */
    public final void mo7367j() {
        if (this.f6737b.isFinishing()) {
            m14749a();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: k */
    public final void mo7366k() {
        if (this.f6737b.isFinishing()) {
            m14749a();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3371ny
    /* renamed from: l */
    public final void mo7365l() {
    }
}

package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bj2.class */
public final class bj2 extends qd0 {

    /* renamed from: d */
    private final ri2 f20489d;

    /* renamed from: e */
    private final hi2 f20490e;

    /* renamed from: f */
    private final sj2 f20491f;

    /* renamed from: g */
    private fk1 f20492g;

    /* renamed from: h */
    private boolean f20493h = false;

    public bj2(ri2 ri2Var, hi2 hi2Var, sj2 sj2Var) {
        this.f20489d = ri2Var;
        this.f20490e = hi2Var;
        this.f20491f = sj2Var;
    }

    /* renamed from: J */
    private final boolean m16330J() {
        boolean z;
        synchronized (this) {
            fk1 fk1Var = this.f20492g;
            if (fk1Var != null) {
                if (!fk1Var.m15157j()) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.rd0
    /* renamed from: G0 */
    public final void mo11607G0(String str) {
        synchronized (this) {
            C6155o.m17023e("#008 Must be called on the main UI thread.: setCustomData");
            this.f20491f.f29546b = str;
        }
    }

    @Override // com.google.android.gms.internal.ads.rd0
    /* renamed from: J4 */
    public final void mo11606J4(boolean z) {
        synchronized (this) {
            C6155o.m17023e("setImmersiveMode must be called on the main UI thread.");
            this.f20493h = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.rd0
    /* renamed from: N */
    public final void mo11605N(String str) {
        synchronized (this) {
            C6155o.m17023e("setUserId must be called on the main UI thread.");
            this.f20491f.f29545a = str;
        }
    }

    @Override // com.google.android.gms.internal.ads.rd0
    /* renamed from: S0 */
    public final void mo11604S0(AbstractC7156xs abstractC7156xs) {
        C6155o.m17023e("setAdMetadataListener can only be called from the UI thread.");
        if (abstractC7156xs == null) {
            this.f20490e.m14629y(null);
        } else {
            this.f20490e.m14629y(new aj2(this, abstractC7156xs));
        }
    }

    @Override // com.google.android.gms.internal.ads.rd0
    /* renamed from: U5 */
    public final void mo11603U5(zzccg zzccgVar) {
        synchronized (this) {
            C6155o.m17023e("loadAd must be called on the main UI thread.");
            String str = zzccgVar.f33837e;
            String str2 = (String) C7192yr.m8714c().m14263c(C6679kw.f25511J3);
            if (str2 != null && str != null) {
                try {
                    if (Pattern.matches(str2, str)) {
                        return;
                    }
                } catch (RuntimeException e) {
                    C5667s.m18156h().m12235k(e, "NonagonUtil.isPatternMatched");
                }
            }
            if (m16330J()) {
                if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25527L3)).booleanValue()) {
                    return;
                }
            }
            ji2 ji2Var = new ji2(null);
            this.f20492g = null;
            this.f20489d.m11453i(1);
            this.f20489d.mo8958a(zzccgVar.f33836d, zzccgVar.f33837e, ji2Var, new zi2(this));
        }
    }

    @Override // com.google.android.gms.internal.ads.rd0
    /* renamed from: V */
    public final void mo11602V(AbstractC6253a abstractC6253a) {
        synchronized (this) {
            C6155o.m17023e("pause must be called on the main UI thread.");
            if (this.f20492g != null) {
                this.f20492g.m9019c().m8967S0(abstractC6253a == null ? null : (Context) BinderC6255b.m16745J0(abstractC6253a));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.rd0
    /* renamed from: X */
    public final void mo11601X(AbstractC6253a abstractC6253a) {
        synchronized (this) {
            C6155o.m17023e("resume must be called on the main UI thread.");
            if (this.f20492g != null) {
                this.f20492g.m9019c().m8966T0(abstractC6253a == null ? null : (Context) BinderC6255b.m16745J0(abstractC6253a));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.rd0
    /* renamed from: a */
    public final boolean mo11600a() {
        C6155o.m17023e("isLoaded must be called on the main UI thread.");
        return m16330J();
    }

    @Override // com.google.android.gms.internal.ads.rd0
    /* renamed from: c */
    public final void mo11599c() {
        synchronized (this) {
            mo11594m3(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.rd0
    /* renamed from: d */
    public final void mo11598d() {
        mo11602V(null);
    }

    @Override // com.google.android.gms.internal.ads.rd0
    /* renamed from: f */
    public final void mo11597f() {
        mo11590z0(null);
    }

    @Override // com.google.android.gms.internal.ads.rd0
    /* renamed from: i */
    public final String mo11596i() {
        synchronized (this) {
            fk1 fk1Var = this.f20492g;
            if (fk1Var == null || fk1Var.m9018d() == null) {
                return null;
            }
            return this.f20492g.m9018d().mo12041a();
        }
    }

    @Override // com.google.android.gms.internal.ads.rd0
    /* renamed from: l5 */
    public final void mo11595l5(ud0 ud0Var) {
        C6155o.m17023e("setRewardedVideoAdListener can only be called from the UI thread.");
        this.f20490e.m14634I(ud0Var);
    }

    @Override // com.google.android.gms.internal.ads.rd0
    /* renamed from: m3 */
    public final void mo11594m3(AbstractC6253a abstractC6253a) {
        Activity activity;
        synchronized (this) {
            C6155o.m17023e("showAd must be called on the main UI thread.");
            if (this.f20492g != null) {
                if (abstractC6253a == null) {
                    activity = null;
                } else {
                    Object m16745J0 = BinderC6255b.m16745J0(abstractC6253a);
                    activity = null;
                    if (m16745J0 instanceof Activity) {
                        activity = (Activity) m16745J0;
                    }
                }
                this.f20492g.m15160g(this.f20493h, activity);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.rd0
    /* renamed from: n */
    public final Bundle mo11593n() {
        C6155o.m17023e("getAdMetadata can only be called from the UI thread.");
        fk1 fk1Var = this.f20492g;
        return fk1Var != null ? fk1Var.m15155l() : new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.rd0
    /* renamed from: o */
    public final boolean mo11592o() {
        fk1 fk1Var = this.f20492g;
        return fk1Var != null && fk1Var.m15156k();
    }

    @Override // com.google.android.gms.internal.ads.rd0
    /* renamed from: r3 */
    public final void mo11591r3(pd0 pd0Var) {
        C6155o.m17023e("#008 Must be called on the main UI thread.: setRewardedAdSkuListener");
        this.f20490e.m14632N(pd0Var);
    }

    @Override // com.google.android.gms.internal.ads.rd0
    /* renamed from: z0 */
    public final void mo11590z0(AbstractC6253a abstractC6253a) {
        synchronized (this) {
            C6155o.m17023e("destroy must be called on the main UI thread.");
            this.f20490e.m14629y(null);
            if (this.f20492g != null) {
                this.f20492g.m9019c().m8965Z0(abstractC6253a == null ? null : (Context) BinderC6255b.m16745J0(abstractC6253a));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.rd0
    public final void zzg() {
        mo11601X(null);
    }

    @Override // com.google.android.gms.internal.ads.rd0
    public final AbstractC6491fu zzt() {
        synchronized (this) {
            if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25658b5)).booleanValue()) {
                return null;
            }
            fk1 fk1Var = this.f20492g;
            if (fk1Var == null) {
                return null;
            }
            return fk1Var.m9018d();
        }
    }
}

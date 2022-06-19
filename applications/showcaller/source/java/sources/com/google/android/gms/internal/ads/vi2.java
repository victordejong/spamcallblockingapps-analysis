package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vi2.class */
public final class vi2 extends ee0 {

    /* renamed from: d */
    private final ri2 f31194d;

    /* renamed from: e */
    private final hi2 f31195e;

    /* renamed from: f */
    private final String f31196f;

    /* renamed from: g */
    private final sj2 f31197g;

    /* renamed from: h */
    private final Context f31198h;

    /* renamed from: i */
    private fk1 f31199i;

    /* renamed from: j */
    private boolean f31200j = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25799t0)).booleanValue();

    public vi2(String str, ri2 ri2Var, Context context, hi2 hi2Var, sj2 sj2Var) {
        this.f31196f = str;
        this.f31194d = ri2Var;
        this.f31195e = hi2Var;
        this.f31197g = sj2Var;
        this.f31198h = context;
    }

    /* renamed from: H6 */
    private final void m10010H6(zzbdg zzbdgVar, me0 me0Var, int i) {
        synchronized (this) {
            C6155o.m17023e("#008 Must be called on the main UI thread.");
            this.f31195e.m14631u(me0Var);
            C5667s.m18160d();
            if (C5679c2.m18064k(this.f31198h) && zzbdgVar.f33677v == null) {
                ei0.m15467c("Failed to load the ad because app ID is missing.");
                this.f31195e.mo9146O(sk2.m10997d(4, null, null));
                return;
            }
            if (this.f31199i != null) {
                return;
            }
            ji2 ji2Var = new ji2(null);
            this.f31194d.m11453i(i);
            this.f31194d.mo8958a(zzbdgVar, this.f31196f, ji2Var, new ui2(this));
        }
    }

    @Override // com.google.android.gms.internal.ads.fe0
    /* renamed from: E0 */
    public final void mo10013E0(boolean z) {
        synchronized (this) {
            C6155o.m17023e("setImmersiveMode must be called on the main UI thread.");
            this.f31200j = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.fe0
    /* renamed from: I4 */
    public final void mo10009I4(zzbdg zzbdgVar, me0 me0Var) {
        synchronized (this) {
            m10010H6(zzbdgVar, me0Var, 3);
        }
    }

    @Override // com.google.android.gms.internal.ads.fe0
    /* renamed from: L3 */
    public final void mo10008L3(zzbdg zzbdgVar, me0 me0Var) {
        synchronized (this) {
            m10010H6(zzbdgVar, me0Var, 2);
        }
    }

    @Override // com.google.android.gms.internal.ads.fe0
    /* renamed from: M3 */
    public final void mo10007M3(zzcdg zzcdgVar) {
        synchronized (this) {
            C6155o.m17023e("#008 Must be called on the main UI thread.");
            sj2 sj2Var = this.f31197g;
            sj2Var.f29545a = zzcdgVar.f33840d;
            sj2Var.f29546b = zzcdgVar.f33841e;
        }
    }

    @Override // com.google.android.gms.internal.ads.fe0
    /* renamed from: T1 */
    public final void mo10006T1(AbstractC7231zt abstractC7231zt) {
        if (abstractC7231zt == null) {
            this.f31195e.m14629y(null);
        } else {
            this.f31195e.m14629y(new ti2(this, abstractC7231zt));
        }
    }

    @Override // com.google.android.gms.internal.ads.fe0
    /* renamed from: U */
    public final void mo10005U(AbstractC6253a abstractC6253a) {
        synchronized (this) {
            mo10004V0(abstractC6253a, this.f31200j);
        }
    }

    @Override // com.google.android.gms.internal.ads.fe0
    /* renamed from: V0 */
    public final void mo10004V0(AbstractC6253a abstractC6253a, boolean z) {
        synchronized (this) {
            C6155o.m17023e("#008 Must be called on the main UI thread.");
            if (this.f31199i == null) {
                ei0.m15464f("Rewarded can not be shown before loaded");
                this.f31195e.mo9239l(sk2.m10997d(9, null, null));
                return;
            }
            this.f31199i.m15160g(z, (Activity) BinderC6255b.m16745J0(abstractC6253a));
        }
    }

    @Override // com.google.android.gms.internal.ads.fe0
    /* renamed from: f5 */
    public final void mo10003f5(ie0 ie0Var) {
        C6155o.m17023e("#008 Must be called on the main UI thread.");
        this.f31195e.m14630v(ie0Var);
    }

    @Override // com.google.android.gms.internal.ads.fe0
    /* renamed from: g */
    public final String mo10002g() {
        synchronized (this) {
            fk1 fk1Var = this.f31199i;
            if (fk1Var == null || fk1Var.m9018d() == null) {
                return null;
            }
            return this.f31199i.m9018d().mo12041a();
        }
    }

    @Override // com.google.android.gms.internal.ads.fe0
    /* renamed from: h2 */
    public final void mo10001h2(oe0 oe0Var) {
        C6155o.m17023e("#008 Must be called on the main UI thread.");
        this.f31195e.m14633J(oe0Var);
    }

    @Override // com.google.android.gms.internal.ads.fe0
    /* renamed from: i */
    public final ce0 mo10000i() {
        C6155o.m17023e("#008 Must be called on the main UI thread.");
        fk1 fk1Var = this.f31199i;
        if (fk1Var != null) {
            return fk1Var.m15158i();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.fe0
    /* renamed from: j */
    public final AbstractC6491fu mo9999j() {
        fk1 fk1Var;
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25658b5)).booleanValue() && (fk1Var = this.f31199i) != null) {
            return fk1Var.m9018d();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.fe0
    /* renamed from: t5 */
    public final void mo9998t5(AbstractC6379cu abstractC6379cu) {
        C6155o.m17023e("setOnPaidEventListener must be called on the main UI thread.");
        this.f31195e.m14635H(abstractC6379cu);
    }

    @Override // com.google.android.gms.internal.ads.fe0
    public final Bundle zzg() {
        C6155o.m17023e("#008 Must be called on the main UI thread.");
        fk1 fk1Var = this.f31199i;
        return fk1Var != null ? fk1Var.m15155l() : new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.fe0
    public final boolean zzi() {
        C6155o.m17023e("#008 Must be called on the main UI thread.");
        fk1 fk1Var = this.f31199i;
        return fk1Var != null && !fk1Var.m15159h();
    }
}

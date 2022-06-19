package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC6253a;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.jv */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jv.class */
public final class BinderC6641jv extends AbstractBinderC6676kt {

    /* renamed from: d */
    private d40 f24998d;

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: O */
    public final void mo11317O(String str) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: O1 */
    public final void mo11316O1(AbstractC6253a abstractC6253a, String str) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: Q0 */
    public final void mo11315Q0(d40 d40Var) {
        this.f24998d = d40Var;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: U1 */
    public final void mo11314U1(float f) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: X1 */
    public final void mo11313X1(String str, AbstractC6253a abstractC6253a) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: a */
    public final void mo11312a() {
        ei0.m15467c("The initialization is not processed because MobileAdsSettingsManager is not created successfully.");
        xh0.f32048a.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.iv

            /* renamed from: d */
            private final BinderC6641jv f24487d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24487d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f24487d.m14033b();
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ void m14033b() {
        d40 d40Var = this.f24998d;
        if (d40Var != null) {
            try {
                d40Var.mo9865U4(Collections.emptyList());
            } catch (RemoteException e) {
                ei0.m15463g("Could not notify onComplete event.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: h */
    public final float mo11310h() {
        return 1.0f;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: i */
    public final boolean mo11309i() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: j */
    public final String mo11308j() {
        return "";
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: k */
    public final List<zzbrl> mo11307k() {
        return Collections.emptyList();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: k1 */
    public final void mo11306k1(s70 s70Var) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: o */
    public final void mo11305o() {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: p2 */
    public final void mo11304p2(zzbim zzbimVar) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: t0 */
    public final void mo11303t0(String str) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: u5 */
    public final void mo11302u5(AbstractC7120wt abstractC7120wt) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6713lt
    /* renamed from: y0 */
    public final void mo11301y0(boolean z) {
    }
}

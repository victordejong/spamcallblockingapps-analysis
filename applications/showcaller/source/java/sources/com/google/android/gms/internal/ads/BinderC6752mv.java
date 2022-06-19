package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC6253a;
/* renamed from: com.google.android.gms.internal.ads.mv */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mv.class */
public final class BinderC6752mv extends ee0 {
    /* renamed from: F6 */
    private static void m13067F6(me0 me0Var) {
        ei0.m15467c("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        xh0.f32048a.post(new Runnable(me0Var) { // from class: com.google.android.gms.internal.ads.lv

            /* renamed from: d */
            private final me0 f26286d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26286d = me0Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                me0 me0Var2 = this.f26286d;
                if (me0Var2 != null) {
                    try {
                        me0Var2.mo10717A(1);
                    } catch (RemoteException e) {
                        ei0.m15461i("#007 Could not call remote method.", e);
                    }
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.fe0
    /* renamed from: E0 */
    public final void mo10013E0(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.fe0
    /* renamed from: I4 */
    public final void mo10009I4(zzbdg zzbdgVar, me0 me0Var) {
        m13067F6(me0Var);
    }

    @Override // com.google.android.gms.internal.ads.fe0
    /* renamed from: L3 */
    public final void mo10008L3(zzbdg zzbdgVar, me0 me0Var) {
        m13067F6(me0Var);
    }

    @Override // com.google.android.gms.internal.ads.fe0
    /* renamed from: M3 */
    public final void mo10007M3(zzcdg zzcdgVar) {
    }

    @Override // com.google.android.gms.internal.ads.fe0
    /* renamed from: T1 */
    public final void mo10006T1(AbstractC7231zt abstractC7231zt) {
    }

    @Override // com.google.android.gms.internal.ads.fe0
    /* renamed from: U */
    public final void mo10005U(AbstractC6253a abstractC6253a) {
    }

    @Override // com.google.android.gms.internal.ads.fe0
    /* renamed from: V0 */
    public final void mo10004V0(AbstractC6253a abstractC6253a, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.fe0
    /* renamed from: f5 */
    public final void mo10003f5(ie0 ie0Var) {
    }

    @Override // com.google.android.gms.internal.ads.fe0
    /* renamed from: g */
    public final String mo10002g() {
        return "";
    }

    @Override // com.google.android.gms.internal.ads.fe0
    /* renamed from: h2 */
    public final void mo10001h2(oe0 oe0Var) {
    }

    @Override // com.google.android.gms.internal.ads.fe0
    /* renamed from: i */
    public final ce0 mo10000i() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.fe0
    /* renamed from: j */
    public final AbstractC6491fu mo9999j() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.fe0
    /* renamed from: t5 */
    public final void mo9998t5(AbstractC6379cu abstractC6379cu) {
    }

    @Override // com.google.android.gms.internal.ads.fe0
    public final Bundle zzg() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.fe0
    public final boolean zzi() {
        return false;
    }
}

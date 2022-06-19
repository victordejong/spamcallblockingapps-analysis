package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.ev */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ev.class */
public final class BinderC6455ev extends AbstractBinderC6712ls {

    /* renamed from: d */
    final /* synthetic */ BinderC6492fv f22549d;

    public /* synthetic */ BinderC6455ev(BinderC6492fv binderC6492fv, C6343bv c6343bv) {
        this.f22549d = binderC6492fv;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6749ms
    /* renamed from: R4 */
    public final void mo13093R4(zzbdg zzbdgVar) {
        mo13090n3(zzbdgVar, 1);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6749ms
    /* renamed from: d */
    public final String mo13092d() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6749ms
    /* renamed from: f */
    public final String mo13091f() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6749ms
    /* renamed from: n3 */
    public final void mo13090n3(zzbdg zzbdgVar, int i) {
        ei0.m15467c("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        xh0.f32048a.post(new RunnableC6380cv(this));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6749ms
    public final boolean zzg() {
        return false;
    }
}

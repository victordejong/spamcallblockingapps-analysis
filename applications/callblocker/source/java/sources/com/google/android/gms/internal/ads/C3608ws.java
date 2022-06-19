package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.ws */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ws.class */
public final class C3608ws implements ebp {

    /* renamed from: a */
    private final /* synthetic */ String f17571a;

    /* renamed from: b */
    private final /* synthetic */ C3609wt f17572b;

    public C3608ws(C3606wq c3606wq, String str, C3609wt c3609wt) {
        this.f17571a = str;
        this.f17572b = c3609wt;
    }

    @Override // com.google.android.gms.internal.ads.ebp
    /* renamed from: a */
    public final void mo6864a(zzae zzaeVar) {
        String str = this.f17571a;
        String zzaeVar2 = zzaeVar.toString();
        C3556uu.m6745e(new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(zzaeVar2).length()).append("Failed to load URL: ").append(str).append("\n").append(zzaeVar2).toString());
        this.f17572b.mo6865a((C3609wt) null);
    }
}

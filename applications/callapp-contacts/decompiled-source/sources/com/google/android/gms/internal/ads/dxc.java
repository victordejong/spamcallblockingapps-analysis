package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dxc.class */
public final class dxc implements dwx {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ dxa f27353a;

    private dxc(dxa dxaVar) {
        this.f27353a = dxaVar;
    }

    @Override // com.google.android.gms.internal.ads.dwx
    public final void a() {
        dxa.w();
        this.f27353a.j = true;
    }

    @Override // com.google.android.gms.internal.ads.dwx
    public final void a(int i) {
        dwk dwkVar;
        dwkVar = this.f27353a.f27347b;
        if (dwkVar.f27310b != null) {
            dwkVar.f27309a.post(new dwq(dwkVar, i));
        }
        dxa.v();
    }

    @Override // com.google.android.gms.internal.ads.dwx
    public final void a(int i, long j, long j2) {
        dwk dwkVar;
        dwkVar = this.f27353a.f27347b;
        if (dwkVar.f27310b != null) {
            dwkVar.f27309a.post(new dwo(dwkVar, i, j, j2));
        }
        dxa.x();
    }
}

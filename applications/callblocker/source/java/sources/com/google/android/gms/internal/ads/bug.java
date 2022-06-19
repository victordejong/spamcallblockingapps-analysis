package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bug.class */
final class bug implements crh<buu> {

    /* renamed from: a */
    private final /* synthetic */ AbstractC3527ts f12280a;

    /* renamed from: b */
    private final /* synthetic */ btx f12281b;

    public bug(btx btxVar, AbstractC3527ts abstractC3527ts) {
        this.f12281b = btxVar;
        this.f12280a = abstractC3527ts;
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final /* synthetic */ void mo6719a(buu buuVar) {
        C3647yd c3647yd;
        buu buuVar2 = buuVar;
        try {
            if (((Boolean) dyx.m8158e().m7876a(edi.f16506dF)).booleanValue()) {
                c3647yd = this.f12281b.f12259h;
                if (c3647yd.f17638c >= ((Integer) dyx.m8158e().m7876a(edi.f16508dH)).intValue()) {
                    if (buuVar2 == null) {
                        this.f12280a.mo7119a(null, null, null);
                    } else {
                        this.f12280a.mo7119a(buuVar2.f12305a, buuVar2.f12306b, buuVar2.f12307c);
                    }
                }
            }
            if (buuVar2 == null) {
                this.f12280a.mo7120a(null, null);
            } else {
                this.f12280a.mo7120a(buuVar2.f12305a, buuVar2.f12306b);
            }
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final void mo6718a(Throwable th) {
        try {
            AbstractC3527ts abstractC3527ts = this.f12280a;
            String valueOf = String.valueOf(th.getMessage());
            abstractC3527ts.mo7121a(valueOf.length() != 0 ? "Internal error. ".concat(valueOf) : new String("Internal error. "));
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
        }
    }
}

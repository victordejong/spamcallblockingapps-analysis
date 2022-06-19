package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cj1.class */
public final class cj1 implements n20<Object> {

    /* renamed from: a */
    private final j00 f21263a;

    /* renamed from: b */
    private final qj1 f21264b;

    /* renamed from: c */
    private final vi3<yi1> f21265c;

    public cj1(cf1 cf1Var, re1 re1Var, qj1 qj1Var, vi3<yi1> vi3Var) {
        this.f21263a = cf1Var.m16063g(re1Var.m11496q());
        this.f21264b = qj1Var;
        this.f21265c = vi3Var;
    }

    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final void mo8404a(Object obj, Map<String, String> map) {
        String str = map.get("asset");
        try {
            this.f21263a.mo14250w5(this.f21265c.m9997b(), str);
        } catch (RemoteException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40);
            sb.append("Failed to call onCustomClick for asset ");
            sb.append(str);
            sb.append(".");
            ei0.m15463g(sb.toString(), e);
        }
    }

    /* renamed from: b */
    public final void m16030b() {
        if (this.f21263a == null) {
            return;
        }
        this.f21264b.m11876e("/nativeAdCustomClick", this);
    }
}

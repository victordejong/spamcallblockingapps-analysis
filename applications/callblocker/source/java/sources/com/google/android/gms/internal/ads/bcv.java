package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bcv.class */
public final class bcv implements AbstractC3131fa<Object> {

    /* renamed from: a */
    private final AbstractC2952db f10973a;

    /* renamed from: b */
    private final bcy f10974b;

    /* renamed from: c */
    private final dhn<bcs> f10975c;

    public bcv(azg azgVar, ayx ayxVar, bcy bcyVar, dhn<bcs> dhnVar) {
        this.f10973a = azgVar.m12215b(ayxVar.m12236u());
        this.f10974b = bcyVar;
        this.f10975c = dhnVar;
    }

    /* renamed from: a */
    public final void m12093a() {
        if (this.f10973a == null) {
            return;
        }
        this.f10974b.m12088a("/nativeAdCustomClick", this);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3131fa
    /* renamed from: a */
    public final void mo7414a(Object obj, Map<String, String> map) {
        String str = map.get("asset");
        try {
            this.f10973a.mo7968a(this.f10975c.mo9430a(), str);
        } catch (RemoteException e) {
            C3556uu.m6746d(new StringBuilder(String.valueOf(str).length() + 40).append("Failed to call onCustomClick for asset ").append(str).append(".").toString(), e);
        }
    }
}

package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bgz.class */
public final class bgz implements AbstractC12607hi<Object> {

    /* renamed from: a */
    final AbstractC12542ey f43920a;

    /* renamed from: b */
    final bgy f43921b;

    /* renamed from: c */
    private final dsb<bgs> f43922c;

    public bgz(bcy bcyVar, bcr bcrVar, bgy bgyVar, dsb<bgs> dsbVar) {
        this.f43920a = bcyVar.m18135b(bcrVar.m18151u());
        this.f43921b = bgyVar;
        this.f43922c = dsbVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
    /* renamed from: a */
    public final void mo14250a(Object obj, Map<String, String> map) {
        String str = map.get("asset");
        try {
            this.f43920a.mo14238a(this.f43922c.mo14005a(), str);
        } catch (RemoteException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40);
            sb.append("Failed to call onCustomClick for asset ");
            sb.append(str);
            sb.append(".");
            zzd.zzd(sb.toString(), e);
        }
    }
}

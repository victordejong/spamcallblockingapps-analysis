package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bgz.class */
public final class bgz implements hi<Object> {

    /* renamed from: a  reason: collision with root package name */
    final ey f24430a;

    /* renamed from: b  reason: collision with root package name */
    final bgy f24431b;

    /* renamed from: c  reason: collision with root package name */
    private final dsb<bgs> f24432c;

    public bgz(bcy bcyVar, bcr bcrVar, bgy bgyVar, dsb<bgs> dsbVar) {
        this.f24430a = bcyVar.b(bcrVar.u());
        this.f24431b = bgyVar;
        this.f24432c = dsbVar;
    }

    @Override // com.google.android.gms.internal.ads.hi
    public final void a(Object obj, Map<String, String> map) {
        String str = map.get("asset");
        try {
            this.f24430a.a(this.f24432c.a(), str);
        } catch (RemoteException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40);
            sb.append("Failed to call onCustomClick for asset ");
            sb.append(str);
            sb.append(".");
            zzd.zzd(sb.toString(), e);
        }
    }
}

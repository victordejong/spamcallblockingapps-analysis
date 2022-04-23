package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bbx.class */
public final class bbx implements dsi<eed> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<zzbar> f24142a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<String> f24143b;

    public bbx(dsv<zzbar> dsvVar, dsv<String> dsvVar2) {
        this.f24142a = dsvVar;
        this.f24143b = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        zzr.zzkv();
        return (eed) dso.b(new eed(zzj.zzzr(), this.f24142a.a(), this.f24143b.a(), new JSONObject(), false, true));
    }
}

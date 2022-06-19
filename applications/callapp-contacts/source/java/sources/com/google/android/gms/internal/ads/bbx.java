package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bbx.class */
public final class bbx implements dsi<eed> {

    /* renamed from: a */
    private final dsv<zzbar> f43503a;

    /* renamed from: b */
    private final dsv<String> f43504b;

    public bbx(dsv<zzbar> dsvVar, dsv<String> dsvVar2) {
        this.f43503a = dsvVar;
        this.f43504b = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        zzr.zzkv();
        return (eed) dso.m15764b(new eed(zzj.zzzr(), this.f43503a.mo14005a(), this.f43504b.mo14005a(), new JSONObject(), false, true));
    }
}

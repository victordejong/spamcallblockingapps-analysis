package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zza;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apq.class */
public final class apq implements dsi<zza> {

    /* renamed from: a */
    private final apm f42588a;

    /* renamed from: b */
    private final dsv<Context> f42589b;

    /* renamed from: c */
    private final dsv<AbstractC13002vy> f42590c;

    private apq(apm apmVar, dsv<Context> dsvVar, dsv<AbstractC13002vy> dsvVar2) {
        this.f42588a = apmVar;
        this.f42589b = dsvVar;
        this.f42590c = dsvVar2;
    }

    /* renamed from: a */
    public static apq m18485a(apm apmVar, dsv<Context> dsvVar, dsv<AbstractC13002vy> dsvVar2) {
        return new apq(apmVar, dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (zza) dso.m15764b(new zza(this.f42589b.mo14005a(), this.f42590c.mo14005a(), null));
    }
}

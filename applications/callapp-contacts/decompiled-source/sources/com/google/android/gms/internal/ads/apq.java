package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zza;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apq.class */
public final class apq implements dsi<zza> {

    /* renamed from: a  reason: collision with root package name */
    private final apm f23717a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Context> f23718b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<vy> f23719c;

    private apq(apm apmVar, dsv<Context> dsvVar, dsv<vy> dsvVar2) {
        this.f23717a = apmVar;
        this.f23718b = dsvVar;
        this.f23719c = dsvVar2;
    }

    public static apq a(apm apmVar, dsv<Context> dsvVar, dsv<vy> dsvVar2) {
        return new apq(apmVar, dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (zza) dso.b(new zza(this.f23718b.a(), this.f23719c.a(), null));
    }
}

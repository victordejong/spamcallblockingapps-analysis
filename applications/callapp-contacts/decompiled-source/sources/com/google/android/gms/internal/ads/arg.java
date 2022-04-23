package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.aqz;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/arg.class */
public final class arg implements dsi<aqz.a> {

    /* renamed from: a  reason: collision with root package name */
    private final aqz f23818a;

    private arg(aqz aqzVar) {
        this.f23818a = aqzVar;
    }

    public static arg a(aqz aqzVar) {
        return new arg(aqzVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        aqz aqzVar = this.f23818a;
        aqz.a aVar = new aqz.a();
        aVar.f23803a = aqzVar.f23799a;
        aVar.f23804b = aqzVar.f23800b;
        aVar.f23806d = aqzVar.f23802d;
        aVar.f23805c = aqzVar.f23801c;
        return (aqz.a) dso.b(aVar);
    }
}

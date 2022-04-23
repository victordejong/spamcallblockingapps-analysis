package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzp;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/atp.class */
public final class atp implements dsi<atj> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Set<ayi<zzp>>> f23870a;

    private atp(dsv<Set<ayi<zzp>>> dsvVar) {
        this.f23870a = dsvVar;
    }

    public static atp a(dsv<Set<ayi<zzp>>> dsvVar) {
        return new atp(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new atj(this.f23870a.a());
    }
}

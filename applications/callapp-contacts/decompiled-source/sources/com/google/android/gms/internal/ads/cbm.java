package com.google.android.gms.internal.ads;

import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cbm.class */
public final class cbm implements dsi<String> {

    /* renamed from: a  reason: collision with root package name */
    private final cbj f25539a;

    public cbm(cbj cbjVar) {
        this.f25539a = cbjVar;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (String) dso.b(this.f25539a.f25533a.toLowerCase(Locale.ROOT));
    }
}

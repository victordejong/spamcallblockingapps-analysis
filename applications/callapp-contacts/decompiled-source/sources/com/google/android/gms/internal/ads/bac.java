package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bac.class */
public final class bac implements dsi<View> {

    /* renamed from: a  reason: collision with root package name */
    private final azj f24068a;

    private bac(azj azjVar) {
        this.f24068a = azjVar;
    }

    public static bac a(azj azjVar) {
        return new bac(azjVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        azj azjVar = this.f24068a;
        if (azjVar.f24035b != null) {
            return azjVar.f24035b.r();
        }
        return null;
    }
}

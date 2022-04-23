package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/azn.class */
public final class azn implements dsi<View> {

    /* renamed from: a  reason: collision with root package name */
    private final azj f24041a;

    private azn(azj azjVar) {
        this.f24041a = azjVar;
    }

    public static azn a(azj azjVar) {
        return new azn(azjVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        azj azjVar = this.f24041a;
        if (azjVar.f24035b == null) {
            return null;
        }
        return azjVar.f24035b.r();
    }
}

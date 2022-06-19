package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/adn.class */
final class adn implements DialogInterface.OnClickListener {

    /* renamed from: a */
    private final /* synthetic */ JsResult f39989a;

    public adn(JsResult jsResult) {
        this.f39989a = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f39989a.cancel();
    }
}

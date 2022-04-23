package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/adn.class */
final class adn implements DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ JsResult f23152a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public adn(JsResult jsResult) {
        this.f23152a = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f23152a.cancel();
    }
}

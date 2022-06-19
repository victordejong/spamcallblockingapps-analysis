package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/adj.class */
final class adj implements DialogInterface.OnCancelListener {

    /* renamed from: a */
    private final /* synthetic */ JsResult f39986a;

    public adj(JsResult jsResult) {
        this.f39986a = jsResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f39986a.cancel();
    }
}

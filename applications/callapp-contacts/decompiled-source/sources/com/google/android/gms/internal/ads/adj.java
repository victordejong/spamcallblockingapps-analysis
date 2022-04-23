package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/adj.class */
final class adj implements DialogInterface.OnCancelListener {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ JsResult f23149a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public adj(JsResult jsResult) {
        this.f23149a = jsResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f23149a.cancel();
    }
}

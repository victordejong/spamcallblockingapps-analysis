package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acn.class */
final class acn implements DialogInterface.OnClickListener {

    /* renamed from: a */
    private final /* synthetic */ JsResult f7829a;

    public acn(JsResult jsResult) {
        this.f7829a = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f7829a.cancel();
    }
}

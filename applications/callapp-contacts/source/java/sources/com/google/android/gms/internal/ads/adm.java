package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/adm.class */
final class adm implements DialogInterface.OnClickListener {

    /* renamed from: a */
    private final /* synthetic */ JsResult f39988a;

    public adm(JsResult jsResult) {
        this.f39988a = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f39988a.confirm();
    }
}

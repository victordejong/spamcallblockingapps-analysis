package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acm.class */
final class acm implements DialogInterface.OnClickListener {

    /* renamed from: a */
    private final /* synthetic */ JsResult f7828a;

    public acm(JsResult jsResult) {
        this.f7828a = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f7828a.confirm();
    }
}

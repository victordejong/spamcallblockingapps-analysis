package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/adm.class */
final class adm implements DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ JsResult f23151a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public adm(JsResult jsResult) {
        this.f23151a = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f23151a.confirm();
    }
}

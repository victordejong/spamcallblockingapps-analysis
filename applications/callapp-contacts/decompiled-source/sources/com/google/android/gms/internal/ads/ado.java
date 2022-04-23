package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ado.class */
final class ado implements DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ JsPromptResult f23153a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ado(JsPromptResult jsPromptResult) {
        this.f23153a = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f23153a.cancel();
    }
}

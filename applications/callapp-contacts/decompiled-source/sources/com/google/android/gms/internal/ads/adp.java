package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/adp.class */
final class adp implements DialogInterface.OnCancelListener {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ JsPromptResult f23154a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public adp(JsPromptResult jsPromptResult) {
        this.f23154a = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f23154a.cancel();
    }
}

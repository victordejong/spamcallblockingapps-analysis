package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acp.class */
final class acp implements DialogInterface.OnCancelListener {

    /* renamed from: a */
    private final /* synthetic */ JsPromptResult f7831a;

    public acp(JsPromptResult jsPromptResult) {
        this.f7831a = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f7831a.cancel();
    }
}

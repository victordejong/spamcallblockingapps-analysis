package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.widget.EditText;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acr.class */
final class acr implements DialogInterface.OnClickListener {

    /* renamed from: a */
    private final /* synthetic */ JsPromptResult f7833a;

    /* renamed from: b */
    private final /* synthetic */ EditText f7834b;

    public acr(JsPromptResult jsPromptResult, EditText editText) {
        this.f7833a = jsPromptResult;
        this.f7834b = editText;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f7833a.confirm(this.f7834b.getText().toString());
    }
}

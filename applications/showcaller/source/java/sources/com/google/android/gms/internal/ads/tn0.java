package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.widget.EditText;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tn0.class */
final class tn0 implements DialogInterface.OnClickListener {

    /* renamed from: d */
    final /* synthetic */ JsPromptResult f30081d;

    /* renamed from: e */
    final /* synthetic */ EditText f30082e;

    public tn0(JsPromptResult jsPromptResult, EditText editText) {
        this.f30081d = jsPromptResult;
        this.f30082e = editText;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f30081d.confirm(this.f30082e.getText().toString());
    }
}

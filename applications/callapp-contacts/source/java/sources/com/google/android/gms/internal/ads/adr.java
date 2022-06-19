package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.widget.EditText;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/adr.class */
final class adr implements DialogInterface.OnClickListener {

    /* renamed from: a */
    private final /* synthetic */ JsPromptResult f39993a;

    /* renamed from: b */
    private final /* synthetic */ EditText f39994b;

    public adr(JsPromptResult jsPromptResult, EditText editText) {
        this.f39993a = jsPromptResult;
        this.f39994b = editText;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f39993a.confirm(this.f39994b.getText().toString());
    }
}

package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.widget.EditText;
/* renamed from: com.google.android.gms.internal.ads.gt */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gt.class */
final class DialogInterface$OnClickListenerC1761gt implements DialogInterface.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ JsPromptResult f6715b;

    /* renamed from: c */
    final /* synthetic */ EditText f6716c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC1761gt(JsPromptResult jsPromptResult, EditText editText) {
        this.f6715b = jsPromptResult;
        this.f6716c = editText;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f6715b.confirm(this.f6716c.getText().toString());
    }
}

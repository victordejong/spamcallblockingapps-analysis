package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.widget.EditText;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdz.class */
final class zzbdz implements DialogInterface.OnClickListener {
    private final /* synthetic */ JsPromptResult zzeqq;
    private final /* synthetic */ EditText zzeqr;

    public zzbdz(JsPromptResult jsPromptResult, EditText editText) {
        this.zzeqq = jsPromptResult;
        this.zzeqr = editText;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zzeqq.confirm(this.zzeqr.getText().toString());
    }
}

package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.widget.EditText;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/adr.class */
final class adr implements DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ JsPromptResult f23156a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ EditText f23157b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public adr(JsPromptResult jsPromptResult, EditText editText) {
        this.f23156a = jsPromptResult;
        this.f23157b = editText;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f23156a.confirm(this.f23157b.getText().toString());
    }
}

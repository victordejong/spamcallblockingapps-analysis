package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.widget.EditText;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcom.class */
final class zzcom implements DialogInterface.OnClickListener {
    public final /* synthetic */ JsPromptResult zza;
    public final /* synthetic */ EditText zzb;

    public zzcom(JsPromptResult jsPromptResult, EditText editText) {
        this.zza = jsPromptResult;
        this.zzb = editText;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zza.confirm(this.zzb.getText().toString());
    }
}

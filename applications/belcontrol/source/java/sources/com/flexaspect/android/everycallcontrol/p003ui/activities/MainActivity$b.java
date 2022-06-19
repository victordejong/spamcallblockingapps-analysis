package com.flexaspect.android.everycallcontrol.p003ui.activities;

import android.content.Context;
import android.content.DialogInterface;
import android.text.TextUtils;
import android.widget.EditText;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.MainActivity$b */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/MainActivity$b.class */
public final class MainActivity$b implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ EditText f2777a;

    /* renamed from: b */
    public final /* synthetic */ Context f2778b;

    public MainActivity$b(EditText editText, Context context) {
        this.f2777a = editText;
        this.f2778b = context;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        EditText editText = this.f2777a;
        if (editText == null || editText.getText() == null) {
            return;
        }
        String trim = this.f2777a.getText().toString().trim();
        if (TextUtils.isEmpty(trim)) {
            dialogInterface.cancel();
            return;
        }
        MainActivity.D(trim, this.f2778b);
        dialogInterface.cancel();
    }
}

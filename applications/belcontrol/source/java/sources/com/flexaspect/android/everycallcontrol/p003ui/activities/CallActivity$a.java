package com.flexaspect.android.everycallcontrol.p003ui.activities;

import android.content.DialogInterface;
import android.widget.EditText;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.CallActivity$a */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/CallActivity$a.class */
public class CallActivity$a implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ EditText f2741a;

    /* renamed from: b */
    public final /* synthetic */ CallActivity f2742b;

    public CallActivity$a(CallActivity callActivity, EditText editText) {
        this.f2742b = callActivity;
        this.f2741a = editText;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        String obj = this.f2741a.getText().toString();
        String str = obj;
        if (obj.isEmpty()) {
            str = this.f2742b.getResources().getString(2131820944);
        }
        f61.m1947h().m1942m(this.f2742b.d.f6662c, str);
    }
}

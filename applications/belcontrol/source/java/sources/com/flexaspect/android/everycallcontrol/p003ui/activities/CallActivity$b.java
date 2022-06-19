package com.flexaspect.android.everycallcontrol.p003ui.activities;

import android.content.DialogInterface;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.CallActivity$b */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/CallActivity$b.class */
public class CallActivity$b implements DialogInterface.OnCancelListener {

    /* renamed from: a */
    public final /* synthetic */ CallActivity f2743a;

    public CallActivity$b(CallActivity callActivity) {
        this.f2743a = callActivity;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        CallActivity.z(this.f2743a).m4220u0(this.f2743a.d);
    }
}

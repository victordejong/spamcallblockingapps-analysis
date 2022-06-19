package com.flexaspect.android.everycallcontrol.p003ui.activities;

import android.content.DialogInterface;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.CallActivity$d */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/CallActivity$d.class */
public class CallActivity$d implements DialogInterface.OnCancelListener {

    /* renamed from: a */
    public final /* synthetic */ CallActivity f2748a;

    public CallActivity$d(CallActivity callActivity) {
        this.f2748a = callActivity;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        CallActivity.B(this.f2748a).m1952c(this.f2748a.c.f6662c);
    }
}

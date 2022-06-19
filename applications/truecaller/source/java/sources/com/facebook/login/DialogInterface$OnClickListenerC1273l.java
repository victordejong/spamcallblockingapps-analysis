package com.facebook.login;

import android.content.DialogInterface;
/* renamed from: com.facebook.login.l */
/* loaded from: classes2-dex2jar.jar:com/facebook/login/l.class */
public class DialogInterface$OnClickListenerC1273l implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ DeviceAuthDialog f3457a;

    public DialogInterface$OnClickListenerC1273l(DeviceAuthDialog deviceAuthDialog) {
        this.f3457a = deviceAuthDialog;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f3457a.getDialog().setContentView(this.f3457a.m41606QA(false));
        DeviceAuthDialog deviceAuthDialog = this.f3457a;
        deviceAuthDialog.m41601VA(deviceAuthDialog.f3348k);
    }
}

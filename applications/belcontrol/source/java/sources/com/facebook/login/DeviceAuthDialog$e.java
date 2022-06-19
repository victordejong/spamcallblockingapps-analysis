package com.facebook.login;

import android.content.DialogInterface;
/* loaded from: classes-dex2jar.jar:com/facebook/login/DeviceAuthDialog$e.class */
public class DeviceAuthDialog$e implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ DeviceAuthDialog f2522a;

    public DeviceAuthDialog$e(DeviceAuthDialog deviceAuthDialog) {
        this.f2522a = deviceAuthDialog;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        DeviceAuthDialog.u(this.f2522a).setContentView(this.f2522a.z(false));
        DeviceAuthDialog deviceAuthDialog = this.f2522a;
        deviceAuthDialog.H(DeviceAuthDialog.s(deviceAuthDialog));
    }
}

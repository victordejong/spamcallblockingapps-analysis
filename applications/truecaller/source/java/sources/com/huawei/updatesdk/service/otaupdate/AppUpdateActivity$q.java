package com.huawei.updatesdk.service.otaupdate;

import android.content.DialogInterface;
import android.content.Intent;
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/service/otaupdate/AppUpdateActivity$q.class */
public class AppUpdateActivity$q implements DialogInterface.OnDismissListener {
    private AppUpdateActivity$q() {
    }

    public /* synthetic */ AppUpdateActivity$q(AppUpdateActivity$g appUpdateActivity$g) {
        this();
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        Intent intent = new Intent();
        intent.putExtra(UpdateKey.DIALOG_STATUS, 10001);
        C2589d.m36534a().m36530b(intent);
    }
}

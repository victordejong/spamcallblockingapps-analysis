package com.huawei.updatesdk.service.otaupdate;

import android.content.DialogInterface;
import android.content.Intent;
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/service/otaupdate/AppUpdateActivity$r.class */
public class AppUpdateActivity$r implements DialogInterface.OnShowListener {
    private AppUpdateActivity$r() {
    }

    public /* synthetic */ AppUpdateActivity$r(AppUpdateActivity$g appUpdateActivity$g) {
        this();
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        Intent intent = new Intent();
        intent.putExtra(UpdateKey.DIALOG_STATUS, UpdateDialogStatusCode.SHOW);
        C2589d.m36534a().m36530b(intent);
    }
}

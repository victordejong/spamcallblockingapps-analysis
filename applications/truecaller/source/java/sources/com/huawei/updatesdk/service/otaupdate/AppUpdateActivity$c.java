package com.huawei.updatesdk.service.otaupdate;

import android.content.DialogInterface;
import android.view.KeyEvent;
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/service/otaupdate/AppUpdateActivity$c.class */
public class AppUpdateActivity$c implements DialogInterface.OnKeyListener {

    /* renamed from: a */
    public final /* synthetic */ AppUpdateActivity f8303a;

    public AppUpdateActivity$c(AppUpdateActivity appUpdateActivity) {
        this.f8303a = appUpdateActivity;
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        if (i == 4 && keyEvent.getAction() == 0) {
            AppUpdateActivity.a(this.f8303a, 4);
            this.f8303a.finish();
            return true;
        }
        return false;
    }
}

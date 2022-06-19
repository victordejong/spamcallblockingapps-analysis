package com.huawei.updatesdk.service.otaupdate;

import android.content.DialogInterface;
import android.view.KeyEvent;
import com.huawei.updatesdk.p111b.p122i.C2575a;
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/service/otaupdate/AppUpdateActivity$f.class */
public class AppUpdateActivity$f implements DialogInterface.OnKeyListener {

    /* renamed from: a */
    public final /* synthetic */ C2575a f8304a;

    /* renamed from: b */
    public final /* synthetic */ AppUpdateActivity f8305b;

    public AppUpdateActivity$f(AppUpdateActivity appUpdateActivity, C2575a c2575a) {
        this.f8305b = appUpdateActivity;
        this.f8304a = c2575a;
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        if (i == 4 && keyEvent.getAction() == 0) {
            if (!AppUpdateActivity.d(this.f8305b)) {
                AppUpdateActivity.a(this.f8305b, 4);
                this.f8305b.finish();
                return true;
            }
            this.f8304a.m36566a();
            AppUpdateActivity appUpdateActivity = this.f8305b;
            AppUpdateActivity.b(appUpdateActivity, AppUpdateActivity.b(appUpdateActivity));
            return true;
        }
        return false;
    }
}

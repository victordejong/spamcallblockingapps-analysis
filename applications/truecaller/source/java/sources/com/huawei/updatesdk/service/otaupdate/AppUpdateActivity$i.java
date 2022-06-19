package com.huawei.updatesdk.service.otaupdate;

import android.os.Bundle;
import com.huawei.updatesdk.p097a.p106b.p108b.C2532b;
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/service/otaupdate/AppUpdateActivity$i.class */
public class AppUpdateActivity$i implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C2532b f8309a;

    /* renamed from: b */
    public final /* synthetic */ AppUpdateActivity f8310b;

    public AppUpdateActivity$i(AppUpdateActivity appUpdateActivity, C2532b c2532b) {
        this.f8310b = appUpdateActivity;
        this.f8309a = c2532b;
    }

    @Override // java.lang.Runnable
    public void run() {
        Bundle m36747b = this.f8309a.m36747b();
        if (m36747b == null) {
            return;
        }
        int i = m36747b.getInt("INSTALL_STATE");
        C2589d.m36534a().m36532a(AppUpdateActivity.a(this.f8310b, i, m36747b.getInt("INSTALL_TYPE"), -1));
        AppUpdateActivity.c(this.f8310b, i);
    }
}

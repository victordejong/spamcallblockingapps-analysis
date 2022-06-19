package com.huawei.updatesdk.service.otaupdate;

import android.view.View;
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/service/otaupdate/AppUpdateActivity$l.class */
public class AppUpdateActivity$l implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ String f8311a;

    /* renamed from: b */
    public final /* synthetic */ AppUpdateActivity f8312b;

    public AppUpdateActivity$l(AppUpdateActivity appUpdateActivity, String str) {
        this.f8312b = appUpdateActivity;
        this.f8311a = str;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        AppUpdateActivity.a(this.f8312b, this.f8311a);
    }
}

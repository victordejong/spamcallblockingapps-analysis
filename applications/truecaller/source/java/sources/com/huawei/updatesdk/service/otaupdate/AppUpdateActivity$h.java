package com.huawei.updatesdk.service.otaupdate;
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/service/otaupdate/AppUpdateActivity$h.class */
public class AppUpdateActivity$h implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ boolean f8307a;

    /* renamed from: b */
    public final /* synthetic */ AppUpdateActivity f8308b;

    public AppUpdateActivity$h(AppUpdateActivity appUpdateActivity, boolean z) {
        this.f8308b = appUpdateActivity;
        this.f8307a = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f8307a) {
            AppUpdateActivity appUpdateActivity = this.f8308b;
            AppUpdateActivity.a(appUpdateActivity, AppUpdateActivity.b(appUpdateActivity));
            return;
        }
        AppUpdateActivity appUpdateActivity2 = this.f8308b;
        AppUpdateActivity.b(appUpdateActivity2, AppUpdateActivity.b(appUpdateActivity2));
    }
}

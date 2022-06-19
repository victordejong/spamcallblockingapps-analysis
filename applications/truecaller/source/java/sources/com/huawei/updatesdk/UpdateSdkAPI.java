package com.huawei.updatesdk;

import android.content.Context;
import com.huawei.updatesdk.service.appmgr.bean.ApkUpgradeInfo;
import com.huawei.updatesdk.service.appmgr.bean.AppInfoAdapter;
import com.huawei.updatesdk.service.otaupdate.C2592g;
import com.huawei.updatesdk.service.otaupdate.CheckUpdateCallBack;
import com.huawei.updatesdk.service.otaupdate.UpdateParams;
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/UpdateSdkAPI.class */
public final class UpdateSdkAPI {
    public static void checkAppUpdate(Context context, CheckUpdateCallBack checkUpdateCallBack, boolean z, boolean z2) {
        C2592g.m36501a(context, checkUpdateCallBack, z, z2);
    }

    public static void checkAppUpdate(Context context, UpdateParams updateParams, CheckUpdateCallBack checkUpdateCallBack) {
        C2592g.m36500a(context, updateParams, checkUpdateCallBack);
    }

    public static void checkAppUpdateByAppInfo(Context context, CheckUpdateCallBack checkUpdateCallBack, AppInfoAdapter appInfoAdapter) {
        C2592g.m36503a(context, checkUpdateCallBack, appInfoAdapter);
    }

    public static void checkAppUpdateForHMSKit(Context context, UpdateParams updateParams, CheckUpdateCallBack checkUpdateCallBack) {
        C2592g.m36495b(context, updateParams, checkUpdateCallBack);
    }

    public static void checkClientOTAUpdate(Context context, CheckUpdateCallBack checkUpdateCallBack, boolean z, int i, boolean z2) {
        C2592g.m36502a(context, checkUpdateCallBack, z, i, z2);
    }

    public static void checkTargetAppUpdate(Context context, String str, CheckUpdateCallBack checkUpdateCallBack) {
        C2592g.m36498a(context, str, checkUpdateCallBack);
    }

    public static void releaseCallBack() {
        C2592g.m36508a();
    }

    @Deprecated
    public static void setAppStorePkgName(String str) {
    }

    public static void setServiceZone(String str) {
        C2592g.m36496a(str);
    }

    public static void showUpdateDialog(Context context, ApkUpgradeInfo apkUpgradeInfo, boolean z) {
        C2592g.m36505a(context, apkUpgradeInfo, z);
    }

    public static void showUpdateDialogByAppInfo(Context context, ApkUpgradeInfo apkUpgradeInfo, AppInfoAdapter appInfoAdapter) {
        C2592g.m36506a(context, apkUpgradeInfo, appInfoAdapter);
    }
}

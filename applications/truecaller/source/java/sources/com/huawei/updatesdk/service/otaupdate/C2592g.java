package com.huawei.updatesdk.service.otaupdate;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Toast;
import com.amazon.device.ads.DtbConstants;
import com.huawei.updatesdk.p097a.p098a.C2511a;
import com.huawei.updatesdk.p097a.p098a.p103d.p104i.C2524a;
import com.huawei.updatesdk.p097a.p098a.p103d.p104i.C2526c;
import com.huawei.updatesdk.p097a.p098a.p103d.p105j.C2529a;
import com.huawei.updatesdk.p097a.p106b.p107a.C2530a;
import com.huawei.updatesdk.p111b.p115b.C2546a;
import com.huawei.updatesdk.p111b.p120g.C2566b;
import com.huawei.updatesdk.p111b.p120g.C2567c;
import com.huawei.updatesdk.p111b.p121h.C2573c;
import com.huawei.updatesdk.service.appmgr.bean.ApkUpgradeInfo;
import com.huawei.updatesdk.service.appmgr.bean.AppInfoAdapter;
import com.huawei.updatesdk.service.otaupdate.UpdateParams;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.updatesdk.service.otaupdate.g */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/service/otaupdate/g.class */
public final class C2592g {
    /* renamed from: a */
    public static void m36508a() {
        C2511a.m36862b("UpdateSDKImpl", "UpdateSDK releaseCallBack");
        C2589d.m36534a().m36531a((CheckUpdateCallBack) null);
        List<AsyncTask> m36606a = C2566b.m36606a();
        if (m36606a == null || m36606a.isEmpty()) {
            return;
        }
        for (AsyncTask asyncTask : m36606a) {
            if (asyncTask != null) {
                asyncTask.cancel(true);
            }
            C2511a.m36862b("UpdateSDKImpl", "cancel task");
        }
        m36606a.clear();
    }

    /* renamed from: a */
    private static void m36507a(Context context) {
        C2530a.m36756a(context);
        C2511a.m36862b("UpdateSDKImpl", "UpdateSDK version is: 4.0.1.300 ,flavor: envrelease ,pkgName: " + context.getPackageName());
        context.getPackageName();
        if (C2526c.m36782d() == 3) {
            C2524a.m36808b(context);
        }
    }

    /* renamed from: a */
    public static void m36506a(Context context, ApkUpgradeInfo apkUpgradeInfo, AppInfoAdapter appInfoAdapter) {
        if (appInfoAdapter != null && !TextUtils.isEmpty(appInfoAdapter.getAppStorePkgName())) {
            C2591f.m36509e().m36511c(appInfoAdapter.getAppStorePkgName());
        }
        m36504a(context, apkUpgradeInfo, appInfoAdapter != null && appInfoAdapter.isMustBtnOne(), m36497a(appInfoAdapter));
    }

    /* renamed from: a */
    public static void m36505a(Context context, ApkUpgradeInfo apkUpgradeInfo, boolean z) {
        m36504a(context, apkUpgradeInfo, z, false);
    }

    /* renamed from: a */
    private static void m36504a(Context context, ApkUpgradeInfo apkUpgradeInfo, boolean z, boolean z2) {
        String str;
        StringBuilder sb;
        if (context == null || apkUpgradeInfo == null) {
            return;
        }
        Intent intent = new Intent(context, AppUpdateActivity.class);
        Bundle bundle = new Bundle();
        bundle.putSerializable("app_update_parm", apkUpgradeInfo);
        bundle.putBoolean("app_must_btn", z);
        bundle.putBoolean("is_apptouch", z2);
        intent.putExtras(bundle);
        if (!(context instanceof Activity)) {
            intent.setFlags(268435456);
        }
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            sb = C22128a.m8728C("go AppUpdateActivity error: ");
            str = e.toString();
            sb.append(str);
            C2511a.m36863a("UpdateSDKImpl", sb.toString());
        } catch (SecurityException e2) {
            sb = C22128a.m8728C("go AppUpdateActivity security error: ");
            str = e2.toString();
            sb.append(str);
            C2511a.m36863a("UpdateSDKImpl", sb.toString());
        }
    }

    /* renamed from: a */
    public static void m36503a(Context context, CheckUpdateCallBack checkUpdateCallBack, AppInfoAdapter appInfoAdapter) {
        if (context == null) {
            return;
        }
        UpdateParams.Builder builder = new UpdateParams.Builder();
        if (appInfoAdapter != null) {
            if (!TextUtils.isEmpty(appInfoAdapter.getServiceZone())) {
                builder.setServiceZone(appInfoAdapter.getServiceZone());
            }
            C2591f.m36509e().m36511c(appInfoAdapter.getAppStorePkgName());
            builder.setTargetPkgName(appInfoAdapter.getTargetPkgName()).setPackageList(appInfoAdapter.getPackageList()).setMustBtnOne(appInfoAdapter.isMustBtnOne()).setIsShowImmediate(appInfoAdapter.isShowImmediate()).setMinIntervalDay(appInfoAdapter.getMinIntervalDay());
        }
        UpdateParams build = builder.build();
        build.resetParamList();
        m36499a(context, build, checkUpdateCallBack, m36497a(appInfoAdapter));
    }

    /* renamed from: a */
    public static void m36502a(Context context, CheckUpdateCallBack checkUpdateCallBack, boolean z, int i, boolean z2) {
        if (!C2529a.m36758d(context)) {
            return;
        }
        m36507a(context);
        long currentTimeMillis = System.currentTimeMillis();
        long m36685b = C2546a.m36680d().m36685b();
        if (i != 0 && Math.abs(currentTimeMillis - m36685b) < i * DtbConstants.SIS_CHECKIN_INTERVAL) {
            C2511a.m36862b("UpdateSDKImpl", "Interval check time is limited and do not check app update.");
            return;
        }
        C2546a.m36680d().m36689a(currentTimeMillis);
        AsyncTaskC2590e asyncTaskC2590e = new AsyncTaskC2590e(context, new UpdateParams.Builder().setIsShowImmediate(z).setMustBtnOne(z2).setMinIntervalDay(i).build(), checkUpdateCallBack);
        asyncTaskC2590e.m36518b(true);
        asyncTaskC2590e.executeOnExecutor(C2567c.f8276b, new Void[0]);
    }

    /* renamed from: a */
    public static void m36501a(Context context, CheckUpdateCallBack checkUpdateCallBack, boolean z, boolean z2) {
        if (context == null) {
            return;
        }
        if (C2529a.m36758d(context)) {
            m36507a(context);
            new AsyncTaskC2590e(context, new UpdateParams.Builder().setIsShowImmediate(z).setMustBtnOne(z2).build(), checkUpdateCallBack).executeOnExecutor(C2567c.f8276b, new Void[0]);
            return;
        }
        if (checkUpdateCallBack != null) {
            Intent intent = new Intent();
            intent.putExtra(UpdateKey.STATUS, 2);
            checkUpdateCallBack.onUpdateInfo(intent);
        }
        Toast.makeText(context, C2573c.m36573c(context, "upsdk_no_available_network_prompt_toast"), 0).show();
    }

    /* renamed from: a */
    public static void m36500a(Context context, UpdateParams updateParams, CheckUpdateCallBack checkUpdateCallBack) {
        if (context == null || updateParams == null || checkUpdateCallBack == null) {
            return;
        }
        updateParams.resetParamList();
        m36495b(context, updateParams, checkUpdateCallBack);
    }

    /* renamed from: a */
    private static void m36499a(Context context, UpdateParams updateParams, CheckUpdateCallBack checkUpdateCallBack, boolean z) {
        if (context == null || updateParams == null || checkUpdateCallBack == null) {
            return;
        }
        m36507a(context);
        long currentTimeMillis = System.currentTimeMillis();
        long m36685b = C2546a.m36680d().m36685b();
        if (updateParams.getMinIntervalDay() != 0 && Math.abs(currentTimeMillis - m36685b) < updateParams.getMinIntervalDay() * DtbConstants.SIS_CHECKIN_INTERVAL) {
            C2511a.m36862b("UpdateSDKImpl", "Interval check time is limited and do not check app update.");
        } else if (!C2529a.m36758d(context)) {
            Intent intent = new Intent();
            intent.putExtra(UpdateKey.STATUS, 2);
            checkUpdateCallBack.onUpdateInfo(intent);
        } else {
            C2546a.m36680d().m36689a(currentTimeMillis);
            AsyncTaskC2590e asyncTaskC2590e = new AsyncTaskC2590e(context, updateParams, checkUpdateCallBack);
            asyncTaskC2590e.m36522a(z);
            asyncTaskC2590e.executeOnExecutor(C2567c.f8276b, new Void[0]);
        }
    }

    /* renamed from: a */
    public static void m36498a(Context context, String str, CheckUpdateCallBack checkUpdateCallBack) {
        if (context == null || TextUtils.isEmpty(str) || checkUpdateCallBack == null) {
            if (checkUpdateCallBack == null) {
                return;
            }
            Intent intent = new Intent();
            intent.putExtra(UpdateKey.STATUS, 1);
            checkUpdateCallBack.onUpdateInfo(intent);
        } else if (C2529a.m36758d(context)) {
            m36507a(context);
            new AsyncTaskC2590e(context, new UpdateParams.Builder().setMustBtnOne(false).setTargetPkgName(str).build(), checkUpdateCallBack).executeOnExecutor(C2567c.f8276b, new Void[0]);
        } else {
            Intent intent2 = new Intent();
            intent2.putExtra(UpdateKey.STATUS, 2);
            checkUpdateCallBack.onUpdateInfo(intent2);
        }
    }

    /* renamed from: a */
    public static void m36496a(String str) {
        C2591f.m36509e().m36513b(str);
    }

    /* renamed from: a */
    private static boolean m36497a(AppInfoAdapter appInfoAdapter) {
        return appInfoAdapter != null && !TextUtils.isEmpty(appInfoAdapter.getAppStorePkgName()) && TextUtils.equals(appInfoAdapter.getBusiness(), "AppTouch");
    }

    /* renamed from: b */
    public static void m36495b(Context context, UpdateParams updateParams, CheckUpdateCallBack checkUpdateCallBack) {
        m36499a(context, updateParams, checkUpdateCallBack, false);
    }
}

package com.huawei.hms.update.manager;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.text.TextUtils;
import com.huawei.hms.activity.BridgeActivity;
import com.huawei.hms.android.SystemUtils;
import com.huawei.hms.availableupdate.p;
import com.huawei.hms.common.PackageConstants;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.update.p096ui.UpdateBean;
import com.huawei.hms.utils.HMSPackageManager;
import com.huawei.hms.utils.PackageManagerHelper;
import com.huawei.hms.utils.ResourceLoaderUtil;
import com.huawei.hms.utils.StringUtil;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/update/manager/UpdateManager.class */
public class UpdateManager {
    /* renamed from: a */
    public static void m37189a(Activity activity, ArrayList<Integer> arrayList) {
        if (!m37187a(activity, PackageConstants.SERVICES_PACKAGE_APPMARKET) || PackageConstants.SERVICES_PACKAGE_APPMARKET.equals(activity.getPackageName())) {
            return;
        }
        arrayList.add(5);
    }

    /* renamed from: a */
    public static void m37186a(Context context, ArrayList<Integer> arrayList) {
        if (SystemUtils.isTVDevice()) {
            arrayList.add(5);
        } else if (!SystemUtils.isSystemApp(context.getApplicationContext(), PackageConstants.SERVICES_PACKAGE_APPMARKET) || !m37185b(context) || !SystemUtils.isChinaROM()) {
            m37182c(context, arrayList);
        } else {
            arrayList.add(0);
            arrayList.add(6);
        }
    }

    /* renamed from: a */
    public static boolean m37188a(Context context) {
        Bundle bundle;
        if (context == null) {
            HMSLog.m37195e("UpdateManager", "In getAndroidMarketSetting, context is null.");
            return true;
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            HMSLog.m37193i("UpdateManager", "In getAndroidMarketSetting, configuration not found for android channel market setting.");
            return true;
        }
        try {
            ApplicationInfo applicationInfo = packageManager.getPackageInfo(context.getPackageName(), 128).applicationInfo;
            if (applicationInfo != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("com.huawei.hms.client.channel.androidMarket")) {
                return applicationInfo.metaData.getBoolean("com.huawei.hms.client.channel.androidMarket", true);
            }
        } catch (PackageManager.NameNotFoundException e) {
            HMSLog.m37195e("UpdateManager", "In getAndroidMarketSetting, Failed to read meta data from android market channel.");
        } catch (RuntimeException e2) {
            HMSLog.m37194e("UpdateManager", "In getAndroidMarketSetting, Failed to read meta data from android market channel.", e2);
        }
        HMSLog.m37193i("UpdateManager", "In getAndroidMarketSetting, configuration not found for android channel market setting.");
        return true;
    }

    /* renamed from: a */
    public static boolean m37187a(Context context, String str) {
        PackageManagerHelper.PackageStates packageStates = new PackageManagerHelper(context).getPackageStates(str);
        HMSLog.m37193i("UpdateManager", "app is: " + str + ";status is:" + packageStates);
        return PackageManagerHelper.PackageStates.ENABLED == packageStates;
    }

    /* renamed from: b */
    public static void m37184b(Context context, ArrayList<Integer> arrayList) {
        if (!m37187a(context, PackageConstants.SERVICES_PACKAGE_APPMARKET) || PackageConstants.SERVICES_PACKAGE_APPMARKET.equals(context.getPackageName())) {
            return;
        }
        arrayList.add(5);
    }

    /* renamed from: b */
    public static boolean m37185b(Context context) {
        int packageVersionCode = new PackageManagerHelper(context).getPackageVersionCode(PackageConstants.SERVICES_PACKAGE_APPMARKET);
        C22128a.m8723D0("getHiappVersion is ", packageVersionCode, "UpdateManager");
        return ((long) packageVersionCode) >= 70203000;
    }

    /* renamed from: c */
    public static void m37182c(Context context, ArrayList<Integer> arrayList) {
        if (m37187a(context, PackageConstants.SERVICES_PACKAGE_APPMARKET) && !PackageConstants.SERVICES_PACKAGE_APPMARKET.equals(context.getPackageName()) && m37183c(context)) {
            arrayList.add(5);
        } else if (m37181d(context)) {
            arrayList.add(7);
        } else if (m37188a(context)) {
        } else {
            arrayList.add(6);
        }
    }

    /* renamed from: c */
    public static boolean m37183c(Context context) {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        if (context == null) {
            HMSLog.m37193i("UpdateManager", "In isAgNewVersion, context is null.");
            return false;
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            HMSLog.m37193i("UpdateManager", "In isAgNewVersion, configuration not found for base version setting");
            return false;
        }
        try {
            applicationInfo = packageManager.getPackageInfo(PackageConstants.SERVICES_PACKAGE_APPMARKET, 128).applicationInfo;
        } catch (PackageManager.NameNotFoundException e) {
            HMSLog.m37195e("UpdateManager", "In isAgNewVersion, Failed to read meta data from base version setting channel.");
        } catch (RuntimeException e2) {
            HMSLog.m37194e("UpdateManager", "In isAgNewVersion, Failed to read meta data from base version setting channel.", e2);
        }
        if (applicationInfo != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("com.huawei.hms.client.service.name:base")) {
            String string = applicationInfo.metaData.getString("com.huawei.hms.client.service.name:base");
            if (!TextUtils.isEmpty(string) && string.split(StringConstant.COLON).length == 2) {
                if (StringUtil.convertVersion2Integer(string.split(StringConstant.COLON)[1]) >= 50004100) {
                    return true;
                }
                HMSLog.m37193i("UpdateManager", "In isAgNewVersion, configuration not found for base version setting");
                return false;
            }
            HMSLog.m37193i("UpdateManager", "In isAgNewVersion, configuration not found for base version setting");
            return false;
        }
        HMSLog.m37193i("UpdateManager", "In isAgNewVersion, configuration not found for base version setting");
        return false;
    }

    /* renamed from: d */
    public static boolean m37181d(Context context) {
        String str;
        boolean z = false;
        List<ResolveInfo> queryIntentServices = context.getPackageManager().queryIntentServices(new Intent("com.apptouch.intent.action.update_hms"), 0);
        if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
            for (ResolveInfo resolveInfo : queryIntentServices) {
                ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                if (serviceInfo != null) {
                    String str2 = serviceInfo.packageName;
                    if (!TextUtils.isEmpty(str2) && SystemUtils.isSystemApp(context.getApplicationContext(), str2)) {
                        str = str2;
                        break;
                    }
                }
            }
        }
        str = null;
        if (str != null) {
            z = true;
        }
        return z;
    }

    public static Intent getStartUpdateIntent(Activity activity, UpdateBean updateBean) {
        if (activity == null || updateBean == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(updateBean.getClientAppName())) {
            m37186a((Context) activity, (ArrayList<Integer>) arrayList);
        } else {
            m37189a(activity, (ArrayList<Integer>) arrayList);
        }
        int i = -2;
        if (arrayList.size() > 0) {
            i = ((Integer) arrayList.get(0)).intValue();
        } else {
            HMSLog.m37193i("UpdateManager", "typeList is empty, no upgrade solution");
        }
        updateBean.setTypeList(arrayList);
        Intent intentStartBridgeActivity = BridgeActivity.getIntentStartBridgeActivity(activity, p.a(i));
        intentStartBridgeActivity.putExtra(BridgeActivity.EXTRA_DELEGATE_UPDATE_INFO, updateBean);
        return intentStartBridgeActivity;
    }

    public static Intent getStartUpdateIntent(Context context, UpdateBean updateBean) {
        if (context == null || updateBean == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(updateBean.getClientAppName())) {
            m37186a(context, arrayList);
        } else {
            m37184b(context, arrayList);
        }
        int i = -2;
        if (arrayList.size() > 0) {
            i = ((Integer) arrayList.get(0)).intValue();
        } else {
            HMSLog.m37193i("UpdateManager", "typeList is empty, no upgrade solution");
        }
        updateBean.setTypeList(arrayList);
        Intent intentStartBridgeActivity = BridgeActivity.getIntentStartBridgeActivity(context, p.a(i));
        intentStartBridgeActivity.putExtra(BridgeActivity.EXTRA_DELEGATE_UPDATE_INFO, updateBean);
        return intentStartBridgeActivity;
    }

    public static void startUpdate(Activity activity, int i, UpdateBean updateBean) {
        Intent startUpdateIntent = getStartUpdateIntent(activity, updateBean);
        if (startUpdateIntent != null) {
            activity.startActivityForResult(startUpdateIntent, i);
        }
    }

    public static Intent startUpdateIntent(Activity activity) {
        Intent intent;
        if (activity == null) {
            return null;
        }
        UpdateBean updateBean = new UpdateBean();
        updateBean.setHmsOrApkUpgrade(true);
        updateBean.setClientPackageName(HMSPackageManager.getInstance(activity.getApplicationContext()).getHMSPackageName());
        updateBean.setClientVersionCode(HMSPackageManager.getInstance(activity.getApplicationContext()).getHmsVersionCode());
        updateBean.setClientAppId("C10132067");
        updateBean.setNeedConfirm(false);
        if (ResourceLoaderUtil.getmContext() == null) {
            ResourceLoaderUtil.setmContext(activity.getApplicationContext());
        }
        updateBean.setClientAppName(ResourceLoaderUtil.getString("hms_update_title"));
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(updateBean.getClientAppName())) {
            m37186a((Context) activity, (ArrayList<Integer>) arrayList);
        } else {
            m37189a(activity, (ArrayList<Integer>) arrayList);
        }
        updateBean.setTypeList(arrayList);
        if (arrayList.size() > 1) {
            intent = BridgeActivity.getIntentStartBridgeActivity(activity, p.a(((Integer) arrayList.get(1)).intValue()));
        } else {
            int i = -2;
            if (arrayList.size() > 0) {
                i = ((Integer) arrayList.get(0)).intValue();
            } else {
                HMSLog.m37193i("UpdateManager", "typeList is empty, no upgrade solution");
            }
            intent = BridgeActivity.getIntentStartBridgeActivity(activity, p.a(i));
        }
        intent.putExtra(BridgeActivity.EXTRA_DELEGATE_UPDATE_INFO, updateBean);
        return intent;
    }
}

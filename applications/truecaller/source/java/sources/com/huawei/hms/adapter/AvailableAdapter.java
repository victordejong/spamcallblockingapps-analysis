package com.huawei.hms.adapter;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.huawei.hms.activity.BridgeActivity;
import com.huawei.hms.adapter.internal.CommonCode;
import com.huawei.hms.adapter.sysobs.SystemManager;
import com.huawei.hms.adapter.sysobs.SystemObserver;
import com.huawei.hms.adapter.ui.UpdateAdapter;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.update.note.AppSpoofResolution;
import com.huawei.hms.utils.Checker;
import com.huawei.hms.utils.HMSPackageManager;
import com.huawei.hms.utils.PackageManagerHelper;
import com.huawei.hms.utils.UIUtil;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/adapter/AvailableAdapter.class */
public class AvailableAdapter {

    /* renamed from: a */
    public final int f7250a;

    /* renamed from: b */
    public AvailableCallBack f7251b;

    /* renamed from: d */
    public SystemObserver f7253d = new a(this);

    /* renamed from: c */
    public boolean f7252c = false;

    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/adapter/AvailableAdapter$AvailableCallBack.class */
    public interface AvailableCallBack {
        void onComplete(int i);
    }

    public AvailableAdapter(int i) {
        this.f7250a = i;
    }

    /* renamed from: a */
    public final AvailableCallBack m38178a() {
        return this.f7251b;
    }

    /* renamed from: a */
    public final boolean m38177a(Activity activity) {
        boolean z;
        if (HMSPackageManager.getInstance(activity).getHmsVersionCode() >= 40000000) {
            HMSLog.m37193i("AvailableAdapter", "enter 4.0 HmsCore upgrade process");
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    public int isHuaweiMobileServicesAvailable(Context context) {
        Checker.checkNonNull(context, "context must not be null.");
        HMSPackageManager hMSPackageManager = HMSPackageManager.getInstance(context);
        PackageManagerHelper.PackageStates hMSPackageStatesForMultiService = hMSPackageManager.getHMSPackageStatesForMultiService();
        if (PackageManagerHelper.PackageStates.NOT_INSTALLED.equals(hMSPackageStatesForMultiService)) {
            HMSLog.m37193i("AvailableAdapter", "HMS is not installed");
            return 1;
        } else if (PackageManagerHelper.PackageStates.SPOOF.equals(hMSPackageStatesForMultiService)) {
            HMSLog.m37193i("AvailableAdapter", "HMS is spoofed");
            return 29;
        } else if (PackageManagerHelper.PackageStates.DISABLED.equals(hMSPackageStatesForMultiService)) {
            HMSLog.m37193i("AvailableAdapter", "HMS is disabled");
            return 3;
        } else if (!hMSPackageManager.isApkUpdateNecessary(this.f7250a)) {
            return 0;
        } else {
            HMSLog.m37193i("AvailableAdapter", "The current version does not meet the minimum version requirements");
            return 2;
        }
    }

    public boolean isUserNoticeError(int i) {
        return i == 29;
    }

    public boolean isUserResolvableError(int i) {
        return i == 1 || i == 2;
    }

    public void setCalledBySolutionInstallHms(boolean z) {
        this.f7252c = z;
    }

    public void startNotice(Activity activity, AvailableCallBack availableCallBack) {
        if (activity == null || availableCallBack == null) {
            return;
        }
        if (UIUtil.isBackground(activity)) {
            HMSLog.m37193i("AvailableAdapter", "current app is in Background");
            availableCallBack.onComplete(28);
            return;
        }
        HMSLog.m37193i("AvailableAdapter", "startNotice");
        this.f7251b = availableCallBack;
        SystemManager.getSystemNotifier().registerObserver(this.f7253d);
        activity.startActivity(BridgeActivity.getIntentStartBridgeActivity(activity, AppSpoofResolution.class.getName()));
    }

    public void startResolution(Activity activity, AvailableCallBack availableCallBack) {
        if (activity == null || availableCallBack == null) {
            return;
        }
        if (UIUtil.isBackground(activity)) {
            HMSLog.m37193i("AvailableAdapter", "current app is in Background");
            availableCallBack.onComplete(28);
            return;
        }
        HMSLog.m37193i("AvailableAdapter", "startResolution");
        this.f7251b = availableCallBack;
        SystemManager.getSystemNotifier().registerObserver(this.f7253d);
        Intent intentStartBridgeActivity = BridgeActivity.getIntentStartBridgeActivity(activity, UpdateAdapter.class.getName());
        intentStartBridgeActivity.putExtra(CommonCode.MapKey.UPDATE_VERSION, this.f7250a);
        if (this.f7252c) {
            intentStartBridgeActivity.putExtra("installHMS", "installHMS");
        }
        intentStartBridgeActivity.putExtra(CommonCode.MapKey.NEW_UPDATE, m38177a(activity));
        activity.startActivity(intentStartBridgeActivity);
    }
}

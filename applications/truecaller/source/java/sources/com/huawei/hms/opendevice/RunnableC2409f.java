package com.huawei.hms.opendevice;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.huawei.hms.aaid.HmsInstanceId;
import com.huawei.hms.aaid.constant.ErrorEnum;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.Util;
/* renamed from: com.huawei.hms.opendevice.f */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/opendevice/f.class */
public class RunnableC2409f implements Runnable {

    /* renamed from: a */
    public Context f7636a;

    public RunnableC2409f(Context context) {
        this.f7636a = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        Bundle bundle;
        try {
            int internalCode = ErrorEnum.SUCCESS.getInternalCode();
            ApiException e = null;
            try {
                str = HmsInstanceId.getInstance(this.f7636a).getToken(Util.getAppId(this.f7636a), null);
            } catch (ApiException e2) {
                e = e2;
                str = null;
            }
            try {
                HMSLog.m37193i("AutoInit", "Push init succeed");
                if (TextUtils.isEmpty(str)) {
                    return;
                }
            } catch (ApiException e3) {
                e = e3;
                internalCode = e.getStatusCode();
                HMSLog.m37195e("AutoInit", "new Push init failed");
                bundle = this.f7636a.getPackageManager().getApplicationInfo(this.f7636a.getPackageName(), 128).metaData;
                if (bundle != null) {
                }
                HMSLog.m37193i("AutoInit", "push kit sdk not exists");
                return;
            }
            try {
                bundle = this.f7636a.getPackageManager().getApplicationInfo(this.f7636a.getPackageName(), 128).metaData;
                if (bundle != null || bundle.getString("com.huawei.hms.client.service.name:push") == null) {
                    HMSLog.m37193i("AutoInit", "push kit sdk not exists");
                    return;
                }
                Intent intent = new Intent("com.huawei.push.action.MESSAGING_EVENT");
                intent.setPackage(this.f7636a.getPackageName());
                Bundle bundle2 = new Bundle();
                bundle2.putString("message_type", "new_token");
                bundle2.putString(RemoteMessageConst.DEVICE_TOKEN, str);
                bundle2.putInt("error", internalCode);
                if (e != null) {
                    bundle2.putSerializable("exception_key", e);
                }
                if (new C2411h().m37425a(this.f7636a, bundle2, intent)) {
                    return;
                }
                HMSLog.m37195e("AutoInit", "start service failed");
            } catch (PackageManager.NameNotFoundException e4) {
                HMSLog.m37193i("AutoInit", "push kit sdk not exists");
            }
        } catch (Exception e5) {
            HMSLog.m37194e("AutoInit", "Push init failed", e5);
        }
    }
}

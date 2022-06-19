package com.huawei.hms.support.api.push.service;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import com.huawei.hms.push.C2425c;
import com.huawei.hms.push.C2431i;
import com.huawei.hms.push.C2444u;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.HMSPackageManager;
import com.huawei.hms.utils.PackageManagerHelper;
import com.huawei.hms.utils.ResourceLoaderUtil;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/api/push/service/HmsMsgService.class */
public class HmsMsgService extends Service {

    /* renamed from: com.huawei.hms.support.api.push.service.HmsMsgService$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/api/push/service/HmsMsgService$a.class */
    public static class HandlerC2458a extends Handler {

        /* renamed from: a */
        public Context f7803a;

        public HandlerC2458a(Context context) {
            this.f7803a = context;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Bundle data = message.getData();
            if (Objects.equals(this.f7803a.getApplicationContext().getPackageManager().getNameForUid(message.sendingUid), HMSPackageManager.getInstance(this.f7803a).getHMSPackageName()) && data != null) {
                if (HMSPackageManager.getInstance(this.f7803a).getHMSPackageStates() != PackageManagerHelper.PackageStates.ENABLED) {
                    HMSLog.m37193i("HmsMsgService", "service not start by hms");
                } else {
                    HMSLog.m37193i("HmsMsgService", "chose push type");
                    if (Objects.equals(C2425c.m37355b(data, "push_action"), "com.huawei.push.msg.NOTIFY_MSG")) {
                        if (ResourceLoaderUtil.getmContext() == null) {
                            ResourceLoaderUtil.setmContext(this.f7803a.getApplicationContext());
                        }
                        HMSLog.m37193i("HmsMsgService", "invokeSelfShow");
                        HmsMsgService.m37211c(this.f7803a, data);
                    } else if (Objects.equals(C2425c.m37355b(data, "push_action"), "com.huawei.push.msg.PASSBY_MSG")) {
                        HMSLog.m37193i("HmsMsgService", "sendBroadcastToHms");
                        HmsMsgService.m37210d(this.f7803a, data);
                    }
                }
            }
            super.handleMessage(message);
        }
    }

    /* renamed from: c */
    public static void m37211c(Context context, Bundle bundle) {
        if (!C2444u.m37242a(context)) {
            HMSLog.m37193i("HmsMsgService", context.getPackageName() + " disable display notification.");
        }
        Intent intent = new Intent();
        intent.setAction("com.huawei.push.msg.NOTIFY_MSG");
        intent.putExtra("selfshow_info", C2425c.m37356a(bundle, "selfshow_info"));
        intent.putExtra("selfshow_token", C2425c.m37356a(bundle, "selfshow_token"));
        intent.setPackage(C2425c.m37354c(bundle, "push_package"));
        C2431i.m37345a(context, intent);
        HMSLog.m37193i("HmsMsgService", "invokeSelfShow done");
    }

    /* renamed from: d */
    public static void m37210d(Context context, Bundle bundle) {
        try {
            Intent intent = new Intent();
            intent.setAction("com.huawei.android.push.intent.RECEIVE");
            intent.putExtra("msg_data", C2425c.m37356a(bundle, "msg_data"));
            intent.putExtra(RemoteMessageConst.DEVICE_TOKEN, C2425c.m37356a(bundle, RemoteMessageConst.DEVICE_TOKEN));
            intent.putExtra("msgIdStr", C2425c.m37354c(bundle, "msgIdStr"));
            intent.setFlags(32);
            intent.setPackage(C2425c.m37354c(bundle, "push_package"));
            StringBuilder sb = new StringBuilder();
            sb.append(context.getPackageName());
            sb.append(".permission.PROCESS_PUSH_MSG");
            context.sendBroadcast(intent, sb.toString());
            HMSLog.m37193i("HmsMsgService", "send broadcast passby done");
        } catch (SecurityException e) {
            HMSLog.m37193i("HmsMsgService", "send broadcast SecurityException");
        } catch (Exception e2) {
            HMSLog.m37193i("HmsMsgService", "send broadcast Exception");
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        HMSLog.m37193i("HmsMsgService", "onBind");
        return new Messenger(new HandlerC2458a(this)).getBinder();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        HMSLog.m37193i("HmsMsgService", "Enter onStartCommand.");
        return 2;
    }
}

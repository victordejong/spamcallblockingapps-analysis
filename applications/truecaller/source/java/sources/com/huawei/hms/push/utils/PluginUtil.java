package com.huawei.hms.push.utils;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.amazon.device.ads.DtbConstants;
import com.huawei.hms.aaid.constant.ErrorEnum;
import com.huawei.hms.aaid.plugin.ProxyCenter;
import com.huawei.hms.aaid.utils.PushPreferences;
import com.huawei.hms.push.C2427e;
import com.huawei.hms.push.C2430h;
import com.huawei.hms.push.C2431i;
import com.huawei.hms.push.C2444u;
import com.huawei.hms.push.C2448x;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.ResourceLoaderUtil;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/utils/PluginUtil.class */
public class PluginUtil {
    /* renamed from: a */
    public static String m37235a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject.put(RemoteMessageConst.DATA, str);
            jSONObject2.put(RemoteMessageConst.MessageBody.MSG_CONTENT, jSONObject);
            return jSONObject2.toString();
        } catch (JSONException e) {
            HMSLog.m37195e("PluginUtil", "rebuild message failed");
            return null;
        }
    }

    /* renamed from: a */
    public static void m37238a(Context context, String str) {
        C2427e.m37350a(context, str, null, "102");
    }

    /* renamed from: a */
    public static void m37237a(Context context, String str, String str2, String str3) {
        HMSLog.m37193i("PluginUtil", "onNotification");
        if (!C2444u.m37242a(context)) {
            HMSLog.m37193i("PluginUtil", context.getPackageName() + " disable display notification.");
            C2427e.m37350a(context, str, null, "103");
            return;
        }
        Intent intent = new Intent();
        intent.setAction("com.huawei.push.msg.NOTIFY_MSG");
        Charset charset = C2448x.f7781a;
        intent.putExtra("selfshow_info", str3.getBytes(charset));
        intent.putExtra("selfshow_token", str2.getBytes(charset));
        intent.setPackage(context.getPackageName());
        C2431i.m37345a(context, intent);
        HMSLog.m37193i("PluginUtil", "invokeSelfShow done");
    }

    /* renamed from: a */
    public static boolean m37239a(Context context) {
        boolean z;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            HMSLog.m37192w("PluginUtil", "get running app processes null!");
            return false;
        }
        Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
        while (true) {
            z = false;
            if (!it.hasNext()) {
                break;
            }
            ActivityManager.RunningAppProcessInfo next = it.next();
            if (next.processName.equals(context.getPackageName())) {
                int i = next.importance;
                z = false;
                if (i != 100) {
                    z = false;
                    if (i != 200) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m37236a(Context context, String[] strArr) {
        if (TextUtils.equals(strArr[1], DtbConstants.NETWORK_TYPE_UNKNOWN)) {
            boolean z = true;
            if (!m37239a(context)) {
                z = TextUtils.equals(strArr[2], "1");
            }
            return z;
        }
        return false;
    }

    public static void onAppOpened(Context context, String str, String str2, Bundle bundle) {
        C2427e.m37350a(context, str, str2, "appHasOpenedId");
        C2427e.m37352a(context, bundle, "hmsStatistics");
    }

    public static boolean onDataMessage(Context context, String str, String str2, boolean z) {
        HMSLog.m37193i("PluginUtil", "onDataMessage");
        if (TextUtils.isEmpty(str2)) {
            HMSLog.m37193i("PluginUtil", "Empty message received");
            return true;
        }
        if (z) {
            m37238a(context, str);
        }
        Intent intent = new Intent("com.huawei.push.action.MESSAGING_EVENT");
        intent.setPackage(context.getPackageName());
        Bundle bundle = new Bundle();
        bundle.putString("message_id", str);
        bundle.putByteArray(RemoteMessageConst.MSGBODY, str2.getBytes(C2448x.f7781a));
        bundle.putString("message_type", "received_message");
        return new C2430h().m37349a(context, bundle, intent);
    }

    public static boolean onDeletedMessages(Context context) {
        HMSLog.m37193i("PluginUtil", "onDeletedMessages");
        if (context == null) {
            return false;
        }
        Intent intent = new Intent("com.huawei.push.action.MESSAGING_EVENT");
        intent.setPackage(context.getPackageName());
        Bundle bundle = new Bundle();
        bundle.putString("message_proxy_type", ProxyCenter.getProxy().getProxyType());
        bundle.putString("message_type", "server_deleted_message");
        return new C2430h().m37349a(context, bundle, intent);
    }

    public static void onMessage(Context context, String[] strArr) {
        HMSLog.m37193i("PluginUtil", "onMessage");
        if (context == null || strArr == null || strArr.length < 5) {
            return;
        }
        if (ResourceLoaderUtil.getmContext() == null) {
            ResourceLoaderUtil.setmContext(context.getApplicationContext());
        }
        if (m37236a(context, strArr)) {
            m37237a(context, strArr[0], strArr[3], strArr[4]);
        } else {
            onDataMessage(context, strArr[0], strArr[4], true);
        }
    }

    public static boolean onNewToken(Context context, String str, String str2, ErrorEnum errorEnum) {
        HMSLog.m37193i("PluginUtil", "onNewToken called.");
        Intent intent = new Intent("com.huawei.push.action.MESSAGING_EVENT");
        intent.setPackage(context.getPackageName());
        Bundle bundle = new Bundle();
        bundle.putInt("error", errorEnum.getInternalCode());
        bundle.putString("message_type", "new_token");
        bundle.putString(RemoteMessageConst.DEVICE_TOKEN, str);
        if (TextUtils.equals(str2, context.getPackageName())) {
            bundle.putString("subjectId", null);
        } else {
            bundle.putString("subjectId", str2);
        }
        bundle.putString("message_proxy_type", ProxyCenter.getProxy().getProxyType());
        return new C2430h().m37349a(context, bundle, intent);
    }

    public static void onNotificationArrived(Context context, String str, String str2) {
        C2427e.m37350a(context, str, str2, "100");
    }

    public static void onNotificationClicked(Context context, String str, String str2) {
        C2427e.m37350a(context, str, str2, "1");
        onAppOpened(context, str, str2, null);
    }

    public static boolean onOldDataMessage(Context context, String str, String str2) {
        if (ResourceLoaderUtil.getmContext() == null) {
            ResourceLoaderUtil.setmContext(context.getApplicationContext());
        }
        return onDataMessage(context, str, m37235a(str2), true);
    }

    public static void saveNotifySwitch(Context context, boolean z) {
        new PushPreferences(context, "push_notify_flag").saveBoolean("notify_msg_enable", z);
    }
}

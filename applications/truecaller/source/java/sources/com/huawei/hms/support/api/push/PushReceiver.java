package com.huawei.hms.support.api.push;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.huawei.hms.aaid.constant.ErrorEnum;
import com.huawei.hms.adapter.internal.CommonCode;
import com.huawei.hms.push.AbstractC2441s;
import com.huawei.hms.push.AbstractC2447w;
import com.huawei.hms.push.C2430h;
import com.huawei.hms.push.C2446v;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.hms.push.utils.JsonUtil;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.ResourceLoaderUtil;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import java.util.concurrent.RejectedExecutionException;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/api/push/PushReceiver.class */
public final class PushReceiver extends BroadcastReceiver {

    /* renamed from: com.huawei.hms.support.api.push.PushReceiver$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/api/push/PushReceiver$a.class */
    public static class RunnableC2456a implements Runnable {

        /* renamed from: a */
        public Context f7799a;

        /* renamed from: b */
        public Intent f7800b;

        public RunnableC2456a(Context context, Intent intent) {
            this.f7799a = context;
            this.f7800b = intent;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent("com.huawei.push.action.MESSAGING_EVENT");
            intent.setPackage(this.f7800b.getPackage());
            try {
                JSONObject m37215b = PushReceiver.m37215b(this.f7800b);
                String string = JsonUtil.getString(m37215b, "moduleName", "");
                int i = JsonUtil.getInt(m37215b, "msgType", 0);
                int i2 = JsonUtil.getInt(m37215b, UpdateKey.STATUS, 0);
                int i3 = i2;
                if (ErrorEnum.SUCCESS.getInternalCode() != i2) {
                    i3 = ErrorEnum.ERROR_APP_SERVER_NOT_ONLINE.getInternalCode();
                }
                Bundle bundle = new Bundle();
                if (!"Push".equals(string) || i != 1) {
                    if (this.f7800b.getExtras() != null) {
                        bundle.putAll(this.f7800b.getExtras());
                    }
                    bundle.putString("message_type", "received_message");
                    bundle.putString("message_id", this.f7800b.getStringExtra("msgIdStr"));
                    bundle.putByteArray(RemoteMessageConst.MSGBODY, this.f7800b.getByteArrayExtra("msg_data"));
                    bundle.putString(RemoteMessageConst.DEVICE_TOKEN, AbstractC2447w.m37232a(this.f7800b.getByteArrayExtra(RemoteMessageConst.DEVICE_TOKEN)));
                    bundle.putInt(RemoteMessageConst.INPUT_TYPE, 1);
                    bundle.putString("message_proxy_type", this.f7800b.getStringExtra("message_proxy_type"));
                } else {
                    bundle.putString("message_type", "delivery");
                    bundle.putString("message_id", JsonUtil.getString(m37215b, RemoteMessageConst.MSGID, ""));
                    bundle.putInt("error", i3);
                    bundle.putString(CommonCode.MapKey.TRANSACTION_ID, JsonUtil.getString(m37215b, "transactionId", ""));
                }
                if (new C2430h().m37349a(this.f7799a, bundle, intent)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("receive ");
                    sb.append(this.f7800b.getAction());
                    sb.append(" and start service success");
                    HMSLog.m37193i("PushReceiver", sb.toString());
                    return;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("receive ");
                sb2.append(this.f7800b.getAction());
                sb2.append(" and start service failed");
                HMSLog.m37195e("PushReceiver", sb2.toString());
            } catch (RuntimeException e) {
                HMSLog.m37195e("PushReceiver", "handle push message occur exception.");
            }
        }
    }

    /* renamed from: com.huawei.hms.support.api.push.PushReceiver$b */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/api/push/PushReceiver$b.class */
    public static class RunnableC2457b implements Runnable {

        /* renamed from: a */
        public Context f7801a;

        /* renamed from: b */
        public Intent f7802b;

        public RunnableC2457b(Context context, Intent intent) {
            this.f7801a = context;
            this.f7802b = intent;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                byte[] byteArrayExtra = this.f7802b.getByteArrayExtra(RemoteMessageConst.DEVICE_TOKEN);
                if (byteArrayExtra != null && byteArrayExtra.length != 0) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("receive a push token: ");
                    sb.append(this.f7801a.getPackageName());
                    HMSLog.m37193i("PushReceiver", sb.toString());
                    Intent intent = new Intent("com.huawei.push.action.MESSAGING_EVENT");
                    intent.setPackage(this.f7802b.getPackage());
                    Bundle bundle = new Bundle();
                    bundle.putString("message_type", "new_token");
                    bundle.putString(RemoteMessageConst.DEVICE_TOKEN, AbstractC2447w.m37232a(byteArrayExtra));
                    bundle.putString(CommonCode.MapKey.TRANSACTION_ID, this.f7802b.getStringExtra(CommonCode.MapKey.TRANSACTION_ID));
                    bundle.putString("subjectId", this.f7802b.getStringExtra("subjectId"));
                    bundle.putInt("error", this.f7802b.getIntExtra("error", ErrorEnum.SUCCESS.getInternalCode()));
                    bundle.putString("belongId", this.f7802b.getStringExtra("belongId"));
                    if (new C2430h().m37349a(this.f7801a, bundle, intent)) {
                        return;
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("receive ");
                    sb2.append(this.f7802b.getAction());
                    sb2.append(" and start service failed");
                    HMSLog.m37195e("PushReceiver", sb2.toString());
                    return;
                }
                HMSLog.m37193i("PushReceiver", "get a deviceToken, but it is null or empty");
            } catch (RejectedExecutionException e) {
                HMSLog.m37195e("PushReceiver", "execute task error");
            } catch (Exception e2) {
                HMSLog.m37195e("PushReceiver", "handle push token error");
            }
        }
    }

    /* renamed from: a */
    public static JSONObject m37218a(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optJSONObject(RemoteMessageConst.MessageBody.MSG_CONTENT);
        }
        return null;
    }

    /* renamed from: a */
    public static JSONObject m37217a(byte[] bArr) {
        try {
            return new JSONObject(AbstractC2447w.m37232a(bArr));
        } catch (JSONException e) {
            HMSLog.m37192w("PushReceiver", "JSONException:parse message body failed.");
            return null;
        }
    }

    /* renamed from: b */
    public static JSONObject m37215b(Intent intent) throws RuntimeException {
        JSONObject m37217a = m37217a(intent.getByteArrayExtra("msg_data"));
        JSONObject m37218a = m37218a(m37217a);
        String string = JsonUtil.getString(m37218a, RemoteMessageConst.DATA, null);
        if (AbstractC2441s.m37248a(m37218a, m37214b(m37218a), string)) {
            return m37217a;
        }
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            return new JSONObject(string);
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: b */
    public static JSONObject m37214b(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optJSONObject(RemoteMessageConst.MessageBody.PS_CONTENT);
        }
        return null;
    }

    /* renamed from: a */
    public final void m37220a(Context context, Intent intent) {
        try {
            if (intent.hasExtra("msg_data")) {
                C2446v.m37233a().execute(new RunnableC2456a(context, intent));
            } else {
                HMSLog.m37193i("PushReceiver", "This push message dose not sent by hwpush.");
            }
        } catch (RuntimeException e) {
            HMSLog.m37195e("PushReceiver", "handlePushMessageEvent execute task runtime exception.");
        } catch (Exception e2) {
            HMSLog.m37195e("PushReceiver", "handlePushMessageEvent execute task error");
        }
    }

    /* renamed from: b */
    public final void m37216b(Context context, Intent intent) {
        try {
            if (intent.hasExtra(RemoteMessageConst.DEVICE_TOKEN)) {
                C2446v.m37233a().execute(new RunnableC2457b(context, intent));
            } else {
                HMSLog.m37193i("PushReceiver", "This message dose not sent by hwpush.");
            }
        } catch (RuntimeException e) {
            HMSLog.m37195e("PushReceiver", "handlePushMessageEvent execute task runtime exception.");
        } catch (Exception e2) {
            HMSLog.m37195e("PushReceiver", "handlePushTokenEvent execute task error");
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null || context == null) {
            return;
        }
        StringBuilder m8728C = C22128a.m8728C("push receive broadcast message, Intent:");
        m8728C.append(intent.getAction());
        m8728C.append(" pkgName:");
        m8728C.append(context.getPackageName());
        HMSLog.m37193i("PushReceiver", m8728C.toString());
        try {
            intent.getStringExtra("TestIntent");
            String action = intent.getAction();
            if (ResourceLoaderUtil.getmContext() == null) {
                ResourceLoaderUtil.setmContext(context.getApplicationContext());
            }
            if ("com.huawei.android.push.intent.REGISTRATION".equals(action)) {
                m37216b(context, intent);
            } else if ("com.huawei.android.push.intent.RECEIVE".equals(action)) {
                m37220a(context, intent);
            } else {
                HMSLog.m37193i("PushReceiver", "message can't be recognised.");
            }
        } catch (Exception e) {
            HMSLog.m37195e("PushReceiver", "intent has some error");
        }
    }
}

package com.huawei.hms.push;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Messenger;
import android.text.TextUtils;
import com.huawei.hms.aaid.constant.ErrorEnum;
import com.huawei.hms.aaid.utils.BaseUtils;
import com.huawei.hms.adapter.internal.CommonCode;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.hms.push.utils.PushBiUtil;
import com.huawei.hms.support.api.entity.push.PushNaming;
import com.huawei.hms.support.log.HMSLog;
import com.razorpay.AnalyticsConstants;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/HmsMessageService.class */
public class HmsMessageService extends Service {
    public static final String PROXY_TYPE = "proxy_type";
    public static final String SUBJECT_ID = "subject_id";

    /* renamed from: a */
    public final Messenger f7671a = new Messenger(new HandlerC2442t(new a(this, (C2423a) null)));

    /* renamed from: a */
    public final Bundle m37381a(Intent intent) {
        Bundle bundle = new Bundle();
        bundle.putString("message_id", intent.getStringExtra("message_id"));
        bundle.putByteArray(RemoteMessageConst.MSGBODY, intent.getByteArrayExtra(RemoteMessageConst.MSGBODY));
        bundle.putString(RemoteMessageConst.DEVICE_TOKEN, intent.getStringExtra(RemoteMessageConst.DEVICE_TOKEN));
        if (intent.getIntExtra(RemoteMessageConst.INPUT_TYPE, -1) == 1) {
            bundle.putInt(RemoteMessageConst.INPUT_TYPE, 1);
        }
        return bundle;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0046  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m37380a(android.content.Intent r6, android.os.Bundle r7, int r8) {
        /*
            r5 = this;
            r0 = r6
            if (r0 == 0) goto L30
            r0 = r6
            android.os.Bundle r0 = r0.getExtras()     // Catch: java.lang.Exception -> L1d java.lang.RuntimeException -> L28
            if (r0 == 0) goto L30
            r0 = r6
            android.os.Bundle r0 = r0.getExtras()     // Catch: java.lang.Exception -> L1d java.lang.RuntimeException -> L28
            r6 = r0
            r0 = r6
            java.lang.String r1 = "exception_key"
            java.io.Serializable r0 = r0.getSerializable(r1)     // Catch: java.lang.Exception -> L1d java.lang.RuntimeException -> L28
            com.huawei.hms.common.ResolvableApiException r0 = (com.huawei.hms.common.ResolvableApiException) r0     // Catch: java.lang.Exception -> L1d java.lang.RuntimeException -> L28
            r6 = r0
            goto L32
        L1d:
            r6 = move-exception
            java.lang.String r0 = "HmsMessageService"
            java.lang.String r1 = "get resApiException error Exception"
            com.huawei.hms.support.log.HMSLog.m37195e(r0, r1)
            goto L30
        L28:
            r6 = move-exception
            java.lang.String r0 = "HmsMessageService"
            java.lang.String r1 = "get resApiException error RuntimeException"
            com.huawei.hms.support.log.HMSLog.m37195e(r0, r1)
        L30:
            r0 = 0
            r6 = r0
        L32:
            r0 = r6
            if (r0 == 0) goto L46
            java.lang.String r0 = "HmsMessageService"
            java.lang.String r1 = "resApiException is not null"
            com.huawei.hms.support.log.HMSLog.m37193i(r0, r1)
            r0 = r5
            r1 = r6
            r2 = r7
            r0.onTokenError(r1, r2)
            goto L53
        L46:
            r0 = r5
            com.huawei.hms.push.BaseException r1 = new com.huawei.hms.push.BaseException
            r2 = r1
            r3 = r8
            r2.<init>(r3)
            r2 = r7
            r0.onTokenError(r1, r2)
        L53:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.push.HmsMessageService.m37380a(android.content.Intent, android.os.Bundle, int):void");
    }

    /* renamed from: a */
    public final void m37379a(Intent intent, Bundle bundle, String str) {
        synchronized (this) {
            String stringExtra = intent.getStringExtra(RemoteMessageConst.DEVICE_TOKEN);
            m37376a(stringExtra, str);
            Context applicationContext = getApplicationContext();
            boolean isEmpty = TextUtils.isEmpty(BaseUtils.getCacheData(applicationContext, applicationContext.getPackageName(), false));
            if (bundle.isEmpty() && (!isEmpty)) {
                HMSLog.m37193i("HmsMessageService", "onNewToken to host app.");
                onNewToken(stringExtra);
                BaseUtils.deleteCacheData(applicationContext, applicationContext.getPackageName());
            }
            if (TextUtils.isEmpty(str)) {
                String[] subjectIds = BaseUtils.getSubjectIds(applicationContext);
                if (subjectIds != null && subjectIds.length != 0) {
                    for (int i = 0; i < subjectIds.length; i++) {
                        Bundle bundle2 = new Bundle();
                        bundle2.putString(SUBJECT_ID, subjectIds[i]);
                        HMSLog.m37193i("HmsMessageService", "onNewToken to sub app, subjectId:" + subjectIds[i]);
                        onNewToken(stringExtra, bundle2);
                        m37376a(stringExtra, subjectIds[i]);
                    }
                    BaseUtils.clearSubjectIds(applicationContext);
                }
                HMSLog.m37193i("HmsMessageService", "onNewToken to host app with bundle.");
                bundle.putString("belongId", intent.getStringExtra("belongId"));
                onNewToken(stringExtra, bundle);
                return;
            }
            HMSLog.m37193i("HmsMessageService", "onNewToken to sub app, subjectId:" + str);
            onNewToken(stringExtra, bundle);
        }
    }

    /* renamed from: a */
    public final void m37378a(Intent intent, Bundle bundle, String str, int i) {
        synchronized (this) {
            Context applicationContext = getApplicationContext();
            boolean isEmpty = TextUtils.isEmpty(BaseUtils.getCacheData(applicationContext, applicationContext.getPackageName(), false));
            if (bundle.isEmpty() && (!isEmpty)) {
                HMSLog.m37193i("HmsMessageService", "onTokenError to host app.");
                onTokenError(new BaseException(i));
                BaseUtils.deleteCacheData(applicationContext, applicationContext.getPackageName());
            }
            if (TextUtils.isEmpty(str)) {
                String[] subjectIds = BaseUtils.getSubjectIds(applicationContext);
                if (subjectIds != null && subjectIds.length != 0) {
                    for (int i2 = 0; i2 < subjectIds.length; i2++) {
                        Bundle bundle2 = new Bundle();
                        bundle2.putString(SUBJECT_ID, subjectIds[i2]);
                        HMSLog.m37193i("HmsMessageService", "onTokenError to sub app, subjectId:" + subjectIds[i2]);
                        m37380a(intent, bundle2, i);
                    }
                    BaseUtils.clearSubjectIds(applicationContext);
                }
                HMSLog.m37193i("HmsMessageService", "onTokenError to host app with bundle.");
                m37380a(intent, bundle, i);
                return;
            }
            HMSLog.m37193i("HmsMessageService", "onTokenError to sub app, subjectId:" + str);
            m37380a(intent, bundle, i);
        }
    }

    /* renamed from: a */
    public final void m37377a(Intent intent, String str) {
        ErrorEnum errorEnum = ErrorEnum.SUCCESS;
        int intExtra = intent.getIntExtra("error", errorEnum.getInternalCode());
        m37375a(PushNaming.GETTOKEN_ASYNC_RSP, str, intExtra);
        String stringExtra = intent.getStringExtra("subjectId");
        String stringExtra2 = intent.getStringExtra("message_proxy_type");
        HMSLog.m37193i("HmsMessageService", "doOnNewToken:transactionId = " + str + " , internalCode = " + intExtra + ",subjectId:" + stringExtra + ",proxyType:" + stringExtra2);
        Bundle bundle = new Bundle();
        if (!TextUtils.isEmpty(stringExtra)) {
            bundle.putString(SUBJECT_ID, stringExtra);
        }
        if (!TextUtils.isEmpty(stringExtra2)) {
            bundle.putString(PROXY_TYPE, stringExtra2);
        }
        if (intExtra == errorEnum.getInternalCode()) {
            HMSLog.m37193i("HmsMessageService", "Apply token OnNewToken, subId: " + stringExtra);
            m37379a(intent, bundle, stringExtra);
            return;
        }
        HMSLog.m37193i("HmsMessageService", "Apply token failed, subId: " + stringExtra);
        m37378a(intent, bundle, stringExtra, intExtra);
    }

    /* renamed from: a */
    public final void m37376a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Context applicationContext = getApplicationContext();
        if (str.equals(BaseUtils.getLocalToken(applicationContext, str2))) {
            BaseUtils.reportAaidToken(applicationContext, str);
            return;
        }
        HMSLog.m37193i("HmsMessageService", "receive a token, refresh the local token");
        BaseUtils.saveToken(applicationContext, str2, str);
    }

    /* renamed from: a */
    public final void m37375a(String str, String str2, int i) {
        String str3 = str2;
        if (TextUtils.isEmpty(str2)) {
            str3 = AnalyticsConstants.NULL;
        }
        PushBiUtil.reportExit(getApplicationContext(), str, str3, i);
    }

    /* renamed from: b */
    public final void m37374b(Intent intent) {
        HMSLog.m37193i("HmsMessageService", "parse batch response.");
        String stringExtra = intent.getStringExtra("batchMsgbody");
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(stringExtra);
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                String optString = jSONObject.optString("transactionId");
                String optString2 = jSONObject.optString(RemoteMessageConst.MSGID);
                int optInt = jSONObject.optInt("ret", ErrorEnum.ERROR_UNKNOWN.getInternalCode());
                if (ErrorEnum.SUCCESS.getInternalCode() == optInt) {
                    m37373b(optString, optString2);
                } else {
                    m37372b(optString, optString2, optInt);
                }
            }
        } catch (JSONException e) {
            HMSLog.m37192w("HmsMessageService", "parse batch response failed.");
        }
    }

    /* renamed from: b */
    public final void m37373b(String str, String str2) {
        HMSLog.m37193i("HmsMessageService", "onMessageSent, message id:" + str2 + ", transactionId: " + str);
        m37375a(PushNaming.UPSEND_MSG_ASYNC_RSP, str, ErrorEnum.SUCCESS.getInternalCode());
        onMessageSent(str2);
    }

    /* renamed from: b */
    public final void m37372b(String str, String str2, int i) {
        HMSLog.m37193i("HmsMessageService", "onSendError, message id:" + str2 + " error:" + i + ", transactionId: " + str);
        m37375a(PushNaming.UPSEND_MSG_ASYNC_RSP, str, i);
        onSendError(str2, new SendException(i));
    }

    public void doMsgReceived(Intent intent) {
        onMessageReceived(new RemoteMessage(m37381a(intent)));
    }

    public void handleIntentMessage(Intent intent) {
        if (intent == null) {
            HMSLog.m37195e("HmsMessageService", "receive message is null");
            return;
        }
        try {
            String stringExtra = intent.getStringExtra("message_id");
            String stringExtra2 = intent.getStringExtra("message_type");
            String stringExtra3 = intent.getStringExtra(CommonCode.MapKey.TRANSACTION_ID);
            if ("new_token".equals(stringExtra2)) {
                HMSLog.m37193i("HmsMessageService", "onNewToken");
                m37377a(intent, stringExtra3);
            } else if ("received_message".equals(stringExtra2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("onMessageReceived, message id:");
                sb.append(stringExtra);
                HMSLog.m37193i("HmsMessageService", sb.toString());
                m37375a(PushNaming.RECEIVE_MSG_RSP, stringExtra, ErrorEnum.SUCCESS.getInternalCode());
                doMsgReceived(intent);
            } else if ("sent_message".equals(stringExtra2)) {
                m37373b(stringExtra3, stringExtra);
            } else if ("send_error".equals(stringExtra2)) {
                m37372b(stringExtra3, stringExtra, intent.getIntExtra("error", ErrorEnum.ERROR_UNKNOWN.getInternalCode()));
            } else if ("delivery".equals(stringExtra2)) {
                int intExtra = intent.getIntExtra("error", ErrorEnum.ERROR_APP_SERVER_NOT_ONLINE.getInternalCode());
                StringBuilder sb2 = new StringBuilder();
                sb2.append("onMessageDelivery, message id:");
                sb2.append(stringExtra);
                sb2.append(", status:");
                sb2.append(intExtra);
                sb2.append(", transactionId: ");
                sb2.append(stringExtra3);
                HMSLog.m37193i("HmsMessageService", sb2.toString());
                m37375a(PushNaming.UPSEND_RECEIPT, stringExtra3, intExtra);
                onMessageDelivered(stringExtra, new SendException(intExtra));
            } else if ("server_deleted_message".equals(stringExtra2)) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("delete message, message id:");
                sb3.append(stringExtra);
                HMSLog.m37193i("HmsMessageService", sb3.toString());
                onDeletedMessages();
            } else if ("batchSent".equals(stringExtra2)) {
                m37374b(intent);
            } else {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("Receive unknown message: ");
                sb4.append(stringExtra2);
                HMSLog.m37195e("HmsMessageService", sb4.toString());
            }
        } catch (RuntimeException e) {
            StringBuilder m8728C = C22128a.m8728C("handle intent RuntimeException: ");
            m8728C.append(e.getMessage());
            HMSLog.m37195e("HmsMessageService", m8728C.toString());
        } catch (Exception e2) {
            C22128a.m8735A0(e2, C22128a.m8728C("handle intent exception: "), "HmsMessageService");
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        HMSLog.m37193i("HmsMessageService", "start to bind");
        return this.f7671a.getBinder();
    }

    public void onDeletedMessages() {
    }

    @Override // android.app.Service
    public void onDestroy() {
        HMSLog.m37193i("HmsMessageService", "start to destroy");
        super.onDestroy();
    }

    public void onMessageDelivered(String str, Exception exc) {
    }

    public void onMessageReceived(RemoteMessage remoteMessage) {
    }

    public void onMessageSent(String str) {
    }

    public void onNewToken(String str) {
    }

    public void onNewToken(String str, Bundle bundle) {
    }

    public void onSendError(String str, Exception exc) {
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        HMSLog.m37193i("HmsMessageService", "start to command , startId = " + i2);
        handleIntentMessage(intent);
        return 2;
    }

    public void onTokenError(Exception exc) {
    }

    public void onTokenError(Exception exc, Bundle bundle) {
    }
}

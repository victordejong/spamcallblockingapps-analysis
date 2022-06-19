package com.huawei.hms.push;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.huawei.hmf.tasks.Task;
import com.huawei.hmf.tasks.TaskCompletionSource;
import com.huawei.hmf.tasks.Tasks;
import com.huawei.hms.aaid.constant.ErrorEnum;
import com.huawei.hms.aaid.encrypt.PushEncrypter;
import com.huawei.hms.aaid.init.AutoInitHelper;
import com.huawei.hms.aaid.plugin.ProxyCenter;
import com.huawei.hms.aaid.task.PushClientBuilder;
import com.huawei.hms.aaid.utils.BaseUtils;
import com.huawei.hms.aaid.utils.PushPreferences;
import com.huawei.hms.android.HwBuildEx;
import com.huawei.hms.api.Api;
import com.huawei.hms.api.HuaweiApiAvailability;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.HuaweiApi;
import com.huawei.hms.common.internal.AbstractClientBuilder;
import com.huawei.hms.common.internal.Preconditions;
import com.huawei.hms.push.task.BaseVoidTask;
import com.huawei.hms.push.task.IntentCallable;
import com.huawei.hms.push.task.SendUpStreamTask;
import com.huawei.hms.push.task.SubscribeTask;
import com.huawei.hms.push.utils.PushBiUtil;
import com.huawei.hms.support.api.entity.push.EnableNotifyReq;
import com.huawei.hms.support.api.entity.push.PushNaming;
import com.huawei.hms.support.api.entity.push.SubscribeReq;
import com.huawei.hms.support.api.entity.push.UpSendMsgReq;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.JsonUtil;
import com.huawei.hms.utils.NetWorkUtil;
import com.mopub.common.Constants;
import com.tenor.android.core.constant.StringConstant;
import java.util.regex.Pattern;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/HmsMessaging.class */
public class HmsMessaging {
    public static final String DEFAULT_TOKEN_SCOPE = "HCM";

    /* renamed from: a */
    public static final Pattern f7672a = Pattern.compile("[\\u4e00-\\u9fa5\\w-_.~%]{1,900}");

    /* renamed from: b */
    public Context f7673b;

    /* renamed from: c */
    public HuaweiApi<Api.ApiOptions.NoOptions> f7674c;

    public HmsMessaging(Context context) {
        Preconditions.checkNotNull(context);
        this.f7673b = context;
        Api api = new Api(HuaweiApiAvailability.HMS_API_NAME_PUSH);
        if (context instanceof Activity) {
            this.f7674c = new HuaweiApi<>((Activity) context, (Api<Api.ApiOptions>) api, (Api.ApiOptions) null, (AbstractClientBuilder) new PushClientBuilder());
        } else {
            this.f7674c = new HuaweiApi<>(context, (Api<Api.ApiOptions>) api, (Api.ApiOptions) null, (AbstractClientBuilder) new PushClientBuilder());
        }
        this.f7674c.setKitSdkVersion(60300301);
    }

    public static HmsMessaging getInstance(Context context) {
        HmsMessaging hmsMessaging;
        synchronized (HmsMessaging.class) {
            try {
                hmsMessaging = new HmsMessaging(context);
            } catch (Throwable th) {
                throw th;
            }
        }
        return hmsMessaging;
    }

    /* renamed from: a */
    public final Task<Void> m37369a(String str, String str2) {
        String reportEntry = PushBiUtil.reportEntry(this.f7673b, PushNaming.SUBSCRIBE);
        if (str == null || !f7672a.matcher(str).matches()) {
            PushBiUtil.reportExit(this.f7673b, PushNaming.SUBSCRIBE, reportEntry, ErrorEnum.ERROR_ARGUMENTS_INVALID);
            HMSLog.m37195e("HmsMessaging", "Invalid topic: topic should match the format:[\\u4e00-\\u9fa5\\w-_.~%]{1,900}");
            throw new IllegalArgumentException("Invalid topic: topic should match the format:[\\u4e00-\\u9fa5\\w-_.~%]{1,900}");
        } else if (ProxyCenter.getProxy() != null) {
            HMSLog.m37193i("HmsMessaging", "use proxy subscribe.");
            return TextUtils.equals(str2, "Sub") ? ProxyCenter.getProxy().subscribe(this.f7673b, str, reportEntry) : ProxyCenter.getProxy().unsubscribe(this.f7673b, str, reportEntry);
        } else {
            try {
                ErrorEnum m37353a = C2426d.m37353a(this.f7673b);
                if (m37353a != ErrorEnum.SUCCESS) {
                    throw m37353a.toApiException();
                }
                if (NetWorkUtil.getNetworkType(this.f7673b) == 0) {
                    HMSLog.m37195e("HmsMessaging", "no network");
                    throw ErrorEnum.ERROR_NO_NETWORK.toApiException();
                }
                SubscribeReq subscribeReq = new SubscribeReq(this.f7673b, str2, str);
                subscribeReq.setToken(BaseUtils.getLocalToken(this.f7673b, null));
                return AbstractC2441s.m37247b() ? this.f7674c.doWrite(new BaseVoidTask(PushNaming.SUBSCRIBE, JsonUtil.createJsonString(subscribeReq), reportEntry)) : this.f7674c.doWrite(new SubscribeTask(PushNaming.SUBSCRIBE, JsonUtil.createJsonString(subscribeReq), reportEntry));
            } catch (ApiException e) {
                TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
                taskCompletionSource.setException(e);
                PushBiUtil.reportExit(this.f7673b, PushNaming.SUBSCRIBE, reportEntry, e.getStatusCode());
                return taskCompletionSource.getTask();
            } catch (Exception e2) {
                TaskCompletionSource taskCompletionSource2 = new TaskCompletionSource();
                ErrorEnum errorEnum = ErrorEnum.ERROR_INTERNAL_ERROR;
                taskCompletionSource2.setException(errorEnum.toApiException());
                PushBiUtil.reportExit(this.f7673b, PushNaming.SUBSCRIBE, reportEntry, errorEnum);
                return taskCompletionSource2.getTask();
            }
        }
    }

    /* renamed from: a */
    public final Task<Void> m37368a(boolean z) {
        String reportEntry = PushBiUtil.reportEntry(this.f7673b, PushNaming.SET_NOTIFY_FLAG);
        if (!AbstractC2441s.m37243d(this.f7673b) || AbstractC2441s.m37247b()) {
            HMSLog.m37193i("HmsMessaging", "turn on/off with AIDL");
            EnableNotifyReq enableNotifyReq = new EnableNotifyReq();
            enableNotifyReq.setPackageName(this.f7673b.getPackageName());
            enableNotifyReq.setEnable(z);
            return this.f7674c.doWrite(new BaseVoidTask(PushNaming.SET_NOTIFY_FLAG, JsonUtil.createJsonString(enableNotifyReq), reportEntry));
        } else if (HwBuildEx.VERSION.EMUI_SDK_INT < 12) {
            HMSLog.m37195e("HmsMessaging", "operation not available on Huawei device with EMUI lower than 5.1");
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            ErrorEnum errorEnum = ErrorEnum.ERROR_OPERATION_NOT_SUPPORTED;
            taskCompletionSource.setException(errorEnum.toApiException());
            PushBiUtil.reportExit(this.f7673b, PushNaming.SET_NOTIFY_FLAG, reportEntry, errorEnum);
            return taskCompletionSource.getTask();
        } else if (AbstractC2441s.m37246b(this.f7673b) < 90101310) {
            HMSLog.m37193i("HmsMessaging", "turn on/off with broadcast v1");
            Context context = this.f7673b;
            Intent putExtra = new Intent("com.huawei.intent.action.SELF_SHOW_FLAG").putExtra("enalbeFlag", PushEncrypter.encrypterOld(context, this.f7673b.getPackageName() + StringConstant.HASH + z));
            putExtra.setPackage(Constants.ANDROID_PLATFORM);
            return Tasks.callInBackground(new IntentCallable(this.f7673b, putExtra, reportEntry));
        } else {
            HMSLog.m37193i("HmsMessaging", "turn on/off with broadcast v2");
            new PushPreferences(this.f7673b, "push_notify_flag").saveBoolean("notify_msg_enable", !z);
            Uri parse = Uri.parse("content://" + this.f7673b.getPackageName() + ".huawei.push.provider/push_notify_flag.xml");
            Intent intent = new Intent("com.huawei.android.push.intent.SDK_COMMAND");
            intent.putExtra("type", "enalbeFlag");
            intent.putExtra("pkgName", this.f7673b.getPackageName());
            intent.putExtra("url", parse);
            intent.setPackage(Constants.ANDROID_PLATFORM);
            return Tasks.callInBackground(new IntentCallable(this.f7673b, intent, reportEntry));
        }
    }

    /* renamed from: a */
    public final void m37371a(RemoteMessage remoteMessage) {
        String reportEntry = PushBiUtil.reportEntry(this.f7673b, PushNaming.UPSEND_MSG);
        ErrorEnum m37353a = C2426d.m37353a(this.f7673b);
        if (m37353a != ErrorEnum.SUCCESS) {
            StringBuilder m8728C = C22128a.m8728C("Message sent failed:");
            m8728C.append(m37353a.getExternalCode());
            m8728C.append(':');
            m8728C.append(m37353a.getMessage());
            HMSLog.m37195e("HmsMessaging", m8728C.toString());
            PushBiUtil.reportExit(this.f7673b, PushNaming.UPSEND_MSG, reportEntry, m37353a);
            throw new UnsupportedOperationException(m37353a.getMessage());
        } else if (TextUtils.isEmpty(remoteMessage.getTo())) {
            HMSLog.m37195e("HmsMessaging", "Mandatory parameter 'to' missing");
            PushBiUtil.reportExit(this.f7673b, PushNaming.UPSEND_MSG, reportEntry, ErrorEnum.ERROR_ARGUMENTS_INVALID);
            throw new IllegalArgumentException("Mandatory parameter 'to' missing");
        } else if (TextUtils.isEmpty(remoteMessage.getMessageId())) {
            HMSLog.m37195e("HmsMessaging", "Mandatory parameter 'message_id' missing");
            PushBiUtil.reportExit(this.f7673b, PushNaming.UPSEND_MSG, reportEntry, ErrorEnum.ERROR_ARGUMENTS_INVALID);
            throw new IllegalArgumentException("Mandatory parameter 'message_id' missing");
        } else if (TextUtils.isEmpty(remoteMessage.getData())) {
            HMSLog.m37195e("HmsMessaging", "Mandatory parameter 'data' missing");
            PushBiUtil.reportExit(this.f7673b, PushNaming.UPSEND_MSG, reportEntry, ErrorEnum.ERROR_ARGUMENTS_INVALID);
            throw new IllegalArgumentException("Mandatory parameter 'data' missing");
        } else {
            UpSendMsgReq upSendMsgReq = new UpSendMsgReq();
            upSendMsgReq.setPackageName(this.f7673b.getPackageName());
            upSendMsgReq.setMessageId(remoteMessage.getMessageId());
            upSendMsgReq.setTo(remoteMessage.getTo());
            upSendMsgReq.setData(remoteMessage.getData());
            upSendMsgReq.setMessageType(remoteMessage.getMessageType());
            upSendMsgReq.setTtl(remoteMessage.getTtl());
            upSendMsgReq.setCollapseKey(remoteMessage.getCollapseKey());
            upSendMsgReq.setSendMode(remoteMessage.getSendMode());
            upSendMsgReq.setReceiptMode(remoteMessage.getReceiptMode());
            if (AbstractC2441s.m37247b()) {
                this.f7674c.doWrite(new BaseVoidTask(PushNaming.UPSEND_MSG, JsonUtil.createJsonString(upSendMsgReq), reportEntry));
            } else {
                m37370a(upSendMsgReq, reportEntry);
            }
        }
    }

    /* renamed from: a */
    public final void m37370a(UpSendMsgReq upSendMsgReq, String str) {
        upSendMsgReq.setToken(BaseUtils.getLocalToken(this.f7673b, null));
        try {
            this.f7674c.doWrite(new SendUpStreamTask(PushNaming.UPSEND_MSG, JsonUtil.createJsonString(upSendMsgReq), str, upSendMsgReq.getPackageName(), upSendMsgReq.getMessageId()));
        } catch (Exception e) {
            if (!(e.getCause() instanceof ApiException)) {
                PushBiUtil.reportExit(this.f7673b, PushNaming.UPSEND_MSG, str, ErrorEnum.ERROR_INTERNAL_ERROR);
                return;
            }
            PushBiUtil.reportExit(this.f7673b, PushNaming.UPSEND_MSG, str, ((ApiException) e.getCause()).getStatusCode());
        }
    }

    public boolean isAutoInitEnabled() {
        return AutoInitHelper.isAutoInitEnabled(this.f7673b);
    }

    public void send(RemoteMessage remoteMessage) {
        if (ProxyCenter.getProxy() != null) {
            HMSLog.m37195e("HmsMessaging", "Operation(send) unsupported");
            throw new UnsupportedOperationException("Operation(send) unsupported");
        }
        HMSLog.m37193i("HmsMessaging", "send upstream message");
        m37371a(remoteMessage);
    }

    public void setAutoInitEnabled(boolean z) {
        AutoInitHelper.setAutoInitEnabled(this.f7673b, z);
    }

    public Task<Void> subscribe(String str) {
        HMSLog.m37193i("HmsMessaging", "invoke subscribe");
        return m37369a(str, "Sub");
    }

    public Task<Void> turnOffPush() {
        if (ProxyCenter.getProxy() != null) {
            HMSLog.m37193i("HmsMessaging", "turn off for proxy");
            return ProxyCenter.getProxy().turnOff(this.f7673b, null);
        }
        HMSLog.m37193i("HmsMessaging", "invoke turnOffPush");
        return m37368a(false);
    }

    public Task<Void> turnOnPush() {
        if (ProxyCenter.getProxy() != null) {
            HMSLog.m37193i("HmsMessaging", "turn on for proxy");
            return ProxyCenter.getProxy().turnOn(this.f7673b, null);
        }
        HMSLog.m37193i("HmsMessaging", "invoke turnOnPush");
        return m37368a(true);
    }

    public Task<Void> unsubscribe(String str) {
        HMSLog.m37193i("HmsMessaging", "invoke unsubscribe");
        return m37369a(str, "UnSub");
    }
}

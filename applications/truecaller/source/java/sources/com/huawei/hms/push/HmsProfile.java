package com.huawei.hms.push;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.huawei.agconnect.config.AGConnectServicesConfig;
import com.huawei.hmf.tasks.Task;
import com.huawei.hmf.tasks.TaskCompletionSource;
import com.huawei.hms.aaid.constant.ErrorEnum;
import com.huawei.hms.aaid.task.PushClientBuilder;
import com.huawei.hms.api.Api;
import com.huawei.hms.api.HuaweiApiAvailability;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.HuaweiApi;
import com.huawei.hms.common.internal.AbstractClientBuilder;
import com.huawei.hms.common.internal.Preconditions;
import com.huawei.hms.push.task.ProfileTask;
import com.huawei.hms.push.utils.PushBiUtil;
import com.huawei.hms.support.api.entity.push.ProfileReq;
import com.huawei.hms.support.api.entity.push.PushNaming;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.JsonUtil;
import com.huawei.secure.android.common.encrypt.hash.SHA;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/HmsProfile.class */
public class HmsProfile {
    public static final int CUSTOM_PROFILE = 2;
    public static final int HUAWEI_PROFILE = 1;

    /* renamed from: a */
    public static final String f7675a = "HmsProfile";

    /* renamed from: b */
    public Context f7676b;

    /* renamed from: c */
    public HuaweiApi<Api.ApiOptions.NoOptions> f7677c;

    public HmsProfile(Context context) {
        this.f7676b = null;
        Preconditions.checkNotNull(context);
        this.f7676b = context;
        Api api = new Api(HuaweiApiAvailability.HMS_API_NAME_PUSH);
        if (context instanceof Activity) {
            this.f7677c = new HuaweiApi<>((Activity) context, (Api<Api.ApiOptions>) api, (Api.ApiOptions) null, (AbstractClientBuilder) new PushClientBuilder());
        } else {
            this.f7677c = new HuaweiApi<>(context, (Api<Api.ApiOptions>) api, (Api.ApiOptions) null, (AbstractClientBuilder) new PushClientBuilder());
        }
        this.f7677c.setKitSdkVersion(60300301);
    }

    /* renamed from: a */
    public static String m37366a(Context context) {
        return AGConnectServicesConfig.fromContext(context).getString("client/project_id");
    }

    public static HmsProfile getInstance(Context context) {
        return new HmsProfile(context);
    }

    /* renamed from: a */
    public final Task<Void> m37367a(int i, String str, int i2, String str2) {
        if (!isSupportProfile()) {
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            taskCompletionSource.setException(ErrorEnum.ERROR_OPERATION_NOT_SUPPORTED.toApiException());
            return taskCompletionSource.getTask();
        }
        String str3 = str;
        if (!TextUtils.isEmpty(str)) {
            String m37366a = m37366a(this.f7676b);
            if (TextUtils.isEmpty(m37366a)) {
                HMSLog.m37193i(f7675a, "agc connect services config missing project id.");
                TaskCompletionSource taskCompletionSource2 = new TaskCompletionSource();
                taskCompletionSource2.setException(ErrorEnum.ERROR_MISSING_PROJECT_ID.toApiException());
                return taskCompletionSource2.getTask();
            }
            str3 = str;
            if (str.equals(m37366a)) {
                str3 = "";
            }
        }
        ProfileReq profileReq = new ProfileReq();
        if (i == 0) {
            profileReq.setOperation(0);
            profileReq.setType(i2);
        } else {
            profileReq.setOperation(1);
        }
        String reportEntry = PushBiUtil.reportEntry(this.f7676b, PushNaming.PUSH_PROFILE);
        try {
            profileReq.setSubjectId(str3);
            profileReq.setProfileId(SHA.sha256Encrypt(str2));
            profileReq.setPkgName(this.f7676b.getPackageName());
            return this.f7677c.doWrite(new ProfileTask(PushNaming.PUSH_PROFILE, JsonUtil.createJsonString(profileReq), reportEntry));
        } catch (Exception e) {
            if (e.getCause() instanceof ApiException) {
                TaskCompletionSource taskCompletionSource3 = new TaskCompletionSource();
                ApiException apiException = (ApiException) e.getCause();
                taskCompletionSource3.setException(apiException);
                PushBiUtil.reportExit(this.f7676b, PushNaming.PUSH_PROFILE, reportEntry, apiException.getStatusCode());
                return taskCompletionSource3.getTask();
            }
            TaskCompletionSource taskCompletionSource4 = new TaskCompletionSource();
            Context context = this.f7676b;
            ErrorEnum errorEnum = ErrorEnum.ERROR_INTERNAL_ERROR;
            PushBiUtil.reportExit(context, PushNaming.PUSH_PROFILE, reportEntry, errorEnum);
            taskCompletionSource4.setException(errorEnum.toApiException());
            return taskCompletionSource4.getTask();
        }
    }

    public Task<Void> addProfile(int i, String str) {
        return addProfile("", i, str);
    }

    public Task<Void> addProfile(String str, int i, String str2) {
        if (i != 1 && i != 2) {
            HMSLog.m37193i(f7675a, "add profile type undefined.");
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            taskCompletionSource.setException(ErrorEnum.ERROR_PUSH_ARGUMENTS_INVALID.toApiException());
            return taskCompletionSource.getTask();
        } else if (!TextUtils.isEmpty(str2)) {
            return m37367a(0, str, i, str2);
        } else {
            HMSLog.m37193i(f7675a, "add profile params is empty.");
            TaskCompletionSource taskCompletionSource2 = new TaskCompletionSource();
            taskCompletionSource2.setException(ErrorEnum.ERROR_PUSH_ARGUMENTS_INVALID.toApiException());
            return taskCompletionSource2.getTask();
        }
    }

    /* renamed from: b */
    public final boolean m37365b(Context context) {
        return AbstractC2441s.m37246b(context) >= 110001400;
    }

    public Task<Void> deleteProfile(String str) {
        return deleteProfile("", str);
    }

    public Task<Void> deleteProfile(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            HMSLog.m37195e(f7675a, "del profile params is empty.");
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            taskCompletionSource.setException(ErrorEnum.ERROR_PUSH_ARGUMENTS_INVALID.toApiException());
            return taskCompletionSource.getTask();
        }
        return m37367a(1, str, -1, str2);
    }

    public boolean isSupportProfile() {
        if (AbstractC2441s.m37243d(this.f7676b)) {
            if (AbstractC2441s.m37245c()) {
                HMSLog.m37193i(f7675a, "current EMUI version below 9.1, not support profile operation.");
                return false;
            } else if (m37365b(this.f7676b)) {
                return true;
            } else {
                HMSLog.m37193i(f7675a, "current HwPushService.apk version below 11.0.1.400,please upgrade your HwPushService.apk version.");
                return false;
            }
        }
        return true;
    }
}

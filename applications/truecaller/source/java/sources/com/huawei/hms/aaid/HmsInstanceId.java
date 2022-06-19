package com.huawei.hms.aaid;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import com.huawei.hmf.tasks.Task;
import com.huawei.hmf.tasks.TaskCompletionSource;
import com.huawei.hmf.tasks.Tasks;
import com.huawei.hms.aaid.constant.ErrorEnum;
import com.huawei.hms.aaid.entity.AAIDResult;
import com.huawei.hms.aaid.entity.DeleteTokenReq;
import com.huawei.hms.aaid.entity.TokenReq;
import com.huawei.hms.aaid.entity.TokenResult;
import com.huawei.hms.aaid.plugin.ProxyCenter;
import com.huawei.hms.aaid.task.PushClientBuilder;
import com.huawei.hms.aaid.utils.BaseUtils;
import com.huawei.hms.aaid.utils.PushPreferences;
import com.huawei.hms.api.Api;
import com.huawei.hms.api.HuaweiApiAvailability;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.HuaweiApi;
import com.huawei.hms.common.ResolvableApiException;
import com.huawei.hms.common.internal.AbstractClientBuilder;
import com.huawei.hms.common.internal.Preconditions;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.opendevice.AbstractC2418p;
import com.huawei.hms.opendevice.C2417o;
import com.huawei.hms.opendevice.C2419q;
import com.huawei.hms.opendevice.CallableC2412j;
import com.huawei.hms.opendevice.i;
import com.huawei.hms.opendevice.k;
import com.huawei.hms.opendevice.l;
import com.huawei.hms.support.log.HMSLog;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/aaid/HmsInstanceId.class */
public class HmsInstanceId {
    public static final String TAG = "HmsInstanceId";

    /* renamed from: a */
    public Context f7239a;

    /* renamed from: b */
    public PushPreferences f7240b;

    /* renamed from: c */
    public HuaweiApi<Api.ApiOptions.NoOptions> f7241c;

    public HmsInstanceId(Context context) {
        this.f7239a = context.getApplicationContext();
        this.f7240b = new PushPreferences(context, "aaid");
        Api api = new Api(HuaweiApiAvailability.HMS_API_NAME_PUSH);
        if (context instanceof Activity) {
            this.f7241c = new HuaweiApi<>((Activity) context, (Api<Api.ApiOptions>) api, (Api.ApiOptions) null, (AbstractClientBuilder) new PushClientBuilder());
        } else {
            this.f7241c = new HuaweiApi<>(context, (Api<Api.ApiOptions>) api, (Api.ApiOptions) null, (AbstractClientBuilder) new PushClientBuilder());
        }
        this.f7241c.setKitSdkVersion(60300301);
    }

    public static HmsInstanceId getInstance(Context context) {
        Preconditions.checkNotNull(context);
        AbstractC2405c.m37439c(context);
        return new HmsInstanceId(context);
    }

    /* renamed from: a */
    public final String m38191a(TokenReq tokenReq, int i) throws ApiException {
        if (ProxyCenter.getProxy() != null) {
            HMSLog.m37193i(TAG, "use proxy get token, please check HmsMessageService.onNewToken receive result.");
            ProxyCenter.getProxy().getToken(this.f7239a, tokenReq.getSubjectId(), null);
            return null;
        }
        m38190a(tokenReq.getSubjectId());
        String m37392a = C2419q.m37392a(this.f7239a, "push.gettoken");
        try {
            String str = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("getToken req :");
            sb.append(tokenReq.toString());
            HMSLog.m37198d(str, sb.toString());
            l lVar = new l("push.gettoken", tokenReq, this.f7239a, m37392a);
            lVar.setApiLevel(i);
            return ((TokenResult) Tasks.await(this.f7241c.doWrite(lVar))).getToken();
        } catch (Exception e) {
            if (e.getCause() instanceof ApiException) {
                ApiException apiException = (ApiException) e.getCause();
                C2419q.m37390a(this.f7239a, "push.gettoken", m37392a, apiException.getStatusCode());
                throw apiException;
            } else if (e.getCause() instanceof ResolvableApiException) {
                ResolvableApiException cause = e.getCause();
                C2419q.m37390a(this.f7239a, "push.gettoken", m37392a, cause.getStatusCode());
                throw cause;
            } else {
                Context context = this.f7239a;
                ErrorEnum errorEnum = ErrorEnum.ERROR_INTERNAL_ERROR;
                C2419q.m37389a(context, "push.gettoken", m37392a, errorEnum);
                throw errorEnum.toApiException();
            }
        }
    }

    /* renamed from: a */
    public final void m38193a() throws ApiException {
        if (!BaseUtils.getProxyInit(this.f7239a) || ProxyCenter.getProxy() != null || BaseUtils.isMainProc(this.f7239a)) {
            return;
        }
        HMSLog.m37195e(TAG, "Operations in child processes are not supported.");
        throw ErrorEnum.ERROR_OPER_IN_CHILD_PROCESS.toApiException();
    }

    /* renamed from: a */
    public final void m38192a(DeleteTokenReq deleteTokenReq, int i) throws ApiException {
        String subjectId = deleteTokenReq.getSubjectId();
        if (ProxyCenter.getProxy() != null) {
            HMSLog.m37193i(TAG, "use proxy delete token");
            ProxyCenter.getProxy().deleteToken(this.f7239a, subjectId, null);
            return;
        }
        String m37392a = C2419q.m37392a(this.f7239a, "push.deletetoken");
        try {
            String b = i.a(this.f7239a).b(subjectId);
            if (deleteTokenReq.isMultiSender() && (TextUtils.isEmpty(b) || b.equals(i.a(this.f7239a).b((String) null)))) {
                i.a(this.f7239a).removeKey(subjectId);
                HMSLog.m37193i(TAG, "The local subject token is null");
                return;
            }
            deleteTokenReq.setToken(b);
            k kVar = new k("push.deletetoken", deleteTokenReq, m37392a);
            kVar.setApiLevel(i);
            Tasks.await(this.f7241c.doWrite(kVar));
            i.a(this.f7239a).c(subjectId);
        } catch (Exception e) {
            if (e.getCause() instanceof ApiException) {
                ApiException apiException = (ApiException) e.getCause();
                C2419q.m37390a(this.f7239a, "push.deletetoken", m37392a, apiException.getStatusCode());
                throw apiException;
            }
            Context context = this.f7239a;
            ErrorEnum errorEnum = ErrorEnum.ERROR_INTERNAL_ERROR;
            C2419q.m37389a(context, "push.deletetoken", m37392a, errorEnum);
            throw errorEnum.toApiException();
        }
    }

    /* renamed from: a */
    public final void m38190a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (!AbstractC2418p.m37393e(this.f7239a)) {
            i.a(this.f7239a).removeKey("subjectId");
            return;
        }
        String string = i.a(this.f7239a).getString("subjectId");
        if (TextUtils.isEmpty(string)) {
            i.a(this.f7239a).saveString("subjectId", str);
        } else if (string.contains(str)) {
        } else {
            i a = i.a(this.f7239a);
            a.saveString("subjectId", string + "," + str);
        }
    }

    /* renamed from: b */
    public final void m38189b() throws ApiException {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            return;
        }
        throw ErrorEnum.ERROR_MAIN_THREAD.toApiException();
    }

    public void deleteAAID() throws ApiException {
        m38189b();
        try {
            if (!this.f7240b.containsKey("aaid")) {
                return;
            }
            this.f7240b.removeKey("aaid");
            this.f7240b.removeKey("creationTime");
            if (!C2417o.m37400e(this.f7239a)) {
                return;
            }
            if (ProxyCenter.getProxy() != null) {
                HMSLog.m37193i(TAG, "use proxy delete all token after delete AaId.");
                ProxyCenter.getProxy().deleteAllToken(this.f7239a);
                return;
            }
            DeleteTokenReq m37406b = C2417o.m37406b(this.f7239a);
            m37406b.setDeleteType(1);
            m37406b.setMultiSender(false);
            m38192a(m37406b, 1);
            BaseUtils.deleteAllTokenCache(this.f7239a);
        } catch (ApiException e) {
            throw e;
        } catch (Exception e2) {
            throw ErrorEnum.ERROR_INTERNAL_ERROR.toApiException();
        }
    }

    public void deleteToken(String str) throws ApiException {
        m38189b();
        m38193a();
        if (!TextUtils.isEmpty(str)) {
            String m37401d = C2417o.m37401d(this.f7239a);
            if (TextUtils.isEmpty(m37401d)) {
                throw ErrorEnum.ERROR_MISSING_PROJECT_ID.toApiException();
            }
            if (str.equals(m37401d)) {
                deleteToken(null, null);
                return;
            }
            DeleteTokenReq m37409a = C2417o.m37409a(this.f7239a, str);
            m37409a.setMultiSender(true);
            m38192a(m37409a, 2);
            return;
        }
        throw ErrorEnum.ERROR_ARGUMENTS_INVALID.toApiException();
    }

    public void deleteToken(String str, String str2) throws ApiException {
        m38189b();
        m38193a();
        DeleteTokenReq m37408a = C2417o.m37408a(this.f7239a, str, str2);
        m37408a.setMultiSender(false);
        m38192a(m37408a, 1);
    }

    public Task<AAIDResult> getAAID() {
        try {
            return Tasks.callInBackground(new CallableC2412j(this.f7239a.getApplicationContext()));
        } catch (Exception e) {
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            taskCompletionSource.setException(ErrorEnum.ERROR_INTERNAL_ERROR.toApiException());
            return taskCompletionSource.getTask();
        }
    }

    public long getCreationTime() {
        try {
            if (!this.f7240b.containsKey("creationTime")) {
                getAAID();
            }
            return this.f7240b.getLong("creationTime");
        } catch (Exception e) {
            return 0L;
        }
    }

    public String getId() {
        return C2417o.m37402c(this.f7239a);
    }

    @Deprecated
    public String getToken() {
        String str = null;
        try {
            str = getToken(null, null);
        } catch (Exception e) {
        }
        return str;
    }

    public String getToken(String str) throws ApiException {
        m38189b();
        m38193a();
        if (!TextUtils.isEmpty(str)) {
            String m37401d = C2417o.m37401d(this.f7239a);
            if (TextUtils.isEmpty(m37401d)) {
                throw ErrorEnum.ERROR_MISSING_PROJECT_ID.toApiException();
            }
            if (str.equals(m37401d)) {
                return getToken(null, null);
            }
            TokenReq m37405b = C2417o.m37405b(this.f7239a, str);
            m37405b.setAaid(getId());
            m37405b.setMultiSender(true);
            return m38191a(m37405b, 2);
        }
        throw ErrorEnum.ERROR_ARGUMENTS_INVALID.toApiException();
    }

    public String getToken(String str, String str2) throws ApiException {
        m38189b();
        m38193a();
        TokenReq m37404b = C2417o.m37404b(this.f7239a, null, str2);
        m37404b.setAaid(getId());
        m37404b.setMultiSender(false);
        i.a(this.f7239a).saveString(this.f7239a.getPackageName(), "1");
        return m38191a(m37404b, 1);
    }
}

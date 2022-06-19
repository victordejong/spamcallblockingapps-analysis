package com.huawei.hms.aaid;

import android.app.Activity;
import android.content.Context;
import com.huawei.hmf.tasks.Task;
import com.huawei.hmf.tasks.TaskCompletionSource;
import com.huawei.hms.aaid.constant.ErrorEnum;
import com.huawei.hms.aaid.entity.TokenReq;
import com.huawei.hms.aaid.entity.TokenResult;
import com.huawei.hms.aaid.plugin.ProxyCenter;
import com.huawei.hms.aaid.task.PushClientBuilder;
import com.huawei.hms.aaid.utils.PushPreferences;
import com.huawei.hms.api.Api;
import com.huawei.hms.api.HuaweiApiAvailability;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.HuaweiApi;
import com.huawei.hms.common.internal.AbstractClientBuilder;
import com.huawei.hms.common.internal.Preconditions;
import com.huawei.hms.opendevice.C2417o;
import com.huawei.hms.opendevice.C2419q;
import com.huawei.hms.opendevice.l;
import com.huawei.hms.support.log.HMSLog;
import java.util.UUID;
import p193e.p1432d.p1439c.p1440a.C22128a;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/aaid/HmsInstanceIdEx.class */
public class HmsInstanceIdEx {
    public static final String TAG = "HmsInstanceIdEx";

    /* renamed from: a */
    public Context f7242a;

    /* renamed from: b */
    public PushPreferences f7243b;

    /* renamed from: c */
    public HuaweiApi<Api.ApiOptions.NoOptions> f7244c;

    public HmsInstanceIdEx(Context context) {
        this.f7242a = null;
        this.f7243b = null;
        this.f7242a = context;
        this.f7243b = new PushPreferences(context, "aaid");
        Api api = new Api(HuaweiApiAvailability.HMS_API_NAME_PUSH);
        if (context instanceof Activity) {
            this.f7244c = new HuaweiApi<>((Activity) context, (Api<Api.ApiOptions>) api, (Api.ApiOptions) null, (AbstractClientBuilder) new PushClientBuilder());
        } else {
            this.f7244c = new HuaweiApi<>(context, (Api<Api.ApiOptions>) api, (Api.ApiOptions) null, (AbstractClientBuilder) new PushClientBuilder());
        }
        this.f7244c.setKitSdkVersion(60300301);
    }

    public static HmsInstanceIdEx getInstance(Context context) {
        Preconditions.checkNotNull(context);
        return new HmsInstanceIdEx(context);
    }

    /* renamed from: a */
    public final Task<TokenResult> m38188a(Exception exc) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        taskCompletionSource.setException(exc);
        return taskCompletionSource.getTask();
    }

    /* renamed from: a */
    public final String m38187a(String str) {
        return C22128a.m8543z2("creationTime", str);
    }

    public void deleteAAID(String str) throws ApiException {
        if (str != null) {
            try {
                if (!this.f7243b.containsKey(str)) {
                    return;
                }
                this.f7243b.removeKey(str);
                this.f7243b.removeKey(m38187a(str));
                return;
            } catch (RuntimeException e) {
                throw ErrorEnum.ERROR_INTERNAL_ERROR.toApiException();
            } catch (Exception e2) {
                throw ErrorEnum.ERROR_INTERNAL_ERROR.toApiException();
            }
        }
        throw ErrorEnum.ERROR_ARGUMENTS_INVALID.toApiException();
    }

    public String getAAId(String str) throws ApiException {
        String str2;
        if (str != null) {
            try {
                if (this.f7243b.containsKey(str)) {
                    str2 = this.f7243b.getString(str);
                } else {
                    String uuid = UUID.randomUUID().toString();
                    this.f7243b.saveString(str, uuid);
                    this.f7243b.saveLong(m38187a(str), Long.valueOf(System.currentTimeMillis()));
                    str2 = uuid;
                }
                return str2;
            } catch (RuntimeException e) {
                throw ErrorEnum.ERROR_INTERNAL_ERROR.toApiException();
            } catch (Exception e2) {
                throw ErrorEnum.ERROR_INTERNAL_ERROR.toApiException();
            }
        }
        throw ErrorEnum.ERROR_ARGUMENTS_INVALID.toApiException();
    }

    public long getCreationTime(String str) throws ApiException {
        if (str != null) {
            try {
                if (!this.f7243b.containsKey(m38187a(str))) {
                    getAAId(str);
                }
                return this.f7243b.getLong(m38187a(str));
            } catch (RuntimeException e) {
                throw ErrorEnum.ERROR_INTERNAL_ERROR.toApiException();
            } catch (Exception e2) {
                throw ErrorEnum.ERROR_INTERNAL_ERROR.toApiException();
            }
        }
        throw ErrorEnum.ERROR_ARGUMENTS_INVALID.toApiException();
    }

    public Task<TokenResult> getToken() {
        if (ProxyCenter.getProxy() != null) {
            try {
                HMSLog.m37193i(TAG, "use proxy get token, please check HmsMessageService.onNewToken receive result.");
                ProxyCenter.getProxy().getToken(this.f7242a, null, null);
                TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
                taskCompletionSource.setResult(new TokenResult());
                return taskCompletionSource.getTask();
            } catch (ApiException e) {
                return m38188a(e);
            } catch (Exception e2) {
                return m38188a(ErrorEnum.ERROR_INTERNAL_ERROR.toApiException());
            }
        }
        String m37392a = C2419q.m37392a(this.f7242a, "push.gettoken");
        try {
            TokenReq m37404b = C2417o.m37404b(this.f7242a, null, null);
            m37404b.setAaid(HmsInstanceId.getInstance(this.f7242a).getId());
            return this.f7244c.doWrite(new l("push.gettoken", m37404b, this.f7242a, m37392a));
        } catch (RuntimeException e3) {
            Context context = this.f7242a;
            ErrorEnum errorEnum = ErrorEnum.ERROR_INTERNAL_ERROR;
            C2419q.m37389a(context, "push.gettoken", m37392a, errorEnum);
            return m38188a(errorEnum.toApiException());
        } catch (Exception e4) {
            Context context2 = this.f7242a;
            ErrorEnum errorEnum2 = ErrorEnum.ERROR_INTERNAL_ERROR;
            C2419q.m37389a(context2, "push.gettoken", m37392a, errorEnum2);
            return m38188a(errorEnum2.toApiException());
        }
    }
}

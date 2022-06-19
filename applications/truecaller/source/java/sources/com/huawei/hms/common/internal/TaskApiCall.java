package com.huawei.hms.common.internal;

import android.os.Parcelable;
import com.huawei.hmf.tasks.CancellationToken;
import com.huawei.hmf.tasks.TaskCompletionSource;
import com.huawei.hms.common.internal.AnyClient;
import com.huawei.hms.support.log.HMSLog;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/common/internal/TaskApiCall.class */
public abstract class TaskApiCall<ClientT extends AnyClient, ResultT> {
    private static final String TAG = "TaskApiCall";
    private int apiLevel;
    private final String mRequestJson;
    private final String mUri;
    private Parcelable parcelable;
    private CancellationToken token;
    private String transactionId;

    @Deprecated
    public TaskApiCall(String str, String str2) {
        this.apiLevel = 1;
        this.mUri = str;
        this.mRequestJson = str2;
        this.parcelable = null;
        this.transactionId = null;
    }

    public TaskApiCall(String str, String str2, String str3) {
        this.apiLevel = 1;
        this.mUri = str;
        this.mRequestJson = str2;
        this.parcelable = null;
        this.transactionId = str3;
    }

    public TaskApiCall(String str, String str2, String str3, int i) {
        this.apiLevel = 1;
        this.mUri = str;
        this.mRequestJson = str2;
        this.parcelable = null;
        this.transactionId = str3;
        this.apiLevel = i;
    }

    public abstract void doExecute(ClientT clientt, ResponseErrorCode responseErrorCode, String str, TaskCompletionSource<ResultT> taskCompletionSource);

    public int getApiLevel() {
        return this.apiLevel;
    }

    @Deprecated
    public int getMinApkVersion() {
        return 30000000;
    }

    public Parcelable getParcelable() {
        return this.parcelable;
    }

    public String getRequestJson() {
        return this.mRequestJson;
    }

    public CancellationToken getToken() {
        return this.token;
    }

    public String getTransactionId() {
        return this.transactionId;
    }

    public String getUri() {
        return this.mUri;
    }

    public final void onResponse(ClientT clientt, ResponseErrorCode responseErrorCode, String str, TaskCompletionSource<ResultT> taskCompletionSource) {
        CancellationToken cancellationToken = this.token;
        if (cancellationToken != null && cancellationToken.isCancellationRequested()) {
            StringBuilder m8728C = C22128a.m8728C("This Task has been canceled, uri:");
            m8728C.append(this.mUri);
            m8728C.append(", transactionId:");
            m8728C.append(this.transactionId);
            HMSLog.m37193i(TAG, m8728C.toString());
            return;
        }
        StringBuilder m8728C2 = C22128a.m8728C("doExecute, uri:");
        m8728C2.append(this.mUri);
        m8728C2.append(", errorCode:");
        m8728C2.append(responseErrorCode.getErrorCode());
        m8728C2.append(", transactionId:");
        m8728C2.append(this.transactionId);
        HMSLog.m37193i(TAG, m8728C2.toString());
        doExecute(clientt, responseErrorCode, str, taskCompletionSource);
    }

    public void setApiLevel(int i) {
        this.apiLevel = i;
    }

    public void setParcelable(Parcelable parcelable) {
        this.parcelable = parcelable;
    }

    public void setToken(CancellationToken cancellationToken) {
        this.token = cancellationToken;
    }

    public void setTransactionId(String str) {
        this.transactionId = str;
    }
}

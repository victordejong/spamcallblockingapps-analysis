package com.huawei.hms.common.internal;

import android.content.Context;
import com.huawei.hms.api.Api;
import com.huawei.hms.api.Api.ApiOptions;
import com.huawei.hms.support.log.HMSLog;
import java.lang.ref.WeakReference;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/common/internal/ConnectionManagerKey.class */
public class ConnectionManagerKey<TOption extends Api.ApiOptions> {
    private static final String TAG = "ConnectionManagerKey";
    private final Api<TOption> mApi;
    private final WeakReference<Context> mContextRef;
    private final int mHashKey;
    private final boolean mHaveOption;
    private final TOption mOption;
    private final String subAppId;

    private ConnectionManagerKey(Context context, Api<TOption> api, TOption toption, String str) {
        this.mHaveOption = false;
        WeakReference<Context> weakReference = new WeakReference<>(context);
        this.mContextRef = weakReference;
        this.mApi = api;
        this.mOption = toption;
        this.mHashKey = Objects.hashCode(weakReference.get(), api, toption);
        this.subAppId = str;
    }

    private ConnectionManagerKey(Api<TOption> api, String str) {
        this.mHaveOption = true;
        this.mApi = api;
        this.mOption = null;
        this.mHashKey = System.identityHashCode(this);
        this.subAppId = str;
        this.mContextRef = null;
    }

    public static <TOption extends Api.ApiOptions> ConnectionManagerKey<TOption> createConnectionManagerKey(Context context, Api<TOption> api, TOption toption, String str) {
        return new ConnectionManagerKey<>(context, api, toption, str);
    }

    public static <TOption extends Api.ApiOptions> ConnectionManagerKey<TOption> createConnectionManagerKey(Api<TOption> api, String str) {
        return new ConnectionManagerKey<>(api, str);
    }

    public final boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            HMSLog.m37193i(TAG, "result: true.");
            return true;
        } else if (!(obj instanceof ConnectionManagerKey)) {
            HMSLog.m37193i(TAG, "wrong instance, result: false.");
            return false;
        } else {
            ConnectionManagerKey connectionManagerKey = (ConnectionManagerKey) obj;
            WeakReference<Context> weakReference = this.mContextRef;
            if (weakReference == null || connectionManagerKey.mContextRef == null) {
                if (weakReference != null || connectionManagerKey.mContextRef != null) {
                    HMSLog.m37193i(TAG, "result: false.");
                    return false;
                }
                boolean z2 = this.mHaveOption == connectionManagerKey.mHaveOption && Objects.equal(this.mApi, connectionManagerKey.mApi) && Objects.equal(this.mOption, connectionManagerKey.mOption) && Objects.equal(this.subAppId, connectionManagerKey.subAppId);
                HMSLog.m37193i(TAG, "mContextRef is null, result:" + z2);
                return z2;
            }
            if (this.mHaveOption != connectionManagerKey.mHaveOption || !Objects.equal(this.mApi, connectionManagerKey.mApi) || !Objects.equal(this.mOption, connectionManagerKey.mOption) || !Objects.equal(this.subAppId, connectionManagerKey.subAppId) || !Objects.equal(this.mContextRef.get(), connectionManagerKey.mContextRef.get())) {
                z = false;
            }
            HMSLog.m37193i(TAG, "mContextRef is not null, result:" + z);
            return z;
        }
    }

    public WeakReference<Context> getmContextRef() {
        return this.mContextRef;
    }

    public final int hashCode() {
        return this.mHashKey;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ConnectionManagerKey{mApi=");
        m8728C.append(this.mApi);
        m8728C.append(", mOption=");
        m8728C.append(this.mOption);
        m8728C.append(", mHaveOption=");
        m8728C.append(this.mHaveOption);
        m8728C.append(", mHashKey=");
        m8728C.append(this.mHashKey);
        m8728C.append(", subAppId='");
        C22128a.m8678P0(m8728C, this.subAppId, '\'', ", mContextRef=");
        m8728C.append(this.mContextRef);
        m8728C.append('}');
        return m8728C.toString();
    }
}

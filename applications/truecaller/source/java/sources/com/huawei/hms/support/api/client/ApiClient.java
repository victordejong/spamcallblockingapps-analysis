package com.huawei.hms.support.api.client;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/api/client/ApiClient.class */
public interface ApiClient {
    String getAppID();

    Context getContext();

    String getCpID();

    String getPackageName();

    String getSessionId();

    SubAppInfo getSubAppInfo();

    String getTransportName();

    boolean isConnected();
}

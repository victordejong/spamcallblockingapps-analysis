package com.huawei.hms.support.api.transport;

import com.huawei.hms.core.aidl.IMessageEntity;
import com.huawei.hms.support.api.client.ApiClient;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/api/transport/DatagramTransport.class */
public interface DatagramTransport {

    /* renamed from: com.huawei.hms.support.api.transport.DatagramTransport$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/api/transport/DatagramTransport$a.class */
    public interface AbstractC2461a {
        /* renamed from: a */
        void m37208a(int i, IMessageEntity iMessageEntity);
    }

    void post(ApiClient apiClient, AbstractC2461a abstractC2461a);

    void send(ApiClient apiClient, AbstractC2461a abstractC2461a);
}

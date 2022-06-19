package com.freshchat.consumer.sdk.service.p068e;

import com.freshchat.consumer.sdk.FreshchatCallbackStatus;
/* renamed from: com.freshchat.consumer.sdk.service.e.w */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/e/w.class */
public class C1921w implements AbstractC1907k {
    private int count = 0;

    /* renamed from: gI */
    private FreshchatCallbackStatus f4770gI;
    private boolean success;

    /* renamed from: a */
    public void m39315a(FreshchatCallbackStatus freshchatCallbackStatus) {
        this.f4770gI = freshchatCallbackStatus;
    }

    /* renamed from: dO */
    public FreshchatCallbackStatus m39314dO() {
        return this.f4770gI;
    }

    public int getCount() {
        return this.count;
    }

    @Override // com.freshchat.consumer.sdk.service.p068e.AbstractC1907k
    public boolean isSuccess() {
        return this.success;
    }

    public void setCount(int i) {
        this.count = i;
    }

    public void setSuccess(boolean z) {
        this.success = z;
    }
}

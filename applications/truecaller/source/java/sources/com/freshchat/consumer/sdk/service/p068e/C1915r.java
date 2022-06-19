package com.freshchat.consumer.sdk.service.p068e;
/* renamed from: com.freshchat.consumer.sdk.service.e.r */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/e/r.class */
public class C1915r implements AbstractC1907k {

    /* renamed from: gA */
    private EnumC1916a f4762gA;
    private boolean success;

    /* renamed from: com.freshchat.consumer.sdk.service.e.r$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/e/r$a.class */
    public enum EnumC1916a {
        UserNotCreated,
        NoInternet,
        Failed,
        Success
    }

    public C1915r(boolean z, EnumC1916a enumC1916a) {
        this.success = z;
        this.f4762gA = enumC1916a;
    }

    @Override // com.freshchat.consumer.sdk.service.p068e.AbstractC1907k
    public boolean isSuccess() {
        return this.success;
    }
}

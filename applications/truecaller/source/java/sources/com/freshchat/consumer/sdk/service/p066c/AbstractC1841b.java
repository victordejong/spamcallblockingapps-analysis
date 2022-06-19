package com.freshchat.consumer.sdk.service.p066c;

import android.content.Context;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1906j;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
/* renamed from: com.freshchat.consumer.sdk.service.c.b */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/c/b.class */
public abstract class AbstractC1841b<T1 extends AbstractC1906j, T2 extends AbstractC1907k> implements AbstractC1849j<T1, T2> {
    private Context context;

    /* renamed from: fK */
    private C1466e f4699fK;

    @Override // com.freshchat.consumer.sdk.service.p066c.AbstractC1849j
    /* renamed from: a */
    public void mo39444a(C1466e c1466e) {
        this.f4699fK = c1466e;
    }

    /* renamed from: dw */
    public C1466e m39479dw() {
        return this.f4699fK;
    }

    public Context getContext() {
        return this.context;
    }

    @Override // com.freshchat.consumer.sdk.service.p066c.AbstractC1849j
    public void setContext(Context context) {
        this.context = context;
    }
}

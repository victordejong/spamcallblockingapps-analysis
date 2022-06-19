package com.freshchat.consumer.sdk.service.p064a;

import android.content.Context;
import com.freshchat.consumer.sdk.p057j.C1597ab;
/* renamed from: com.freshchat.consumer.sdk.service.a.d */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/a/d.class */
public abstract class AbstractC1808d implements AbstractC1806b {

    /* renamed from: cS */
    private final C1597ab f4679cS = new C1597ab(new C1597ab.C1598a());
    private final Context context;

    /* renamed from: ft */
    private final C1805a f4680ft;

    public AbstractC1808d(Context context, C1805a c1805a) {
        this.context = context;
        this.f4680ft = c1805a;
    }

    /* renamed from: ch */
    public C1597ab m39517ch() {
        return this.f4679cS;
    }

    /* renamed from: dt */
    public C1805a m39516dt() {
        return this.f4680ft;
    }

    public Context getContext() {
        return this.context;
    }
}

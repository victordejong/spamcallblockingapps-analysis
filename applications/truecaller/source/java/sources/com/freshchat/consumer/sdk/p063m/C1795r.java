package com.freshchat.consumer.sdk.p063m;

import android.view.View;
import com.freshchat.consumer.sdk.p045a.C1337l;
import com.freshchat.consumer.sdk.service.AbstractC1828c;
import com.freshchat.consumer.sdk.service.C1824b;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.m.r */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/m/r.class */
public class C1795r implements AbstractC1828c<List<C1337l.AbstractC1339b>> {

    /* renamed from: pl */
    public final /* synthetic */ C1791n f4658pl;

    public C1795r(C1791n c1791n) {
        this.f4658pl = c1791n;
    }

    @Override // com.freshchat.consumer.sdk.service.AbstractC1828c
    /* renamed from: b */
    public void mo39509b(C1824b<List<C1337l.AbstractC1339b>> c1824b) {
        View view;
        this.f4658pl.m39563a(c1824b);
        view = this.f4658pl.f4651ra;
        view.post(new RunnableC1796s(this));
    }
}

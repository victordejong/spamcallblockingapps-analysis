package com.freshchat.consumer.sdk.p061k;

import com.freshchat.consumer.sdk.p047b.EnumC1475k;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.k.d */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/k/d.class */
public class RunnableC1739d implements Runnable {

    /* renamed from: lC */
    public final /* synthetic */ C1737c f4545lC;

    /* renamed from: nr */
    public final /* synthetic */ List f4546nr;

    public RunnableC1739d(C1737c c1737c, List list) {
        this.f4545lC = c1737c;
        this.f4546nr = list;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f4545lC.m39742C(this.f4546nr) == EnumC1475k.DROP_DOWN) {
            this.f4545lC.m39757x(this.f4545lC.m39739E(this.f4546nr));
        }
    }
}

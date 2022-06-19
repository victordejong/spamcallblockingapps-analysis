package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.Message;
import java.util.ArrayList;
/* renamed from: com.freshchat.consumer.sdk.j.cn */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/cn.class */
public final class RunnableC1690cn implements Runnable {

    /* renamed from: fk */
    public final /* synthetic */ long f4482fk;

    /* renamed from: iI */
    public final /* synthetic */ Context f4483iI;

    /* renamed from: os */
    public final /* synthetic */ Message f4484os;

    public RunnableC1690cn(Message message, Context context, long j) {
        this.f4484os = message;
        this.f4483iI = context;
        this.f4482fk = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f4484os);
        C1689cm.m40009a(this.f4483iI, arrayList, this.f4482fk);
    }
}

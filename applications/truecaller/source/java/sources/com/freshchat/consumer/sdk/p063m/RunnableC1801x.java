package com.freshchat.consumer.sdk.p063m;

import androidx.core.widget.NestedScrollView;
import io.agora.rtc.Constants;
/* renamed from: com.freshchat.consumer.sdk.m.x */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/m/x.class */
public class RunnableC1801x implements Runnable {

    /* renamed from: pp */
    public final /* synthetic */ C1797t f4665pp;

    public RunnableC1801x(C1797t c1797t) {
        this.f4665pp = c1797t;
    }

    @Override // java.lang.Runnable
    public void run() {
        NestedScrollView nestedScrollView;
        nestedScrollView = this.f4665pp.f4660jH;
        nestedScrollView.k((int) Constants.ERR_ENCRYPTED_STREAM_NOT_ALLOWED_PUBLISHED);
    }
}

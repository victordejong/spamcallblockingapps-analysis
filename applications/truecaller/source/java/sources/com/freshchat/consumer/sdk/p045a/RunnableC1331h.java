package com.freshchat.consumer.sdk.p045a;

import android.content.Context;
import android.view.View;
import android.widget.RelativeLayout;
import com.freshchat.consumer.sdk.p045a.C1316d;
import com.freshchat.consumer.sdk.p047b.C1471i;
/* renamed from: com.freshchat.consumer.sdk.a.h */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/h.class */
public class RunnableC1331h implements Runnable {

    /* renamed from: ot */
    public final /* synthetic */ C1316d f3618ot;

    /* renamed from: pW */
    public final /* synthetic */ View f3619pW;

    /* renamed from: pX */
    public final /* synthetic */ C1316d.C1321e f3620pX;

    public RunnableC1331h(C1316d c1316d, View view, C1316d.C1321e c1321e) {
        this.f3618ot = c1316d;
        this.f3619pW = view;
        this.f3620pX = c1321e;
    }

    @Override // java.lang.Runnable
    public void run() {
        Context context;
        int i;
        int i2;
        this.f3618ot.f3584pV = this.f3619pW.getWidth();
        context = this.f3618ot.context;
        RelativeLayout m41482bc = this.f3620pX.m41482bc();
        i = this.f3618ot.f3566cK;
        i2 = this.f3618ot.f3584pV;
        C1471i.m40852a(context, m41482bc, 0, i - i2);
    }
}

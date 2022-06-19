package com.huawei.updatesdk.p097a.p106b.p108b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* renamed from: com.huawei.updatesdk.a.b.b.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/a/b/b/a.class */
public abstract class AbstractC2531a extends BroadcastReceiver {
    /* renamed from: a */
    public abstract void m36753a(Context context, C2532b c2532b);

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        m36753a(context, C2532b.m36751a(intent));
    }
}

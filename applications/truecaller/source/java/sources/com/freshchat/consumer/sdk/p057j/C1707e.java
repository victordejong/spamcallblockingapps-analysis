package com.freshchat.consumer.sdk.p057j;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.freshchat.consumer.sdk.receiver.FreshchatReceiver;
import com.freshchat.consumer.sdk.service.AbstractC1804a;
import com.freshchat.consumer.sdk.service.p067d.C1870d;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
import com.freshchat.consumer.sdk.service.p068e.C1917s;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.freshchat.consumer.sdk.j.e */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/e.class */
public class C1707e {

    /* renamed from: ho */
    private static AtomicBoolean f4502ho = new AtomicBoolean(false);

    /* renamed from: Y */
    public static void m39966Y(Context context) {
        if (f4502ho.get()) {
            return;
        }
        try {
            C1870d.m39383c(context, new C1917s(), new AbstractC1804a() { // from class: com.freshchat.consumer.sdk.j.e.1
                @Override // com.freshchat.consumer.sdk.service.AbstractC1804a
                /* renamed from: a */
                public void mo39382a(AbstractC1907k abstractC1907k) {
                    if (abstractC1907k == null || !abstractC1907k.isSuccess()) {
                        return;
                    }
                    C1707e.f4502ho.set(true);
                }
            });
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* renamed from: Z */
    public static PendingIntent m39965Z(Context context) {
        return PendingIntent.getBroadcast(context, 0, new Intent(context, FreshchatReceiver.class), 268435456);
    }

    /* renamed from: aa */
    public static void m39964aa(Context context) {
        ((AlarmManager) context.getSystemService("alarm")).cancel(m39965Z(context));
        f4502ho.set(false);
    }
}

package com.freshchat.consumer.sdk.service.p066c;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1707e;
import com.freshchat.consumer.sdk.p057j.C1719n;
import com.freshchat.consumer.sdk.service.p064a.C1807c;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
import com.freshchat.consumer.sdk.service.p068e.C1904h;
import com.freshchat.consumer.sdk.service.p068e.C1917s;
import java.util.Random;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.service.c.q */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/c/q.class */
public class C1856q extends AbstractC1841b<C1917s, AbstractC1907k> {
    /* renamed from: dx */
    private long m39423dx() {
        return (new Random().nextInt(9) + 1) * 60 * 1000;
    }

    /* renamed from: a */
    public AbstractC1907k mo39348b(C1917s c1917s) {
        C1613ai.m40284d("FRESHCHAT", "StartBackgroundAlarmRequestHandler::handleRequest() called");
        Context context = getContext();
        if (C1807c.m39519s(context)) {
            PendingIntent m39965Z = C1707e.m39965Z(context);
            long currentTimeMillis = System.currentTimeMillis() + m39423dx();
            ((AlarmManager) context.getSystemService("alarm")).setRepeating(0, currentTimeMillis, DefaultRefreshIntervals.REMOTE_CONFIG_FETCH_INTERVAL, m39965Z);
            StringBuilder m8728C = C22128a.m8728C("StartBackgroundAlarmRequestHandler::Starting alarm from ");
            m8728C.append(C1719n.m39865i(context, currentTimeMillis));
            m8728C.append(", with an interval of ");
            m8728C.append(DefaultRefreshIntervals.REMOTE_CONFIG_FETCH_INTERVAL);
            m8728C.append(" ms");
            C1613ai.m40284d("FRESHCHAT", m8728C.toString());
            return new C1904h(true);
        }
        return new C1904h(false);
    }
}

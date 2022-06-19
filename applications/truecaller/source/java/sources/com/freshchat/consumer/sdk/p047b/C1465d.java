package com.freshchat.consumer.sdk.p047b;

import android.app.Activity;
import com.freshchat.consumer.sdk.p057j.AbstractC1677cc;
import com.freshchat.consumer.sdk.p057j.C1723q;
/* renamed from: com.freshchat.consumer.sdk.b.d */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/b/d.class */
public class C1465d extends AbstractC1677cc {
    /* renamed from: a */
    private void m41018a(Activity activity) {
        try {
            C1466e.m40905i(activity).m40944cb();
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0034 A[Catch: Exception -> 0x003b, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x003b, blocks: (B:2:0x0000, B:4:0x000a, B:8:0x0016, B:9:0x001c, B:9:0x001c, B:10:0x001f, B:15:0x0034), top: B:19:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m41017b(android.app.Activity r6) {
        /*
            r5 = this;
            r0 = r6
            com.freshchat.consumer.sdk.b.e r0 = com.freshchat.consumer.sdk.p047b.C1466e.m40905i(r0)     // Catch: java.lang.Exception -> L3b
            java.lang.String r0 = r0.m40945ca()     // Catch: java.lang.Exception -> L3b
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            boolean r0 = com.freshchat.consumer.sdk.p057j.C1626as.isEmpty(r0)     // Catch: java.lang.Exception -> L3b
            if (r0 == 0) goto L16
        L11:
            r0 = 1
            r8 = r0
            goto L30
        L16:
            r0 = r7
            long r0 = java.lang.Long.parseLong(r0)     // Catch: java.lang.Exception -> L3b
            r9 = r0
            long r0 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> L3b java.lang.Exception -> L3b
            r1 = r9
            long r0 = r0 - r1
            r1 = r6
            com.freshchat.consumer.sdk.beans.config.RemoteConfig r1 = com.freshchat.consumer.sdk.p057j.C1622ap.m40245bD(r1)     // Catch: java.lang.Exception -> L3b
            long r1 = r1.getSessionTimeoutInterval()     // Catch: java.lang.Exception -> L3b
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L30
            goto L11
        L30:
            r0 = r8
            if (r0 == 0) goto L40
            r0 = r6
            com.freshchat.consumer.sdk.p057j.C1638b.m40164U(r0)     // Catch: java.lang.Exception -> L3b
            goto L40
        L3b:
            r6 = move-exception
            r0 = r6
            com.freshchat.consumer.sdk.p057j.C1723q.m39823a(r0)
        L40:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p047b.C1465d.m41017b(android.app.Activity):void");
    }

    @Override // com.freshchat.consumer.sdk.p057j.AbstractC1677cc, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        m41018a(activity);
    }

    @Override // com.freshchat.consumer.sdk.p057j.AbstractC1677cc, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        m41017b(activity);
    }

    @Override // com.freshchat.consumer.sdk.p057j.AbstractC1677cc, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }
}

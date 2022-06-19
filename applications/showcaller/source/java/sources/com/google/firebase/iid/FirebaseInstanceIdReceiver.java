package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.cloudmessaging.CloudMessage;
import com.google.android.gms.cloudmessaging.CloudMessagingReceiver;
import com.google.android.gms.tasks.C7970j;
import com.google.firebase.messaging.C9279e0;
import com.google.firebase.messaging.C9297n;
import java.util.concurrent.ExecutionException;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/iid/FirebaseInstanceIdReceiver.class */
public final class FirebaseInstanceIdReceiver extends CloudMessagingReceiver {
    /* renamed from: h */
    private static Intent m1611h(Context context, String str, Bundle bundle) {
        return new Intent(str).putExtras(bundle);
    }

    @Override // com.google.android.gms.cloudmessaging.CloudMessagingReceiver
    /* renamed from: b */
    protected final int mo1614b(Context context, CloudMessage cloudMessage) {
        try {
            return ((Integer) C7970j.m5802a(new C9297n(context).m1203g(cloudMessage.m17549k0()))).intValue();
        } catch (InterruptedException | ExecutionException e) {
            Log.e("FirebaseMessaging", "Failed to send message to service.", e);
            return 500;
        }
    }

    @Override // com.google.android.gms.cloudmessaging.CloudMessagingReceiver
    /* renamed from: c */
    protected final void mo1613c(Context context, Bundle bundle) {
        Intent m1611h = m1611h(context, "com.google.firebase.messaging.NOTIFICATION_DISMISS", bundle);
        if (C9279e0.m1291B(m1611h)) {
            C9279e0.m1271t(m1611h);
        }
    }

    @Override // com.google.android.gms.cloudmessaging.CloudMessagingReceiver
    /* renamed from: d */
    protected final void mo1612d(Context context, Bundle bundle) {
        Intent m1611h = m1611h(context, "com.google.firebase.messaging.NOTIFICATION_OPEN", bundle);
        if (C9279e0.m1291B(m1611h)) {
            C9279e0.m1269v(m1611h);
        }
    }
}

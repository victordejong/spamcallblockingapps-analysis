package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.cloudmessaging.CloudMessage;
import com.google.android.gms.cloudmessaging.CloudMessagingReceiver;
import com.google.android.gms.tasks.h;
import com.google.android.gms.tasks.k;
import com.google.firebase.messaging.ae;
import com.google.firebase.messaging.g;
import java.util.concurrent.ExecutionException;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/FirebaseInstanceIdReceiver.class */
public final class FirebaseInstanceIdReceiver extends CloudMessagingReceiver {
    private static Intent a(String str, Bundle bundle) {
        return new Intent(str).putExtras(bundle);
    }

    @Override // com.google.android.gms.cloudmessaging.CloudMessagingReceiver
    public final int a(Context context, CloudMessage cloudMessage) {
        try {
            return ((Integer) k.a((h<Object>) new g(context).a(cloudMessage.getIntent()))).intValue();
        } catch (InterruptedException | ExecutionException e) {
            Log.e("FirebaseMessaging", "Failed to send message to service.", e);
            return 500;
        }
    }

    @Override // com.google.android.gms.cloudmessaging.CloudMessagingReceiver
    public final void a(Bundle bundle) {
        Intent a2 = a("com.google.firebase.messaging.NOTIFICATION_OPEN", bundle);
        if (ae.e(a2)) {
            ae.b(a2);
        }
    }

    @Override // com.google.android.gms.cloudmessaging.CloudMessagingReceiver
    public final void b(Bundle bundle) {
        Intent a2 = a("com.google.firebase.messaging.NOTIFICATION_DISMISS", bundle);
        if (ae.e(a2)) {
            ae.c(a2);
        }
    }
}

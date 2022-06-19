package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.cloudmessaging.CloudMessage;
import com.google.android.gms.cloudmessaging.CloudMessagingReceiver;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14188k;
import com.google.firebase.messaging.C15844ae;
import com.google.firebase.messaging.C15879g;
import java.util.concurrent.ExecutionException;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/FirebaseInstanceIdReceiver.class */
public final class FirebaseInstanceIdReceiver extends CloudMessagingReceiver {
    /* renamed from: a */
    private static Intent m8431a(String str, Bundle bundle) {
        return new Intent(str).putExtras(bundle);
    }

    @Override // com.google.android.gms.cloudmessaging.CloudMessagingReceiver
    /* renamed from: a */
    public final int mo8433a(Context context, CloudMessage cloudMessage) {
        try {
            return ((Integer) C14188k.m11468a((AbstractC14185h<Object>) new C15879g(context).m8122a(cloudMessage.getIntent()))).intValue();
        } catch (InterruptedException | ExecutionException e) {
            Log.e("FirebaseMessaging", "Failed to send message to service.", e);
            return 500;
        }
    }

    @Override // com.google.android.gms.cloudmessaging.CloudMessagingReceiver
    /* renamed from: a */
    public final void mo8432a(Bundle bundle) {
        Intent m8431a = m8431a("com.google.firebase.messaging.NOTIFICATION_OPEN", bundle);
        if (C15844ae.m8225e(m8431a)) {
            C15844ae.m8228b(m8431a);
        }
    }

    @Override // com.google.android.gms.cloudmessaging.CloudMessagingReceiver
    /* renamed from: b */
    public final void mo8430b(Bundle bundle) {
        Intent m8431a = m8431a("com.google.firebase.messaging.NOTIFICATION_DISMISS", bundle);
        if (C15844ae.m8225e(m8431a)) {
            C15844ae.m8227c(m8431a);
        }
    }
}

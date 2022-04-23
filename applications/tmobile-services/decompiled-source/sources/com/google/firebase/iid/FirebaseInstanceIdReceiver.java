package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.google.android.gms.cloudmessaging.CloudMessage;
import com.google.android.gms.cloudmessaging.CloudMessagingReceiver;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.ExecutionException;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/FirebaseInstanceIdReceiver.class */
public final class FirebaseInstanceIdReceiver extends CloudMessagingReceiver {
    private static Intent createServiceIntent(@NonNull Context context, @NonNull String str, @NonNull Bundle bundle) {
        return new Intent(str).putExtras(bundle);
    }

    @Override // com.google.android.gms.cloudmessaging.CloudMessagingReceiver
    @WorkerThread
    protected final int onMessageReceive(@NonNull Context context, @NonNull CloudMessage cloudMessage) {
        try {
            return ((Integer) Tasks.m10824a(new FcmBroadcastProcessor(context).process(cloudMessage.m15133B()))).intValue();
        } catch (InterruptedException | ExecutionException e) {
            Log.e("FirebaseInstanceId", "Failed to send message to service.", e);
            return 500;
        }
    }

    @Override // com.google.android.gms.cloudmessaging.CloudMessagingReceiver
    @WorkerThread
    protected final void onNotificationDismissed(@NonNull Context context, @NonNull Bundle bundle) {
        try {
            Tasks.m10824a(new FcmBroadcastProcessor(context).process(createServiceIntent(context, "com.google.firebase.messaging.NOTIFICATION_DISMISS", bundle)));
        } catch (InterruptedException | ExecutionException e) {
            Log.e("FirebaseInstanceId", "Failed to send notification dismissed event to service.", e);
        }
    }

    @Override // com.google.android.gms.cloudmessaging.CloudMessagingReceiver
    @WorkerThread
    protected final void onNotificationOpen(@NonNull Context context, @NonNull Bundle bundle) {
        try {
            Tasks.m10824a(new FcmBroadcastProcessor(context).process(createServiceIntent(context, "com.google.firebase.messaging.NOTIFICATION_OPEN", bundle)));
        } catch (InterruptedException | ExecutionException e) {
            Log.e("FirebaseInstanceId", "Failed to send notification open event to service.", e);
        }
    }
}

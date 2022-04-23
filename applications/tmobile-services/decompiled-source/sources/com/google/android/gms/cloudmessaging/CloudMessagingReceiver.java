package com.google.android.gms.cloudmessaging;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.internal.cloudmessaging.zza;
import com.google.android.gms.internal.cloudmessaging.zzf;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.messaging.Constants;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/CloudMessagingReceiver.class */
public abstract class CloudMessagingReceiver extends BroadcastReceiver {
    private final ExecutorService zza = zza.m14101a().mo14100a(new NamedThreadFactory("firebase-iid-executor"), zzf.f7841a);

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/CloudMessagingReceiver$IntentActionKeys.class */
    public static final class IntentActionKeys {
        private IntentActionKeys() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/CloudMessagingReceiver$IntentKeys.class */
    public static final class IntentKeys {
        private IntentKeys() {
        }
    }

    @WorkerThread
    private final int zza(@NonNull Context context, @NonNull Intent intent) {
        PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra("pending_intent");
        if (pendingIntent != null) {
            try {
                pendingIntent.send();
            } catch (PendingIntent.CanceledException e) {
                Log.e("CloudMessagingReceiver", "Notification pending intent canceled");
            }
        }
        Bundle extras = intent.getExtras();
        if (extras != null) {
            extras.remove("pending_intent");
        } else {
            extras = new Bundle();
        }
        if ("com.google.firebase.messaging.NOTIFICATION_OPEN".equals(intent.getAction())) {
            onNotificationOpen(context, extras);
            return -1;
        } else if ("com.google.firebase.messaging.NOTIFICATION_DISMISS".equals(intent.getAction())) {
            onNotificationDismissed(context, extras);
            return -1;
        } else {
            Log.e("CloudMessagingReceiver", "Unknown notification action");
            return 500;
        }
    }

    @WorkerThread
    private final int zzb(@NonNull Context context, @NonNull Intent intent) {
        Task<Void> task;
        if (intent.getExtras() == null) {
            return 500;
        }
        String stringExtra = intent.getStringExtra(Constants.MessagePayloadKeys.MSGID);
        if (TextUtils.isEmpty(stringExtra)) {
            task = Tasks.m10820e(null);
        } else {
            Bundle bundle = new Bundle();
            bundle.putString(Constants.MessagePayloadKeys.MSGID, stringExtra);
            task = zze.m15115c(context).m15114d(2, bundle);
        }
        int onMessageReceive = onMessageReceive(context, new CloudMessage(intent));
        try {
            Tasks.m10823b(task, TimeUnit.SECONDS.toMillis(1L), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 20);
            sb.append("Message ack failed: ");
            sb.append(valueOf);
            Log.w("CloudMessagingReceiver", sb.toString());
        }
        return onMessageReceive;
    }

    @NonNull
    protected Executor getBroadcastExecutor() {
        return this.zza;
    }

    @WorkerThread
    protected abstract int onMessageReceive(@NonNull Context context, @NonNull CloudMessage cloudMessage);

    @WorkerThread
    protected void onNotificationDismissed(@NonNull Context context, @NonNull Bundle bundle) {
    }

    @WorkerThread
    protected void onNotificationOpen(@NonNull Context context, @NonNull Bundle bundle) {
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(@NonNull final Context context, @NonNull final Intent intent) {
        if (intent != null) {
            final boolean isOrderedBroadcast = isOrderedBroadcast();
            final BroadcastReceiver.PendingResult goAsync = goAsync();
            getBroadcastExecutor().execute(new Runnable(this, intent, context, isOrderedBroadcast, goAsync) { // from class: com.google.android.gms.cloudmessaging.zzd

                /* renamed from: f */
                private final CloudMessagingReceiver f6920f;

                /* renamed from: g */
                private final Intent f6921g;

                /* renamed from: h */
                private final Context f6922h;

                /* renamed from: i */
                private final boolean f6923i;

                /* renamed from: j */
                private final BroadcastReceiver.PendingResult f6924j;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f6920f = this;
                    this.f6921g = intent;
                    this.f6922h = context;
                    this.f6923i = isOrderedBroadcast;
                    this.f6924j = goAsync;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f6920f.zza(this.f6921g, this.f6922h, this.f6923i, this.f6924j);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zza(Intent intent, Context context, boolean z, BroadcastReceiver.PendingResult pendingResult) {
        try {
            Parcelable parcelableExtra = intent.getParcelableExtra("wrapped_intent");
            Intent intent2 = parcelableExtra instanceof Intent ? (Intent) parcelableExtra : null;
            int zza = intent2 != null ? zza(context, intent2) : zzb(context, intent);
            if (z) {
                pendingResult.setResultCode(zza);
            }
        } finally {
            pendingResult.finish();
        }
    }
}

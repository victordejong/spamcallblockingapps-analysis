package com.google.android.gms.cloudmessaging;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.internal.cloudmessaging.zze;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1642f.p1652d.C24902e;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/cloudmessaging/CloudMessagingReceiver.class */
public abstract class CloudMessagingReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public final ExecutorService f5615a;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/cloudmessaging/CloudMessagingReceiver$IntentActionKeys.class */
    public static final class IntentActionKeys {
        private IntentActionKeys() {
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/cloudmessaging/CloudMessagingReceiver$IntentKeys.class */
    public static final class IntentKeys {
        private IntentKeys() {
        }
    }

    public CloudMessagingReceiver() {
        zze.zza();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new NamedThreadFactory("firebase-iid-executor"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f5615a = Executors.unconfigurableExecutorService(threadPoolExecutor);
    }

    /* renamed from: a */
    public abstract int m39088a(Context context, CloudMessage cloudMessage);

    /* renamed from: b */
    public void m39087b(Context context, Bundle bundle) {
    }

    /* renamed from: c */
    public final int m39086c(Context context, Intent intent) {
        Task task;
        int i;
        if (intent.getExtras() == null) {
            return 500;
        }
        String stringExtra = intent.getStringExtra("google.message_id");
        if (TextUtils.isEmpty(stringExtra)) {
            task = Tasks.m38509f(null);
        } else {
            Bundle m8654X0 = C22128a.m8654X0("google.message_id", stringExtra);
            zzs m39082a = zzs.m39082a(context);
            synchronized (m39082a) {
                i = m39082a.f5646d;
                m39082a.f5646d = i + 1;
            }
            task = m39082a.m39081b(new C24902e(i, m8654X0));
        }
        int m39088a = m39088a(context, new CloudMessage(intent));
        try {
            Tasks.m38513b(task, TimeUnit.SECONDS.toMillis(1L), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            String.valueOf(e).length();
        }
        return m39088a;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(final Context context, final Intent intent) {
        if (intent == null) {
            return;
        }
        final boolean isOrderedBroadcast = isOrderedBroadcast();
        final BroadcastReceiver.PendingResult goAsync = goAsync();
        this.f5615a.execute(new Runnable() { // from class: com.google.android.gms.cloudmessaging.zze
            @Override // java.lang.Runnable
            public final void run() {
                int i;
                CloudMessagingReceiver cloudMessagingReceiver = CloudMessagingReceiver.this;
                Intent intent2 = intent;
                Context context2 = context;
                boolean z = isOrderedBroadcast;
                BroadcastReceiver.PendingResult pendingResult = goAsync;
                Objects.requireNonNull(cloudMessagingReceiver);
                try {
                    Parcelable parcelableExtra = intent2.getParcelableExtra("wrapped_intent");
                    Intent intent3 = parcelableExtra instanceof Intent ? (Intent) parcelableExtra : null;
                    if (intent3 != null) {
                        PendingIntent pendingIntent = (PendingIntent) intent3.getParcelableExtra("pending_intent");
                        if (pendingIntent != null) {
                            try {
                                pendingIntent.send();
                            } catch (PendingIntent.CanceledException e) {
                            }
                        }
                        Bundle extras = intent3.getExtras();
                        if (extras != null) {
                            extras.remove("pending_intent");
                        } else {
                            extras = new Bundle();
                        }
                        if ("com.google.firebase.messaging.NOTIFICATION_DISMISS".equals(intent3.getAction())) {
                            cloudMessagingReceiver.m39087b(context2, extras);
                            i = -1;
                        } else {
                            i = 500;
                        }
                    } else {
                        i = cloudMessagingReceiver.m39086c(context2, intent2);
                    }
                    if (z) {
                        pendingResult.setResultCode(i);
                    }
                } finally {
                    pendingResult.finish();
                }
            }
        });
    }
}

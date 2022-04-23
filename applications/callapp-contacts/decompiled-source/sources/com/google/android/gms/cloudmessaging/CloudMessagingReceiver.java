package com.google.android.gms.cloudmessaging;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.internal.b.a;
import com.google.android.gms.internal.b.b;
import com.google.android.gms.internal.b.f;
import com.google.android.gms.tasks.h;
import com.google.android.gms.tasks.k;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/cloudmessaging/CloudMessagingReceiver.class */
public abstract class CloudMessagingReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f22539a;

    public CloudMessagingReceiver() {
        b a2 = a.a();
        com.google.android.gms.common.util.a.a aVar = new com.google.android.gms.common.util.a.a("firebase-iid-executor");
        int i = f.f28665a;
        this.f22539a = a2.a(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(Context context, Intent intent) {
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
            a(extras);
            return -1;
        } else if ("com.google.firebase.messaging.NOTIFICATION_DISMISS".equals(intent.getAction())) {
            b(extras);
            return -1;
        } else {
            Log.e("CloudMessagingReceiver", "Unknown notification action");
            return 500;
        }
    }

    protected abstract int a(Context context, CloudMessage cloudMessage);

    protected void a(Bundle bundle) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b(Context context, Intent intent) {
        h hVar;
        if (intent.getExtras() == null) {
            return 500;
        }
        String stringExtra = intent.getStringExtra("google.message_id");
        if (TextUtils.isEmpty(stringExtra)) {
            hVar = k.a((Object) null);
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("google.message_id", stringExtra);
            f a2 = f.a(context);
            hVar = a2.a(new o(a2.a(), 2, bundle));
        }
        int a3 = a(context, new CloudMessage(intent));
        try {
            k.a(hVar, TimeUnit.SECONDS.toMillis(1L), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 20);
            sb.append("Message ack failed: ");
            sb.append(valueOf);
            Log.w("CloudMessagingReceiver", sb.toString());
        }
        return a3;
    }

    protected void b(Bundle bundle) {
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(final Context context, final Intent intent) {
        if (intent != null) {
            final boolean isOrderedBroadcast = isOrderedBroadcast();
            final BroadcastReceiver.PendingResult goAsync = goAsync();
            this.f22539a.execute(new Runnable(this, intent, context, isOrderedBroadcast, goAsync) { // from class: com.google.android.gms.cloudmessaging.e

                /* renamed from: a  reason: collision with root package name */
                private final CloudMessagingReceiver f22545a;

                /* renamed from: b  reason: collision with root package name */
                private final Intent f22546b;

                /* renamed from: c  reason: collision with root package name */
                private final Context f22547c;

                /* renamed from: d  reason: collision with root package name */
                private final boolean f22548d;
                private final BroadcastReceiver.PendingResult e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f22545a = this;
                    this.f22546b = intent;
                    this.f22547c = context;
                    this.f22548d = isOrderedBroadcast;
                    this.e = goAsync;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    CloudMessagingReceiver cloudMessagingReceiver = this.f22545a;
                    Intent intent2 = this.f22546b;
                    Context context2 = this.f22547c;
                    boolean z = this.f22548d;
                    BroadcastReceiver.PendingResult pendingResult = this.e;
                    try {
                        Parcelable parcelableExtra = intent2.getParcelableExtra("wrapped_intent");
                        Intent intent3 = parcelableExtra instanceof Intent ? (Intent) parcelableExtra : null;
                        int a2 = intent3 != null ? cloudMessagingReceiver.a(context2, intent3) : cloudMessagingReceiver.b(context2, intent2);
                        if (z) {
                            pendingResult.setResultCode(a2);
                        }
                    } finally {
                        pendingResult.finish();
                    }
                }
            });
        }
    }
}

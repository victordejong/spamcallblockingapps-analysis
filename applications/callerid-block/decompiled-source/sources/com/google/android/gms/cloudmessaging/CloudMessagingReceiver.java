package com.google.android.gms.cloudmessaging;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.util.p081u.ThreadFactoryC1624a;
import com.google.android.gms.tasks.AbstractC2397g;
import com.google.android.gms.tasks.C2401j;
import e.c.a.a.a.b.a;
import e.c.a.a.a.b.f;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/CloudMessagingReceiver.class */
public abstract class CloudMessagingReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private final ExecutorService f5755a = a.a().a(new ThreadFactoryC1624a("firebase-iid-executor"), f.a);

    /* renamed from: e */
    private final int m8512e(Context context, Intent intent) {
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
            m8513d(context, extras);
            return -1;
        } else if ("com.google.firebase.messaging.NOTIFICATION_DISMISS".equals(intent.getAction())) {
            m8514c(context, extras);
            return -1;
        } else {
            Log.e("CloudMessagingReceiver", "Unknown notification action");
            return 500;
        }
    }

    /* renamed from: g */
    private final int m8510g(Context context, Intent intent) {
        AbstractC2397g<Void> gVar;
        if (intent.getExtras() == null) {
            return 500;
        }
        String stringExtra = intent.getStringExtra("google.message_id");
        if (TextUtils.isEmpty(stringExtra)) {
            gVar = C2401j.m3760e(null);
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("google.message_id", stringExtra);
            gVar = C1531f.m8493c(context).m8492d(2, bundle);
        }
        int b = m8515b(context, new CloudMessage(intent));
        try {
            C2401j.m3763b(gVar, TimeUnit.SECONDS.toMillis(1L), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 20);
            sb.append("Message ack failed: ");
            sb.append(valueOf);
            Log.w("CloudMessagingReceiver", sb.toString());
        }
        return b;
    }

    /* renamed from: a */
    protected Executor m8516a() {
        return this.f5755a;
    }

    /* renamed from: b */
    protected abstract int m8515b(Context context, CloudMessage cloudMessage);

    /* renamed from: c */
    protected void m8514c(Context context, Bundle bundle) {
    }

    /* renamed from: d */
    protected void m8513d(Context context, Bundle bundle) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final /* synthetic */ void m8511f(Intent intent, Context context, boolean z, BroadcastReceiver.PendingResult pendingResult) {
        try {
            Parcelable parcelableExtra = intent.getParcelableExtra("wrapped_intent");
            Intent intent2 = parcelableExtra instanceof Intent ? (Intent) parcelableExtra : null;
            int e = intent2 != null ? m8512e(context, intent2) : m8510g(context, intent);
            if (z) {
                pendingResult.setResultCode(e);
            }
        } finally {
            pendingResult.finish();
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(final Context context, final Intent intent) {
        if (intent != null) {
            final boolean isOrderedBroadcast = isOrderedBroadcast();
            final BroadcastReceiver.PendingResult goAsync = goAsync();
            m8516a().execute(new Runnable(this, intent, context, isOrderedBroadcast, goAsync) { // from class: com.google.android.gms.cloudmessaging.e

                /* renamed from: b */
                private final CloudMessagingReceiver f5766b;

                /* renamed from: c */
                private final Intent f5767c;

                /* renamed from: d */
                private final Context f5768d;

                /* renamed from: e */
                private final boolean f5769e;

                /* renamed from: f */
                private final BroadcastReceiver.PendingResult f5770f;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f5766b = this;
                    this.f5767c = intent;
                    this.f5768d = context;
                    this.f5769e = isOrderedBroadcast;
                    this.f5770f = goAsync;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f5766b.m8511f(this.f5767c, this.f5768d, this.f5769e, this.f5770f);
                }
            });
        }
    }
}

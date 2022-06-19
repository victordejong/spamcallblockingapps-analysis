package com.google.android.gms.cloudmessaging;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.util.p273v.ThreadFactoryC6244a;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7970j;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p078c.p084c.p085a.p086a.p088b.p090b.C1841a;
import p078c.p084c.p085a.p086a.p088b.p090b.C1846f;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/CloudMessagingReceiver.class */
public abstract class CloudMessagingReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private final ExecutorService f19090a = C1841a.m28799a().mo28798a(new ThreadFactoryC6244a("firebase-iid-executor"), C1846f.f6752a);

    /* renamed from: e */
    private final int m17547e(Context context, Intent intent) {
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
            mo1612d(context, extras);
            return -1;
        } else if ("com.google.firebase.messaging.NOTIFICATION_DISMISS".equals(intent.getAction())) {
            mo1613c(context, extras);
            return -1;
        } else {
            Log.e("CloudMessagingReceiver", "Unknown notification action");
            return 500;
        }
    }

    /* renamed from: g */
    private final int m17545g(Context context, Intent intent) {
        AbstractC7966g<Void> abstractC7966g;
        if (intent.getExtras() == null) {
            return 500;
        }
        String stringExtra = intent.getStringExtra("google.message_id");
        if (TextUtils.isEmpty(stringExtra)) {
            abstractC7966g = C7970j.m5798e(null);
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("google.message_id", stringExtra);
            abstractC7966g = C5960f.m17528c(context).m17527d(2, bundle);
        }
        int mo1614b = mo1614b(context, new CloudMessage(intent));
        try {
            C7970j.m5801b(abstractC7966g, TimeUnit.SECONDS.toMillis(1L), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(valueOf.length() + 20);
            sb.append("Message ack failed: ");
            sb.append(valueOf);
            Log.w("CloudMessagingReceiver", sb.toString());
        }
        return mo1614b;
    }

    /* renamed from: a */
    protected Executor m17548a() {
        return this.f19090a;
    }

    /* renamed from: b */
    protected abstract int mo1614b(Context context, CloudMessage cloudMessage);

    /* renamed from: c */
    protected void mo1613c(Context context, Bundle bundle) {
    }

    /* renamed from: d */
    protected void mo1612d(Context context, Bundle bundle) {
    }

    /* renamed from: f */
    public final /* synthetic */ void m17546f(Intent intent, Context context, boolean z, BroadcastReceiver.PendingResult pendingResult) {
        try {
            Parcelable parcelableExtra = intent.getParcelableExtra("wrapped_intent");
            Intent intent2 = parcelableExtra instanceof Intent ? (Intent) parcelableExtra : null;
            int m17547e = intent2 != null ? m17547e(context, intent2) : m17545g(context, intent);
            if (z) {
                pendingResult.setResultCode(m17547e);
            }
        } finally {
            pendingResult.finish();
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        m17548a().execute(new Runnable(this, intent, context, isOrderedBroadcast(), goAsync()) { // from class: com.google.android.gms.cloudmessaging.e

            /* renamed from: d */
            private final CloudMessagingReceiver f19102d;

            /* renamed from: e */
            private final Intent f19103e;

            /* renamed from: f */
            private final Context f19104f;

            /* renamed from: g */
            private final boolean f19105g;

            /* renamed from: h */
            private final BroadcastReceiver.PendingResult f19106h;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f19102d = this;
                this.f19103e = intent;
                this.f19104f = context;
                this.f19105g = isOrderedBroadcast;
                this.f19106h = goAsync;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f19102d.m17546f(this.f19103e, this.f19104f, this.f19105g, this.f19106h);
            }
        });
    }
}

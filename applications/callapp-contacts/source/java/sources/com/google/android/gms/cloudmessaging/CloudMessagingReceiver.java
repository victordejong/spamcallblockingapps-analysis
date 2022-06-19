package com.google.android.gms.cloudmessaging;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.util.p354a.ThreadFactoryC12095a;
import com.google.android.gms.internal.p356b.AbstractC13145b;
import com.google.android.gms.internal.p356b.C13144a;
import com.google.android.gms.internal.p356b.C13149f;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14188k;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/cloudmessaging/CloudMessagingReceiver.class */
public abstract class CloudMessagingReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private final ExecutorService f39094a;

    public CloudMessagingReceiver() {
        AbstractC13145b m13606a = C13144a.m13606a();
        ThreadFactoryC12095a threadFactoryC12095a = new ThreadFactoryC12095a("firebase-iid-executor");
        int i = C13149f.f50263a;
        this.f39094a = m13606a.mo13605a(threadFactoryC12095a);
    }

    /* renamed from: a */
    public final int m19508a(Context context, Intent intent) {
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
            mo8432a(extras);
            return -1;
        } else if ("com.google.firebase.messaging.NOTIFICATION_DISMISS".equals(intent.getAction())) {
            mo8430b(extras);
            return -1;
        } else {
            Log.e("CloudMessagingReceiver", "Unknown notification action");
            return 500;
        }
    }

    /* renamed from: a */
    protected abstract int mo8433a(Context context, CloudMessage cloudMessage);

    /* renamed from: a */
    protected void mo8432a(Bundle bundle) {
    }

    /* renamed from: b */
    public final int m19507b(Context context, Intent intent) {
        AbstractC14185h abstractC14185h;
        if (intent.getExtras() == null) {
            return 500;
        }
        String stringExtra = intent.getStringExtra("google.message_id");
        if (TextUtils.isEmpty(stringExtra)) {
            abstractC14185h = C14188k.m11464a((Object) null);
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("google.message_id", stringExtra);
            C11783f m19494a = C11783f.m19494a(context);
            abstractC14185h = m19494a.m19493a(new C11792o(m19494a.m19495a(), 2, bundle));
        }
        int mo8433a = mo8433a(context, new CloudMessage(intent));
        try {
            C14188k.m11467a(abstractC14185h, TimeUnit.SECONDS.toMillis(1L), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 20);
            sb.append("Message ack failed: ");
            sb.append(valueOf);
            Log.w("CloudMessagingReceiver", sb.toString());
        }
        return mo8433a;
    }

    /* renamed from: b */
    protected void mo8430b(Bundle bundle) {
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        this.f39094a.execute(new Runnable(this, intent, context, isOrderedBroadcast(), goAsync()) { // from class: com.google.android.gms.cloudmessaging.e

            /* renamed from: a */
            private final CloudMessagingReceiver f39106a;

            /* renamed from: b */
            private final Intent f39107b;

            /* renamed from: c */
            private final Context f39108c;

            /* renamed from: d */
            private final boolean f39109d;

            /* renamed from: e */
            private final BroadcastReceiver.PendingResult f39110e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39106a = this;
                this.f39107b = intent;
                this.f39108c = context;
                this.f39109d = isOrderedBroadcast;
                this.f39110e = goAsync;
            }

            @Override // java.lang.Runnable
            public final void run() {
                CloudMessagingReceiver cloudMessagingReceiver = this.f39106a;
                Intent intent2 = this.f39107b;
                Context context2 = this.f39108c;
                boolean z = this.f39109d;
                BroadcastReceiver.PendingResult pendingResult = this.f39110e;
                try {
                    Parcelable parcelableExtra = intent2.getParcelableExtra("wrapped_intent");
                    Intent intent3 = parcelableExtra instanceof Intent ? (Intent) parcelableExtra : null;
                    int m19508a = intent3 != null ? cloudMessagingReceiver.m19508a(context2, intent3) : cloudMessagingReceiver.m19507b(context2, intent2);
                    if (z) {
                        pendingResult.setResultCode(m19508a);
                    }
                } finally {
                    pendingResult.finish();
                }
            }
        });
    }
}

package com.klinker.android.send_message;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/StatusUpdatedReceiver.class */
public abstract class StatusUpdatedReceiver extends BroadcastReceiver {

    /* renamed from: com.klinker.android.send_message.StatusUpdatedReceiver$a */
    /* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/StatusUpdatedReceiver$a.class */
    class RunnableC2697a implements Runnable {

        /* renamed from: b */
        final /* synthetic */ Context f11266b;

        /* renamed from: c */
        final /* synthetic */ Intent f11267c;

        /* renamed from: d */
        final /* synthetic */ int f11268d;

        /* renamed from: e */
        final /* synthetic */ BroadcastReceiver.PendingResult f11269e;

        RunnableC2697a(Context context, Intent intent, int i, BroadcastReceiver.PendingResult pendingResult) {
            this.f11266b = context;
            this.f11267c = intent;
            this.f11268d = i;
            this.f11269e = pendingResult;
        }

        @Override // java.lang.Runnable
        public void run() {
            StatusUpdatedReceiver.this.mo2120b(this.f11266b, this.f11267c, this.f11268d);
            StatusUpdatedReceiver.this.m2121a(this.f11266b, this.f11267c, this.f11268d);
            this.f11269e.finish();
        }
    }

    /* renamed from: a */
    public abstract void m2121a(Context context, Intent intent, int i);

    /* renamed from: b */
    public abstract void mo2120b(Context context, Intent intent, int i);

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        new Thread(new RunnableC2697a(context, intent, getResultCode(), goAsync())).start();
    }
}

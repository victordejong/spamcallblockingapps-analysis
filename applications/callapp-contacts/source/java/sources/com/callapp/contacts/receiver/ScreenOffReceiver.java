package com.callapp.contacts.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.core.app.JobIntentService;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.service.jobs.ScreenOffServiceV1;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/receiver/ScreenOffReceiver.class */
public class ScreenOffReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private static HandlerThread f27374a;

    /* renamed from: b */
    private static Handler f27375b;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/receiver/ScreenOffReceiver$ScreenOffReceiverTask.class */
    static class ScreenOffReceiverTask extends Task {

        /* renamed from: a */
        private final BroadcastReceiver.PendingResult f27376a;

        /* renamed from: b */
        private final Intent f27377b;

        public ScreenOffReceiverTask(BroadcastReceiver.PendingResult pendingResult, Intent intent) {
            this.f27376a = pendingResult;
            this.f27377b = intent;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            try {
                CLog.m27610a(ScreenOffReceiver.class, "ScreenOffReceiver.onReceive called with ACTION = [%s],", this.f27377b.getAction());
                if ("android.intent.action.SCREEN_OFF".equals(this.f27377b.getAction())) {
                    JobIntentService.m44627a(CallAppApplication.get(), ScreenOffServiceV1.class, -311215, this.f27377b);
                }
            } finally {
                this.f27376a.finish();
            }
        }
    }

    /* renamed from: a */
    public static void m27890a(Context context) {
        synchronized (ScreenOffReceiver.class) {
            try {
                if (f27374a != null) {
                    HandlerThread handlerThread = new HandlerThread(ScreenOffReceiver.class.toString());
                    f27374a = handlerThread;
                    handlerThread.start();
                    AndroidUtils.m27631a(f27374a.getLooper());
                    f27375b = new Handler(f27374a.getLooper());
                }
                context.registerReceiver(Singletons.get().getScreenOffReceiver(), new IntentFilter("android.intent.action.SCREEN_OFF"), null, f27375b);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public static void m27889b(Context context) {
        synchronized (ScreenOffReceiver.class) {
            try {
                context.unregisterReceiver(Singletons.get().getScreenOffReceiver());
            } catch (IllegalArgumentException e) {
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null) {
            new ScreenOffReceiverTask(goAsync(), intent).execute();
        }
    }
}

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

    /* renamed from: a  reason: collision with root package name */
    private static HandlerThread f15633a;

    /* renamed from: b  reason: collision with root package name */
    private static Handler f15634b;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/receiver/ScreenOffReceiver$ScreenOffReceiverTask.class */
    static class ScreenOffReceiverTask extends Task {

        /* renamed from: a  reason: collision with root package name */
        private final BroadcastReceiver.PendingResult f15635a;

        /* renamed from: b  reason: collision with root package name */
        private final Intent f15636b;

        public ScreenOffReceiverTask(BroadcastReceiver.PendingResult pendingResult, Intent intent) {
            this.f15635a = pendingResult;
            this.f15636b = intent;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            try {
                CLog.a(ScreenOffReceiver.class, "ScreenOffReceiver.onReceive called with ACTION = [%s],", this.f15636b.getAction());
                if ("android.intent.action.SCREEN_OFF".equals(this.f15636b.getAction())) {
                    JobIntentService.a(CallAppApplication.get(), ScreenOffServiceV1.class, -311215, this.f15636b);
                }
            } finally {
                this.f15635a.finish();
            }
        }
    }

    public static void a(Context context) {
        synchronized (ScreenOffReceiver.class) {
            try {
                if (f15633a != null) {
                    HandlerThread handlerThread = new HandlerThread(ScreenOffReceiver.class.toString());
                    f15633a = handlerThread;
                    handlerThread.start();
                    AndroidUtils.a(f15633a.getLooper());
                    f15634b = new Handler(f15633a.getLooper());
                }
                context.registerReceiver(Singletons.get().getScreenOffReceiver(), new IntentFilter("android.intent.action.SCREEN_OFF"), null, f15634b);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void b(Context context) {
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

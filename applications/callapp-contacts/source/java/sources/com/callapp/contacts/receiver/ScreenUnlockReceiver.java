package com.callapp.contacts.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.core.app.JobIntentService;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.service.jobs.ScreenUnlockServiceV1;
import com.callapp.contacts.util.AndroidUtils;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/receiver/ScreenUnlockReceiver.class */
public class ScreenUnlockReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private static HandlerThread f27378a;

    /* renamed from: b */
    private static Handler f27379b;

    /* renamed from: c */
    private static AtomicBoolean f27380c = new AtomicBoolean(false);

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/receiver/ScreenUnlockReceiver$ScreenUnlockReceiverTask.class */
    static class ScreenUnlockReceiverTask extends Task {

        /* renamed from: a */
        private final BroadcastReceiver.PendingResult f27381a;

        /* renamed from: b */
        private final Intent f27382b;

        /* renamed from: c */
        private final ScreenUnlockReceiver f27383c;

        public ScreenUnlockReceiverTask(BroadcastReceiver.PendingResult pendingResult, Intent intent, ScreenUnlockReceiver screenUnlockReceiver) {
            this.f27381a = pendingResult;
            this.f27382b = intent;
            this.f27383c = screenUnlockReceiver;
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0046 -> B:9:0x002d). Please submit an issue!!! */
        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            try {
                Intent intent = this.f27382b;
                if (intent != null && "android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                    JobIntentService.m44627a(CallAppApplication.get(), ScreenUnlockServiceV1.class, -311216, this.f27382b);
                    try {
                        CallAppApplication.get().unregisterReceiver(this.f27383c);
                    } catch (Exception e) {
                    }
                    ScreenUnlockReceiver.f27380c.set(false);
                }
            } finally {
                this.f27381a.finish();
            }
        }
    }

    /* renamed from: a */
    public static void m27888a() {
        if (!f27380c.getAndSet(true)) {
            if (f27378a != null) {
                HandlerThread handlerThread = new HandlerThread(BluetoothReceiver.class.toString());
                f27378a = handlerThread;
                handlerThread.start();
                AndroidUtils.m27631a(f27378a.getLooper());
                f27379b = new Handler(f27378a.getLooper());
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            CallAppApplication.get().registerReceiver(new ScreenUnlockReceiver(), intentFilter, null, f27379b);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null) {
            new ScreenUnlockReceiverTask(goAsync(), intent, this).execute();
        }
    }
}

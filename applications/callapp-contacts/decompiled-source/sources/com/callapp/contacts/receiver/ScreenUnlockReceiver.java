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

    /* renamed from: a  reason: collision with root package name */
    private static HandlerThread f15637a;

    /* renamed from: b  reason: collision with root package name */
    private static Handler f15638b;

    /* renamed from: c  reason: collision with root package name */
    private static AtomicBoolean f15639c = new AtomicBoolean(false);

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/receiver/ScreenUnlockReceiver$ScreenUnlockReceiverTask.class */
    static class ScreenUnlockReceiverTask extends Task {

        /* renamed from: a  reason: collision with root package name */
        private final BroadcastReceiver.PendingResult f15640a;

        /* renamed from: b  reason: collision with root package name */
        private final Intent f15641b;

        /* renamed from: c  reason: collision with root package name */
        private final ScreenUnlockReceiver f15642c;

        public ScreenUnlockReceiverTask(BroadcastReceiver.PendingResult pendingResult, Intent intent, ScreenUnlockReceiver screenUnlockReceiver) {
            this.f15640a = pendingResult;
            this.f15641b = intent;
            this.f15642c = screenUnlockReceiver;
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0046 -> B:9:0x002d). Please submit an issue!!! */
        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            try {
                Intent intent = this.f15641b;
                if (intent != null && "android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                    JobIntentService.a(CallAppApplication.get(), ScreenUnlockServiceV1.class, -311216, this.f15641b);
                    try {
                        CallAppApplication.get().unregisterReceiver(this.f15642c);
                    } catch (Exception e) {
                    }
                    ScreenUnlockReceiver.f15639c.set(false);
                }
            } finally {
                this.f15640a.finish();
            }
        }
    }

    public static void a() {
        if (!f15639c.getAndSet(true)) {
            if (f15637a != null) {
                HandlerThread handlerThread = new HandlerThread(BluetoothReceiver.class.toString());
                f15637a = handlerThread;
                handlerThread.start();
                AndroidUtils.a(f15637a.getLooper());
                f15638b = new Handler(f15637a.getLooper());
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            CallAppApplication.get().registerReceiver(new ScreenUnlockReceiver(), intentFilter, null, f15638b);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null) {
            new ScreenUnlockReceiverTask(goAsync(), intent, this).execute();
        }
    }
}

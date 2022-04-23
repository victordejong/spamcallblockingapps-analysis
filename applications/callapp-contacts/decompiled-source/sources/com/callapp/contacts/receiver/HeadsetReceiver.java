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
import com.callapp.contacts.service.jobs.HeadsetServiceV1;
import com.callapp.contacts.util.AndroidUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/receiver/HeadsetReceiver.class */
public class HeadsetReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static HandlerThread f15626a;

    /* renamed from: b  reason: collision with root package name */
    private static Handler f15627b;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/receiver/HeadsetReceiver$HeadsetTask.class */
    static class HeadsetTask extends Task {

        /* renamed from: a  reason: collision with root package name */
        private final BroadcastReceiver.PendingResult f15628a;

        /* renamed from: b  reason: collision with root package name */
        private final Intent f15629b;

        public HeadsetTask(BroadcastReceiver.PendingResult pendingResult, Intent intent) {
            this.f15628a = pendingResult;
            this.f15629b = intent;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            try {
                JobIntentService.a(CallAppApplication.get(), HeadsetServiceV1.class, -311214, this.f15629b);
            } finally {
                this.f15628a.finish();
            }
        }
    }

    public static void a() {
        HandlerThread handlerThread = new HandlerThread(HeadsetReceiver.class.toString());
        f15626a = handlerThread;
        handlerThread.start();
        AndroidUtils.a(f15626a.getLooper());
        f15627b = new Handler(f15626a.getLooper());
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.HEADSET_PLUG");
        CallAppApplication.get().registerReceiver(new HeadsetReceiver(), intentFilter, null, f15627b);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        new HeadsetTask(goAsync(), intent).execute();
    }
}

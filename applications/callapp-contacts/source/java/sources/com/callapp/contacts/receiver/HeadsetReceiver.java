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

    /* renamed from: a */
    private static HandlerThread f27367a;

    /* renamed from: b */
    private static Handler f27368b;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/receiver/HeadsetReceiver$HeadsetTask.class */
    static class HeadsetTask extends Task {

        /* renamed from: a */
        private final BroadcastReceiver.PendingResult f27369a;

        /* renamed from: b */
        private final Intent f27370b;

        public HeadsetTask(BroadcastReceiver.PendingResult pendingResult, Intent intent) {
            this.f27369a = pendingResult;
            this.f27370b = intent;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            try {
                JobIntentService.m44627a(CallAppApplication.get(), HeadsetServiceV1.class, -311214, this.f27370b);
            } finally {
                this.f27369a.finish();
            }
        }
    }

    /* renamed from: a */
    public static void m27896a() {
        HandlerThread handlerThread = new HandlerThread(HeadsetReceiver.class.toString());
        f27367a = handlerThread;
        handlerThread.start();
        AndroidUtils.m27631a(f27367a.getLooper());
        f27368b = new Handler(f27367a.getLooper());
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.HEADSET_PLUG");
        CallAppApplication.get().registerReceiver(new HeadsetReceiver(), intentFilter, null, f27368b);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        new HeadsetTask(goAsync(), intent).execute();
    }
}

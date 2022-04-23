package com.callapp.contacts.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.core.app.JobIntentService;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.service.jobs.StartupServiceV1;
import com.callapp.contacts.util.AndroidUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/receiver/StartupReceiver.class */
public class StartupReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static HandlerThread f15650a;

    /* renamed from: b  reason: collision with root package name */
    private static Handler f15651b;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/receiver/StartupReceiver$StartupTask.class */
    static class StartupTask extends Task {

        /* renamed from: a  reason: collision with root package name */
        private final BroadcastReceiver.PendingResult f15652a;

        /* renamed from: b  reason: collision with root package name */
        private final Intent f15653b;

        public StartupTask(BroadcastReceiver.PendingResult pendingResult, Intent intent) {
            this.f15652a = pendingResult;
            this.f15653b = intent;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            try {
                JobIntentService.a(CallAppApplication.get(), StartupServiceV1.class, -311219, this.f15653b);
            } finally {
                this.f15652a.finish();
            }
        }
    }

    public static void a() {
        Prefs.gA.set(Boolean.FALSE);
        Prefs.gz.set(Boolean.FALSE);
        Prefs.gB.set(Boolean.FALSE);
        Prefs.gy.set(Boolean.FALSE);
        HandlerThread handlerThread = new HandlerThread(StartupReceiver.class.toString());
        f15650a = handlerThread;
        handlerThread.start();
        AndroidUtils.a(f15650a.getLooper());
        f15651b = new Handler(f15650a.getLooper());
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.QUICKBOOT_POWERON");
        intentFilter.addAction("android.intent.action.ACTION_POWER_CONNECTED");
        intentFilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        intentFilter.addCategory("android.intent.category.HOME");
        CallAppApplication.get().registerReceiver(new StartupReceiver(), intentFilter, null, f15651b);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        new StartupTask(goAsync(), intent).execute();
    }
}
